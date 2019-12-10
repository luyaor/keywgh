---
layout: post
title:  “Convergence complexity analysis for Markov Chain"
date:   2019-09-24 14:30:55 -0500
categories: seminar

---

Speaker: Qian Qin (University of Minnesota - TC)



### Probit regression

$y_i \sim Bernoulli(\Phi(x_i^T\beta)) \\ \beta \sim N_p(0, Q^{-1})$

, where $\Phi$ is cdf of normal dist, so we can calculate posterior density.

We can design a MCMC to converge to this posterior dist.  (logit is much harder)

Question, what’s the speed of convergence? 

Dynamic of MC can be characterized by transition kernal $P(X_
{m+1} \in A|X_m=x) = \int_A K(x, dx')$

We want $d_{TC}(K^m(x_0, \cdot), \pi) \leq C(x_0)\rho^m$, we call $\rho$ the rate of convergence. $\rho$ also controls the correlation between two consequencial samples.

So what’s the behavior of $\rho$ when $n, p \to \infty$ ?

Maybe start from finding an upper bound. **Challenge: obtain a sharp bound.**

$d_{\psi}(\mu, \nu) = inf_{X\sim\mu,X’\sim\nu}\mathbb{E}\psi(X, X’)$  Coupling.

Then $d_{\psi}(K^m(x_0, \cdot), K^m(x'_0, \codt)) \leq \mathbb{E}\psi(X_n, X’_n)$, if we have one step constrain $\mathbb{E}(\psi(X_{m+1}, X’_M{m+1} \vert X_m=x, X’_m=x’))\leq \rho\psi(x, x')$ then by induction we have latter one less than $\psi(x_0, x’_0)\rho^m$

We want this two Markov Chain to be dependent to minimize $\rho$. $\psi$ have to be well designed as well. 

 