---
layout: post
title:  "Kaggle Dataset - Brazilian Elections 2018"
date:   2018-12-16 15:54:21 -0200
---
During the 2018 brazilian elections, I decided to take a look at the government programs
of the most competitive parties that were running for election. It turned out that
I published an [article on Medium](https://medium.com/@luizamaral306/deus-ou-quinta-s%C3%A9rie-fa0e4e81694d),
a [dataset at Kaggle](https://www.kaggle.com/armlessjohn404/planos-de-governo-eleies-presidenciais-2018/home)
and a [notebook](https://github.com/luxedo/planos-de-governo/blob/master/Planos%20de%20Governo.ipynb)
with some mess and a lot of graphs.

I analyzed 13 `pdf` documents of 11 candidates.
<!--more-->
The text was extracted using [textract](https://textract.readthedocs.io/en/stable/python_package.html)
and then processed. A significant result of thins analysis is that the far right
candidate **Jair Bolsonaro** were obviously very different from the others. By looking
at the tf-idf features, there is little doubt that his choice of words is completely
different from the other candidates:

<!-- ![kaggle dataset 1](/assets/img/kaggle-dataset-1.png) -->
<!-- ![kaggle dataset 2](/assets/img/kaggle-dataset-2.png) -->
![kaggle dataset 3](/assets/img/kaggle-dataset-3.png)
*Fig 1: tf-idf features per candidate*

To prove that, I projected those features in 2D using PCA and we see that he is
the only candidate that is far away from everyone.

![kaggle dataset 4](/assets/img/kaggle-dataset-4.png)
*Fig 2: PCA projection in 2D of the tf-idf features*

Strikingly enough this odd candidate won the elections with a good margin and will
take the office of presidency next year. Him, his colleges and family are already
full to the neck of corruption accusations and his term didn't even started. Ironically
his speech during the campaigns were to fight corruption above all.

We'll wait, protest and see.
