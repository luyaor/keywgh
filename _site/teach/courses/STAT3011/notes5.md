## Explanation for Z-score

Usage of pnorm and qnorm

$pnorm(x)$ gives the value of $P(X\leq x) , X \sim N(0,1)$

$pnorm(x, mean=\mu, sd=\sigma)$, gives the value $P(X\leq x) , X \sim N(\mu,\sigma^2)$

`p` for probability, `q` for quantile


$qnorm(x)$ gives the value of z which makes $P(X\leq z)=x,  X \sim N(0,1)$

$qnorm(x, mean=\mu, sd=\sigma)$, gives the value of z which makes $P(X\leq z)=x , X \sim N(\mu,\sigma^2)$




### pnorm


$$
\text{If}\  X \sim N(\mu,\sigma^2), \text{with mean value } \mu, \text{SD } \sigma\\
\text{}
$$

​										Question: How to calc $P(X\geq x)$?

When we have standard normal random variable $Y \sim N(0,1)$, 

We can use pnorm() to calc probability: pnorm(y) = $P(Y\leq y)$

In order to answer previous question, we introduce Z-score.
$$
\text{Z-score }  z=\frac{x-\mu}{\sigma} \\
\therefore x = \mu+z\times\sigma
$$

And we have this equation:
$$
P(X\geq x) = P(Y \geq z)= 1-pnorm(z),
$$

### qnorm

Assume that $P(X<x)=q$, we want to know the value of x.

Again, consider standard normal r.v. first, if we have $P (Y<z)=q$, what is $z$? 

Answer: z=qnorm(q).

So we recover the value of x by $x = \mu+z*\sigma$.

