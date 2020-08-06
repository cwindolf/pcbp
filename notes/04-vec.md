# Multiple Random Variables


## Joint and marginal distributions

Remember, $$f(x,y)=\pdv[2]{F(x,y)}{x}{y}=\pdv[2]{P(X\leq x,Y\leq y)}{x}{y}.$$


## Conditional distributions and independence

Recall the conditional density $$f(y\mid x)=\frac{f(x,y)}{f_X(x)}$$ defined wherever $f_X(x)>0$ (i.e. if $Y$ absolutely continuous wrt $X$).

$X$ and $Y$ are independent if $$f(x,y)=f_X(x)f_Y(y),$$and actually iff there exist $g,h$ such that $f(x,y)=g(x)h(y)$.

That factorization lets you break up integrals: $$E[g(X)h(Y)]=Eg(X)Eh(Y).$$


## Bivariate transformations

Transformations of independent variables are independent.

Discrete works the same as before: just find the inverse of the transformation as a set function.

Theorem (Sums of Poisson).
 ~ If $X\thicksim\text{Poisson}(\lambda)$ and $Y\thicksim\text{Poisson}(\theta)$, then $X+Y\thicksim\text{Poisson}(\lambda+\theta)$.

Def (Jacobian in two dimensions).
 ~ Consider the change of variables $$u=g_1(x,y)\qand v=g_2(x,y),$$ and assume that these are injective, so that we can recover $$x=h_1(u,v)\qand y=h_2(u,v).$$ Then the *Jacobian matrix* is the matrix of first partial derivatives of these inverse mappings $$\begin{aligned}
 \mqty[\pdv{x}{u}&\pdv{x}{v}\\\pdv{y}{u}&\pdv{y}{v}],
 \end{aligned}$$
 where $$\begin{aligned}
 \pdv{x}{u}&=\pdv{h_1(u,v)}{u}\\
 \pdv{x}{v}&=\pdv{h_1(u,v)}{v}\\
 \pdv{y}{u}&=\pdv{h_2(u,v)}{u}\\
 \pdv{y}{v}&=\pdv{h_2(u,v)}{v}.
 \end{aligned}$$
 We will be interested in the *Jacobian determinant* $$\begin{aligned}
 J=\det\mqty[\pdv{x}{u}&\pdv{x}{v}\\\pdv{y}{u}&\pdv{y}{v}]=\pdv{x}{u}\pdv{y}{v}-\pdv{x}{v}\pdv{y}{u}.
 \end{aligned}$$

Theorem (Transformations of pdfs in two dimensions).
 ~ Let $$U=g_1(X,Y)\qand V=g_2(X,Y),$$ and $h_1,h_2$ give $x$ and $y$ as functions of $u$ and $v$, as above. Then $$f_{U,V}(u,v)=f_{X,Y}(h_1(u,v),h_2(u,v))\,\abs{\det J}$$ on the support of $U$ and $V$, and 0 elsewhere.


## Hierarchical models and mixture distributions

Some identities like $EX=E[E[X\mid Y]]$ and constructions of hierarchical models...

Theorem (Conditional variance identity).
 ~ If the expectations exist, $$\var X=E[\var(X\mid Y)]+\var(E[X\mid Y]).$$


## Covariance and correlation

Def (Covariance).
 ~ This is $$\cov(X,Y)=E[(X-\mu_X)(Y-\mu_Y)].$$

Theorem (Another way to write the covariance).
 ~ $$\cov(X,Y)=E[XY]-\mu_X\mu_Y.$$

Def (Correlation).
 ~ This is $$\rho_{XY}=\frac{\cov(X,Y)}{\sigma_X\sigma_Y}.$$

Theorem (Properties of correlation).
 ~ $\rho_{XY}$ satisfies
 ~ - $-1\leq\rho_{XY}\leq 1$, and
 ~ - $\abs{\rho_{XY}}=1$ iff there exist $a\neq0$, $b$ such that $Y=aX+b$ almost surely. Then $\operatorname{sgn} a=\rho_{XY}$.

Theorem (Independence and correlation).
 ~ If $X\ind Y$, then $\cov(X,Y)=\rho_{XY}=0.$

Theorem (Variance of sums of random variables).
 ~ $$\var(aX+bY)=a^2\var X + b^2\var Y + 2ab\cov(X,Y).$$

Definition (Bivariate normal).
 ~ The bivariate normal can be parametrized using the correlation $\rho=\rho_{XY}$, so that
   $$f(x,y)=\frac{1}{2\pi\sigma_X\sigma_Y\sqrt{1-\rho^2}} \exp\pqty{-\frac{\frac{(x-\mu_X)^2}{\sigma_X^2} - 2\rho\frac{(x-\mu_X)(y-\mu_Y)}{\sigma_X\sigma_Y}+\frac{(y-\mu_Y)^2}{\sigma_Y^2}}{2(1-\rho^2)}}.$$


## Multivariate distributions

Def (Multinomial coefficient).
 ~ The number of ways to divide $m$ objects into $n$ groups with $k_i$ objects in each group is $$\binom{m}{k_1,\dots,k_n}=\frac{m!}{k_1!\dotsm k_n!}.$$

Theorem (Multinomial theorem).
 ~ Let $\calA$ be the multi-indices that sum to $m$. Then $$(x_1+\dotsm+x_n)^m=\sum_{k\in\calA}\binom{m}{k_1,\dots,k_n}x_1^{k_1}\dots x_n^{k_n}.$$

Definition (Multinomial distribution).
 ~ Let $p_i$ be probabilities summing to 1. Then the multinomial pmf over $m$ trials and $n$ "cells" is $$f(x_1,\dots,x_n)=\binom{m}{x_1,\dots,x_n}p_1^{x_1}\dots p_n^{x_n}=m!\prod_{i=1}^n\frac{p_i^{x_i}}{x_i!}.$$

Definition (Mutual independence).
 ~ $X_i$ are mutually independent if $f(x_1,dots,x_n)=\prod_{i=1}^n f_i(x_i)$.

Note that pairwise independence does not imply mutual independence.

The Jacobian stuff for more than two variables is also recorded here.


## Inequalities

Theorem (Hölder's inequality).
 ~ Let $X,Y$ be random variables and let $p,q$ satsify $p^{-1}+q^{-1}=1$. Then $$\abs{EXY}\leq E\abs{XY}\leq(E\abs{X}^p)^{\frac1p}(E\abs{Y}^q)^{\frac1q}.$$

Theorem (Cauchy-Schwarz).
 ~ $$\abs{EXY}\leq E\abs{XY}\leq(E\abs{X}^2)^{\frac12}(E\abs{Y}^2)^{\frac12}.$$ This implies $$(\cov(X,Y))^2\leq\sigma_X^2\sigma_Y^2.$$

Theorem (Minkowski's inequality).
 ~ Let $1\leq p<\infty.$ Then $$(E\abs{X+Y}^p)^{\frac1p}\leq(E\abs{X}^p)^{\frac1p}+(E\abs{Y}^p)^{\frac1p}.$$

Theorem (Jensen's inequality).
 ~ Let $g$ convex. Then $$g(EX)\leq E[g(X)].$$

One can apply Jensen to show that the harmonic mean is bounded by the geometric mean is bounded by the arithmetic mean.
