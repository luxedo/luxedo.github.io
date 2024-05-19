require 'base64'
require 'json'
require 'octokit'

front_matter = <<~HEREDOC
  ---
  layout: page
  title: %<title>s
  description: %<description>s
  tags: %<tags>s
  dropdown: %<dropdown>s
  priority: %<priority>s
  ---
  <!-- Automatically generated. Run search_repos.rb to rebuild -->
  %<pre_content>s

  %<content>s

  %<post_content>s
HEREDOC

file = File.read('search_repos.json')
repo_list = JSON.parse(file)

client = Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'])
client.auto_paginate = true
client.repositories('luxedo').each do |repo|
  puts format('Processing: %<name>s', name: repo.name)
  # "https://raw.githubusercontent.com/#{repo.full_name}/master/"
  if repo_list.collect { |rp| rp['name'] }.include? repo.name
    conf = repo_list.select { |rp| rp['name'] == repo.name }[0]
    readme64 = client.readme(repo.full_name).content
    readme = Base64.decode64(readme64).strip!
    repo_path = "https://raw.githubusercontent.com/#{repo.full_name}/master/"
    readme = readme.gsub(%r{(!\[[^\]]+\]\()((?!https?://)[^)]+)}, "\\1#{repo_path}\\2")
    if readme.start_with?('')
      # Removes the title
      readme = readme.lines[1..-1].join
    end
    topics = client.topics(repo.full_name)[:names]
    file = format(front_matter, title: repo.name, description: repo.description, tags: topics,
                                dropdown: conf['dropdown'], priority: conf['priority'], pre_content: conf['pre_content'], content: readme, post_content: conf['post_content'])
    File.open("#{__dir__}/_dropdown/#{repo.name}.md", 'wb') do |f|
      f.write(file)
      puts 'Wrote file'
    end
  else
    puts 'Nothing to do'
  end
end
