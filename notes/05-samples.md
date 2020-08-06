# Properties of a Random Sample


## Basic concepts of random samples

A statistic is defined as a function of the data. For example, the sample mean and variance $$\bar{X}=\frac1n\sum_{i=1}^nX_i\qand S^2=\frac{1}{n-1}\sum_{i=1}^n(X_i-\bar{X}).$$

Theorem (Properties of sample mean and variance).
 ~ For any $x_i$,
 ~ - The sample mean minimizes sum of squared errors.
 ~ - $(n-1)s^2=\sum_{i=1}^n(x_i-\bar{x})^2=\sum_{i=1^n}x_i^2 - n\bar{x}^2.$
 ~ For iid random variables $X,X_1,\dots,X_n$ and any function $g$ such that $Eg(X)$ and $\var(g(X))$ exist,
 ~ - $\displaystyle E\bqty{\sum_{i=1}^n g(X_i)}=nEg(X),$
 ~ - $\displaystyle \var\pqty{\sum_{i=1}^n g(X_i)}=n\var(g(X)),$
 ~ where the independence was only used for the second bullet. Finally, if $EX=\mu$ and $\var X=\sigma^2<\infty$, then
 ~ - $E\bar{X}=\mu$,
 ~ - $\var\bar{X}=\frac{\sigma^2}{n}$, and
 ~ - $ES^2=\sigma^2$.

Theorem (pdf and mgf of the sample mean)
 ~ If $X_i$ are iid,
 ~ - $f_{\bar{X}}(x)=nf(nx)$, and
 ~ - $M_{\bar{X}}(t)=(M_X(t/n))^n$.

Theorem (Sum-convolution).
 ~ If $X\ind Y$, then $$f_{X+Y}(z)=(f_X*f_Y)(t)=\int_{-\infty}^\infty f_X(t)f_Y(z-t)\,dt.$$

There is a theorem given regarding the distribution of the summary statistics of exponential families, which is again an exponential family.


## Sampling from the normal distribution

Theorem (Gaussian sample mean and variance).
 ~ Let $X_i\thicksim_\iid N(\mu,\sigma^2)$. Then
 ~ - $\bar{X}\ind S^2$,
 ~ - $\bar{X}\thicksim N(\mu,\sigma^2/n)$, and
 ~ - $(n-1)S^2/\sigma^2\thicksim\chi^2_{n-1}$.

Theorem (Facts about the $\chi^2$).
 ~ If $Z\thicksim N(0,1)$, then $Z^2\thicksim\chi^2_1$. If $X_i\thicksim\chi^2_{p_i}$, then $X_1+\dots+X_n\thicksim\chi^2_{p_1+\dots+p_n}$.

There is a theorem about Gaussians to the effect that decorrelation implies independence.

Definition (Student's $t$).
 ~ Note that if $X_i\thicksim_\iid N(\mu,\sigma^2)$, then $$\frac{\bar{X}-\mu}{S/\sqrt{n}}$$ are the quotient of independent $N(0,\sigma^2)$ and square root of $\chi^2_{n-1}$ random variables.
 ~ If $T\thicksim t_p$, the Student's $t$ distribution with $p$ degrees of freedom, then $$F_T(t)=\frac{\Gamma((p+1)/2)}{\Gamma(p/2)}\frac{1}{\sqrt{p\pi}}\frac{1}{(1+t^2/p)^{(p+1)/2}}.$$

Properties:

 - Note that this is Cauchy for $p=1$.
 - $ET=0$ (if $p>1$).
 - $\var T=\frac{p}{p-2}$ (if $p>2$).
 - It has moments up to order $p-1$.

Definition (Snedecor's $F$).
 ~ Let $X_1,\dots,X_{p+1}$, $Y_1,\dots,Y_{q+1}$ be two independent random samples from $N(\mu_X,\sigma_X^2)$ and $N(\mu_Y,\sigma_Y^2)$. Then the quotient $$F=\frac{S_X^2/S_Y^2}{\sigma_X^2/\sigma_Y^2}=\frac{S^2_X/\sigma^2_X}{S^2_Y/\sigma^2_Y}$$ is positive and has Snedecor's $F$ distribution with $p$ and $q$ degrees of freedom, with pdf $$f_F(x)=\frac{\Gamma((p+q)/2)}{\Gamma(p/2)\Gamma(q/2)}\sqrt{\tfrac{p}{q}}\frac{x^{(p/2)-1}}{(1+(p/q)x)^{(p+q)/2}}.$$

This can also appear as ratios of other variances.

Proposition (Properties of $t$ and $F$).
 ~ Let $F\thicksim F_{p,q}$ and $T\thicksim t_p$. Then,
 ~ - $1/F\thicksim F_{q,p}$,
 ~ - $T^2\thicksim F_{1,q}$,
 ~ - $(p/q)F/(1+(p/q)X)\thicksim\operatorname{beta}(p/2,q/2)$.


## Order statistics

Def (Order statistics).
 ~ The order statistics of a random sample $X_1,\dots,X_n$ are the sorted values of the sample, denoted $X_{(1)},\dots,X_{(n)}$.

The rest of the section is more or less devoted to deriving the pdf of the order statistics.

Theorem (pdf of order statistics).
 ~ Let $X_i$ have cdf and pdf $F_X,f_X$. Then $$f_{X_{(j)}}=\frac{n!}{(j-1)!(n-j)!}f_X(x)(F_X(x))^{j-1}(1-F_X(x)^{n-j}).$$


## Convergence concepts

Def (Convergence in probability).
 ~ A sequence of random variables $X_1,X_2,\dots$ is said to converge in probability to a random variable $X$ if for all $\epsilon>0$,$$P(\abs{X_n-X}\geq\epsilon)\to0.$$

Theorem (Weak law of large numbers).
 ~ Let $X_1,X_2,\dots$ be iid with $EX_i=\mu$, [$\var X_i=\sigma^2$ - optional]. Then $\bar{X}_n\toinp\mu$.

Theorem (Continuity of $\toinp$).
 ~ Let $X_n\toinp X$ and $h$ continuous. Then $h(X_n)\toinp h(X)$.

Def (consistency).
 ~ An estimator for a parameter is called consistent if it converges in probability to that parameter.

Note that $S^2$ is consistent in addition to $\bar{X}$ as shown in WLLN.

Def (Almost sure convergence).
 ~ We say that $X_n\toas X$ if for all $\epsilon>0$, $$P(\lim_{n\to\infty}\abs{X_n-X}<\epsilon)=1.$$

This implies convergence in probability, but not conversely.

Theorem (Strong law of large numbers).
 ~ Let $X_i$ iid with $EX_i=\mu$ [and $\var X_i=\sigma^2<\infty$ - optional]. Then $\bar{X}_n\toas\mu$.

Definition (Convergence in distribution).
 ~ A sequence of random variables $X_1,X_2,\dots$ converges in distribution to $X$ if $$F_{X_n}(x)\to F_X(x)$$ at all continuity points of $F_X$.

Convergence in probability implies weak convergence but not conversely, unless the limit is a constant, in which case the converse holds.

Theorem (Central limit theorem).
 ~ Let $X_1,X_2,\dots$ be iid with $EX_i=\mu$ and $\var X_i=\sigma^2$. Then $$\frac{S_n-\mu}{\sqrt{n}\sigma}\weakto N(0,1).$$

Theorem (Slutsky's theorem).
 ~ If $X_n\weakto X$ and $Y_n\toinp a$, then
 ~ - $Y_nX_n\weakto aX$,
 ~ - $X_n+Y_n\weakto X+a$.

Def (Taylor).
 ~ Recall the Taylor expansion of $g$ of order $r$ about $a$, $$g(x)\approx\sum_{i=0}^r\frac{g^{(i)}(a)}{i!}(x-a)^i.$$

Def (Approximately normal).
 ~ We say that $Y_n\thicksim AN(\mu,\sigma^2)$ if $\sqrt{n}(Y_n-\mu)\weakto N(0,\sigma^2)$.

Theorem (Delta method).
 ~ Let $Y_n\thicksim AN(\mu,\sigma^2)$. Let $g$ be differentiable at $\mu$ and $g'(\mu)\neq 0$. Then $g(Y_n)\thicksim AN(g(\mu),\sigma^2(g'(\mu))^2).$

Theorem (Second-order delta method).
 ~ Let $Y_n\thicksim AN(\mu,\sigma^2)$. Let $g$ be such that $g'(\mu)=0$ and $g''(\theta)\neq0$. Then $n(g(Y_n)-g(\mu))\weakto \sigma^2\frac{g''(\mu)}{2}\chi^2_1$.

Theorem (Multivariate delta method).
 ~ Let $\bX_1,\dots\bX_n$ satisfy $E\bX=\symbf\mu$ and $\cov(\bX,\bX)=\Sigma$. Then for $g$ with continuous first partial derivatives such that $$\tau^2=\sum_i\sum_j \Sigma_{ij}\pdv{g(\symbf\mu)}{\mu_i}\pdv{g(\symbf\mu)}{\mu_j}>0,$$ it holds that $$\sqrt{n}(g(\bar{\bX})-g(\symbf\mu))\weakto N(0,\tau^2),$$or in other words, $g(\bar{\bX})\thicksim AN(g(\symbf\mu),\tau^2).$


## Generating a random sample

This covers inverse CDF method, Box-Muller, rejection sampling, and states Metropolis.



