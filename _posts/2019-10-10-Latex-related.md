---
layout: post
title:  “Latex related topics"
date:   2019-10-10 22:25:55 -0500
categories: tools


---



## For symbols

- Using Roman

  ```latex
  \makeatletter
  \newcommand*{\rom}[1]{\expandafter\@slowromancap\romannumeral #1@}
  \makeatother
  ```

  `\romannumeral` is $\LaTeX$  kernel primitive

  Alternatively, using packages like `\usepackage{romannum}` 

