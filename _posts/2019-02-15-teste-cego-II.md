---
layout: post
title:  "Teste Cego de Cerveja II"
date:   2019-02-15 23:17:55 -0200
---
> ### “Suco de cevadiss deixa as pessoas mais interessantiss.”
>
> Mussum
<!--more-->

Bem, acabamos fazendo um teste cego improvisado aqui em casa. A montagem é a seguinte:
1. Temos duas marcas de cerveja: Itaipava e Brahma;
1. O Pedro Grijó vai servir aleatóriamente as cervejas em 3 copos diferentes: Roxo, 4 Climb, Laranja;
1. Cada participante experimenta cada copo e anota qual cerveja ele acha que é.

## Dama apreciadora de Chá
Com essa montagem, podemos utilizar a mesma abordagem de Ronald A. Fisher no
famoso experimento da [Dama Apreciadora de Chá](https://pt.wikipedia.org/wiki/Dama_apreciadora_de_ch%C3%A1).

Para cada participante, temos as seguintes possibilidades de acerto (X - acerto, O - erro) :

|Total de acertos|Permutações de seleção|Número de Permutações|
|----|----|----|
|0|OOO|1|
|1|OOX, OXO, XOO |3|
|2|OXX, XOX, XXO |3|
|3|XXX|1|
||Total|8|

Com apenas 3 amostras por pessoa, não podemos concluir definitivamente se ela consegue distinguir as cervejas, pois randômicamente é possível acertar todos os copos com uma probabilidade de 12.5%. Considerando que temos **10** sujeitos realizando o teste, a probabilidade de alguém acertar todas as cervejas é de 79.9%. Vamos ver os dados:

|Acertos|Ratos de Laboratório|
|----|----|
|0|Iza|
|1|Teu Cu, Lelê, Gustavo, Luiz, Bruna|
|2|Sofia, Elisa, Caio, Felipe|
|3|(...grilos...)|

Ok... Fomos piores que [macacos escrevendo Shakespeare](https://pt.wikipedia.org/wiki/Teorema_do_macaco_infinito), logo, as duas cervejas são indistinguíveis.

#### Um par de comentários

Primeiro, um obrigado aos participantes.  

> # _Obrigado participantes._

Obrigado ao Pedro Grijó por ter paciência com a gente e conduzir o experimento.
Obrigado pelo pessoal que montou o experimento que eu não lembro no momento,
então vou citar o Bruna, Felipe e Iza.

Pra quem não viu, foi feito [outro teste](https://luxedo.github.io/dropdown/teste-cego.html) no passado com resultados similares.

Raw Data
--------

| Rato de laboratório/Copo | Roxo | 4 Climb | Laranja |
|-----|----|----|----|
| Teu Cu | Brahma | Brahma | Itaipava |
| Lelê | Brahma | Itaipava | Itaipava |
| Sofia | Brahma | Itaipava | Brahma |
| Gustavo | Brahma | Itaipava | Itaipava |
| Elisa | Brahma | Itaipava | Brahma |
| Caio | Brahma | Brahma | Itaipava |
| Felipe | Brahma | Brahma | Itaipava |
| Luis | Brahma | Itaipava | Itaipava |
| Iza | Itaipava | Itaipava | Itaipava |
| Bruna | Brahma | Itaipava | Itaipava |
