## Hypothesis testing for proportion.

Question: What is a hypothesis testing? How to perform it?

Want to test whether a hypothesis for **population parameter** is correct.

### Background

Consider only proportion case in this note. 

i.e. For population, $X \sim Ber(p), \mu=p, sd=\sigma=\sqrt{p(1-p)}$. p is proportion.

Then draw a sample of sample size $n$. Point estimation for mean is the sample mean, $\bar{X}$, with sd as $\sigma_{\bar{X}}=\sigma/\sqrt{n}$. 

### Five steps to solve

1. Assumptions 

   Is sample size large enough? Have at least 15 successes and 15 failures. 

2. Null/Alternative hypothesis

   $H_0: p = \theta_0$ v.s. 

   $H_a: p \neq \theta_0$ (Two-sided) or $H_a: p \leq \theta_0$ (One-sided) or $H_a: p \geq \theta_0$ (One-sided)

3. Test statistic

   $T = \frac{\bar{X}-\theta_0}{\sigma_{\bar{X}}}$ 

   (Reasoning behind: Assume $H_0$ is true, then T will follow a standard normal distribution. So if hull hypothesis is true, T is less likely a large number. Therefore, when T is large enough, we are going to reject $H_0$, otherwise retain it. And we use p-value to evaluate whether T is large enough)

4. p-value

   - Two-sided 

     $p-value = 2*P(T>|t|)=2(1-pnorm(|t|))$, where $t$ is the test statistic calculated from our sample. 

   - One-sided

     $p-value = P(T>|t|)=1-pnorm(|t|)$ 

5. Conclusion & interpretation

   If $p<\alpha$, we reject $H_0$, otherwise retain it. $\alpha=1-\text{confidence level}$

