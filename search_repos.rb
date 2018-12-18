#!/usr/bin/env ruby
require "base64"
require "json"
require 'octokit'

front_matter = <<~HEREDOC
---
layout: page
title: %{title}
description: %{description}
tags: %{tags}
dropdown: %{dropdown}
priority: %{priority}
---
<!-- Automatically generated. Run search_repos.rb to rebuild -->
%{pre_content}

%{content}

%{post_content}
HEREDOC

file = File.read("search_repos.json")
repo_list = JSON.parse(file)

client = Octokit::Client.new(:access_token => ENV["GITHUB_TOKEN"])
client.repositories('luxedo').each do |repo|
  puts "Processing: %{name}" % {name: repo.name}

  if repo_list.collect { |rp| rp["name"] }.include? repo.name
    conf = repo_list.select {|rp| rp["name"] == repo.name }[0]
    readme64 = client.readme(repo.full_name).content
    readme = Base64.decode64(readme64).strip!
    if (readme.start_with?("#{ }"))
      # Removes the title
      readme = readme.lines[1..-1].join
    end
    topics = client.topics(repo.full_name)[:names]
    file = front_matter % {
      title: repo.name,
      description: repo.description,
      tags: topics,
      dropdown: conf["dropdown"],
      priority: conf["priority"],
      pre_content: conf["pre_content"],
      content: readme,
      post_content: conf["post_content"],
    }
    File.open("#{__dir__}/_dropdown/#{repo.name}.md", "wb") do |f|
      f.write(file)
      puts "Wrote file"
    end
  else
    puts "Nothing to do"
  end
end
