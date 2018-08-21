---
title: "Midterm Answer"
author: [Yeji Park]
date: 2018-08-07
subject: "Markdown"
keywords: [Markdown, Example]
subtitle: "Variance, Covariance, Derivative Softmax function"
titlepage: true
...


\newpage\null\thispagestyle{empty}\newpage

\section{Prove that $V[x] = E[x^2] - E[x]^2$ where PDF of x is continuous}

\begin{tcolorbox}[colback=white!5!white,colframe=white!75!black, title=Solution]
  \begin{align*}
    V[x] =& \; E[(x - \mu)^2] \\
         =& \int (x - \mu)^2 f(x) dx \\
         =& \int x^2 f(x)dx - 2\mu \underbrace{\int x f(x) dx}_{\mu} + \mu^2 \underbrace{\int f(x) dx}_{1} \\
         =& \; E[x^2] - \mu^2 \\
         =& \; E[x^2] - E^2[x]
  \end{align*}
\end{tcolorbox}

\vspace{2cm}

\section{Prove that $Cov(x,y) = E[xy] - E[x]E[y]$ where PDF of x,y are continuous}

\begin{tcolorbox}[colback=white!5!white,colframe=white!75!black, title=Solution]
  \begin{align*}
    Cov(x,y) =& \; E[(x - \mu_x)(y - \mu_y)] \\
             =& \int (x - \mu_x)(y - \mu_y) h(x,y)dxdy \\
             =& \int xy h(x,y)dxdy - \mu_x \int y h(x,y)dxdy \\
             & \qquad - \mu_y \int x h(x,y) dxdy + \mu_x\mu_y \underbrace{\int h(x,y) dxdy}_{1} \\
             =& \; E[xy] - \mu_x\underbrace{\int y g(y) dy}_{\mu_y} - \mu_y \underbrace{\int x f(x)dx}_{\mu_x} + \mu_x\mu_y \\
             =& \; E[xy] - 2\mu_x\mu_y + \mu_x\mu_y \\
             =& \; E[xy] - E[x]E[y]
  \end{align*}
\end{tcolorbox}

\newpage

\section{Find derivatives of $softmax(x_k) = \frac{e^{x_k}}{\sum\limits_{k}e^{x_k}}$}

\begin{tcolorbox}[colback=white!5!white,colframe=white!75!black, title=Solution]
Let the function put $\sigma(x_k)$,   
  \begin{align*}
    \frac{d}{dx_{i}}\sigma(x_k) =& \; \frac{(\delta_{ki}e^{x_k}) \sum\limits_k e^{x_k} - e^{x_k}(e^{x_i})}{\biggl(\sum\limits_{k}e^{x_k}\biggr)^2} \\
      =& \; \frac{e^{x_k}}{\sum\limits_k e^{x_k}}\biggl(\delta_{ki}\cancelto{1}{\frac{\sum\limits_k e^{x_k}}{\sum\limits_k e^{x_k}}} - \frac{e^{k_i}}{\sum\limits_k e^{x_k}} \biggr) \\
      =& \; \sigma(x_k)(\delta_{ki} - \sigma(x_i))
  \end{align*}
\end{tcolorbox}
