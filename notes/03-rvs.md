# Common Families of Distributions


## Discrete distributions

 - Discrete uniform on $\{1,\dots,N\}$. Note the mean is the average of the endpoints $$EX=\frac{1+N}{2}$$ and the variance is $$\frac{(N+1)(N-1)}{12}.$$ These can both be verified with the identities $$\sum_{i=1}^n i=\frac{n(n+1)}{2}\qand\sum_{i=1}^ni^2=\frac{k(k+1)(k+2)}{6}.$$

 - Hypergeometric.

 - Bernoulli: $EX=p$, $\var X=p(1-p)$.

 - Binomial $$P(X=k)=\binom{n}{k}p^k(1-p)^{n-k}.$$To see that this is a pmf, recall the binomial theorem $$(x+y)^n=\sum_{i=0}^n\binom{n}{i}x^iy^{n-i}.$$Then $EX=np$, $\var X=np(1-p)$.

 - Poisson $$P(X=x)=\frac{\lambda^x e^{-\lambda}}{x!}.$$ To see that this is a pmf, recall the Taylor expansion $$e^x=\sum_{i=0}^\infty \frac{x^i}{i!}$$ and consider $e^\lambda$. It has $EX=\var X=\lambda.$ To remember how to simplify complicated binomial expressions, recall that a Poisson process with rate $\lambda=np$ has expectation $np$.

 - Negative binomial.

 - Geometric $$P(X=x)=p(1-p)^{x-1},$$and you can see from the pmf we have success on the $x$th trial. To see that it's a pmf, recall $$\sum_{x=1}^\infty q^{x-1}=\frac{1}{1-q}.$$ Then we have mean $EX=\frac{1}{p}$ and variance $\frac{1-p}{p^2}$.


## Continuous distributions

 - Uniform$[a,b]$ has pmf $\frac{1}{b-a}$ on its support.

 - Gamma has pmf related to the gamma function $$\Gamma(\alpha)=\int_0^\infty t^{\alpha-1}e^{-t}\,dt,$$which satisfies $\Gamma(\alpha+1)=\alpha\Gamma(\alpha)$ and $\Gamma(n)=(n-1)!.$ Then clearly $$f(t)=\frac{t^{\alpha-1}e^{-t}}{\Gamma(\alpha)}$$ is a pmf, but the full gamma$(\alpha,\beta)$ family has another parameter obtained by the change of variables $x=\beta t$ to add "spread,"" so that $$f(t\mid\alpha,\beta)=\frac{1}{\Gamma(\alpha)\beta^\alpha}x^{\alpha-1}e^{-x/\beta}.$$ The mean is $EX=\alpha\beta$ and the variance $\var X=\alpha\beta^2$.

   There is a relation to Poisson. If $X$ is gamma($\alpha,\beta$), then $P(X\leq x)=P(Y\geq\alpha)$ for $Y$ Poisson$(x/\beta)$.

 - The chi squared pmf with $p$ degrees of freedom is $$f(x)=\frac{1}{\Gamma(p/2)2^{p/2}}x^{(p/2)-1}e^{-x/2},$$ which is the special case $\alpha=p/2$ and $\beta=2$ of the gamma.

 - Exponential $f(x\mid\beta)=\frac{1}{\beta}e^{-x/\beta}$$ is another special case of the gamma obtained with $\alpha=1$. Exponential is the continuous geometric.

 - Weibull.


 - Normal distribution To perform calculations about the Gaussian with mean $\mu$ and variance $\sigma^2$, find the standard normal as $$Z=\frac{X-\mu}{\sigma}$$ and use the linearity properties of your statistic.

  To establish that the standard normal density $$f(x)=\frac{1}{\sqrt{2\pi}}e^{-x^2/2}$$ is a pdf, you have to square the integral and go to polar coordinates.

 - Beta distribution.

 - Cauchy $$f(x\mid\theta)=\frac{1}{\pi}\frac{1}{1+(x-\theta)^2}.$$Notice that the cdf is $\frac{1}{2}+\frac{\atan(x-\theta)}{\pi}$. Interestingly it is the pdf of the ratio of two standard normals!

 - Lognormal $\log X\thicksim N(\mu,\sigma^2)$ has pdf $$f(x)=\frac{1}{\sqrt{2\pi}\sigma}\frac{1}{x}e^{-(\log x - \mu)^2/(2\sigma^2)}.$$ It has expectation $EX=Ee^{\log X}=Ee^Y=e^{\mu+\sigma^2/2}$, obtained by using Gaussian mgf.

 - Double exponential.


## Exponential families

Def (Exponential family).
 ~ A family of distributions is called exponential if it can be written as $$f(x\mid\theta)=h(x)c(\theta)exp\pqty{\textstyle\sum_{i=1}^k w_i(\theta)t_i(x)}.$$

Theorem (Exponential families let you calculate by differentiation).
 ~ If $X$ is drawn from an exponential family, then $$\begin{aligned}
 E\bqty{\textstyle\sum_{i=1}^k\pdv{\theta_j}w_i^(\theta)t_i(X)}
 &=
 -\pdv{\theta_j}\log c(\theta),\\
 \var\bqty{\textstyle\sum_{i=1}^k\pdv{\theta_j}w_i^(\theta)t_i(X)}
 &=
 -\pdv[2]{\theta_j}\log c(\theta)-E\bqty{\textstyle\sum_{i=1}^k\pdv[2]{\theta_j}w_i^(\theta)t_i(X)}
 \end{aligned}$$

Curved exponential families.

## Location and scale families

## Probability inequalities

Theorem (Chebyshev's inequality).
 ~ For $g$ nonnegative and $r>0$, $$P(g(X)\geq r)\leq \frac{Eg(X)}{r}.$$

Theorem (A normal inequality).
 ~ Let $Z$ standard normal. Then $$P(\abs{Z}\geq t)\leq\sqrt{\frac{2}{\pi}}\frac{e^{-t^2/2}}{t}.$$

## Identities

There are more than this, but.

Lemma (Stein's lemma).
 ~ Let $X\thicksim N(\mu,\sigma^2)$ and let $g$ have an integrable derivative. Then $$E[g(X)(X-\mu)]=\sigma^2Eg'(X).$$
