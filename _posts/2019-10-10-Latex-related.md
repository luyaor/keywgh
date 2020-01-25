---
layout: post
title:  “Latex related topics"
date:   2019-10-10 22:25:55 -0500
categories: tools


---



## For symbols

- [Quick table](/assets/resource/Symbols.pdf)

- Using Roman

  ```latex
  \makeatletter
  \newcommand*{\rom}[1]{\expandafter\@slowromancap\romannumeral #1@}
  \makeatother
  ```

  `\romannumeral` is $\LaTeX$  kernel primitive

  Alternatively, using packages like `\usepackage{romannum}` 

- Put word/symbol above a symnol

  ```latex
  \overset{}
  ```

  For arrows `\xRightarrow[below]{above}`
  
- Accents, Special letters

  [Accents](https://i.stack.imgur.com/fQHoV.png)

  Link to TeX overflow: [Here](https://tex.stackexchange.com/questions/8857/how-to-type-special-accented-letters-in-latex).

  OS based method, directly type accents: [Here](https://spanish.meta.stackexchange.com/questions/10/easy-way-to-type-accented-characters). For Macintosh, option+e+LETTER.