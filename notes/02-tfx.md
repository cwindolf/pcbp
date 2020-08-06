
# Transformations and Expectations

## Distributions of functions of a random variable

The first thing is, if $Y=g(x)$ for some $g:\calX\to\calY$, we have
$$P(Y\in A)=P(g(X)\in A)=P(X\in g^{-1}(A)).$$

 - For discrete random variables $X$, we can find the pmf $f_Y$ of $Y$ as
   $$f_Y(y)=\sum_{x\in g^{-1}(y)} f_X(x).$$
 - For continuous random variables, we have
   $$F_Y(y)=\int_{\{x:g(x)\leq y\}} f_X(x)\,dx.$$

Theorem (Monotone transformations).
 ~ Let $\calX$ the support of $X$ and $\calY$ the image of $\calX$ through $g$.
 ~ - If $g$ is increasing on $\calX$, $F_Y(y)=F_X(g^{-1}(y))$ for $y\in\calY$.
 ~ - If $g$ is increasing, $F_Y(y)=1-F_X(g^{-1}(y))$.

Example (Log uniform is exponential).
 ~ For $X$ uniform on $[0,1]$, $-\log X$ is exponentially distributed with cdf $1-e^{-y}$.

Theorem (Obtaining the pdf by the chain rule).
 ~ Let $\calX$ the support of $X$ with pdf $f_X$, and $\calY$ the image of $\calX$ through $g$. Say that $f_X$ is continuous and that $g^{-1}$ is continuously differentiable on $\calY$. Then $$f_Y(y)=f_X(g^{-1}(y))\abs{\tfrac{d}{dy}g^{-1}(y)}.$$

Example (Square transformation).
 ~ Let $Y=X^2$ for $X$ continuous with pdf $f_X$, so that $$F_Y(y)=P(X^2\leq y)=P(-\sqrt{y}\leq X\leq\sqrt{y})=F_X(\sqrt{y})-F_X(-\sqrt{y}).$$
 ~ Differentiating, $$f_Y(y)=\frac{1}{2\sqrt{y}}[f_X(\sqrt{y})+f_X(-\sqrt{y})].$$
 ~ Applying this to standard normal $X$, we get the chi-square $$f_Y(y)=\frac{1}{\sqrt{2\pi}}\frac{1}{\sqrt{y}}e^{-y/2}.$$

Here, $x^2$ is monotonic after partitioning $\bbR$ into the positive and negative numbers. The book's Theorem 2.1.8 shows that this intuition holds for any function that can be broken up over intervals such that it is monotonic on each interval.

Theorem (pdfs after transformations which are direct sums of monotinic functions.)
 ~ Let $X$ have pdf $f_X$ and $Y=g(X)$. Suppose that $A_0,A_1,\dots,A_k$ partition $\calX$ such that $P(X\in A_0)=0$ and $f_X$ is continuous on $A_i$. Further, say that $g(x)$ can be broken up into monotonic functions $g_i(x)$ on each $A_i$ for $i>0$.

Def (Quantile function).
 ~ This stands in for inverses of cdfs everywhere, with $$F_X^{-1}(y)=\inf\{x:F_X(x)\geq y\}.$$

Theorem (Probability integral transformation).
 ~ If $F_X$ is continuous, then $Y=F_X(X)$ is uniform on (0,1).

Schol: If $F_X$ is not invertible, then use the quantile function.


## Expectation

This section defines the expectation $$E[g(X)]=\int_{\calX}g(x)\,d\mu(x),$$ and notes basic properties: linearity and monotonicity.


## Moment generating functions

Def (Moment).
 ~ Recall the non-central $n$th moment $$\mu_n'=E X^n$$ and the $n$th central moment $$\mu_n=E(X-\mu)^n,$$ where $\mu=\mu_1'$.

Def (Variance).
 ~ Write $\var(X)=E(X-\mu)^2=E[X^2]-\mu^2.$

Def (Moment generating function).
 ~ Let $X$ have cdf $F_X$, and define the mgf $$M_X(t)=E e^{tX}$$ as long as it exists in a neighborhood of $t=0$.

Theorem (Not a misnomer).
 ~ If $X$ has mgf $M_X$, then $$E[X^n]=M_X^{(n)}(0).$$

Theorem (Uniqueness and continuity).
 ~ Let $F_X,F_Y$ be cdfs with moments of all orders.
 ~  a. If $X$ and $Y$ have bounded support, then $F_X=F_Y$ iff $E[X^r]=E[Y^r]$ for all $r=0,1,2...$.
 ~  b. If the mgfs exist and agree on some neighborhood of $t=0$, then $F_X=F_Y$.
 ~  c. If $\{X_i\}$ are a sequence of random variables with mgfs $M_{X_i}$ and $$\lim_{i\to\infty} M_{X_i}(t)=M_X(t)$$for all $t$ in some neighborhood of 0 and for some mgf $M_X$, then there is a unique cdf $F_X$ determined by $M_X$ such that $F_{X_i}(x)\to F_X(x)$ for $x$ where $F_X$ is continuous.

Lemma: If $a_n\to a$, then $(1+a_n/n)^n\to e^a$.

Theorem (Shifting and scaling mgf).
 ~ $$M_{aX+b}(t)=e^{bt}M_X(at).$$


## Differentiation under the integral sign

Theorem (Leibniz's rule).
 ~ If $f(x,\theta)$, $a(\theta)$, $b(\theta)$ are differentiable wrt $\theta$, then $$\dv{\theta}\int_{a(\theta)}^{b(\theta)} f(x,\theta)\,dx=f(b(\theta),\theta)b'(\theta) - f(a(\theta),\theta)a'(\theta) + \int_{a(\theta)}^{b(\theta)} \pdv{\theta} f(x,\theta)\,dx.$$
 ~ If $a$ and $b$ are constant, $$\dv{\theta}\int_{a}^{b} f(x,\theta)\,dx=\int_a^b\pdv{\theta} f(x,\theta)\,dx.$$

Theorem (Dominated convergence for limits).
 ~ Let $h(x,y)$ continuous at $y_0$ for all $x$, $\abs{h(x,y)}\leq g(x)$ integrable. Then $$\lim_{y\to y_0}\int_{-\infty}^\infty h(x,y)\,dx=\int_{-\infty}^\infty h(x,y_0)\,dx.$$

Theorem (Dominated convergence for derivatives).
 ~ Let $f(x,\theta)$ differentiable in $\theta$, and $\abs{f(x,\theta)}\leq g(x,\theta)$ for $g(x,\theta)$ integrable in $x$ for all $\theta$. Then $$\dv{\theta}\int_{-\infty}^\theta f(x,\theta)\,dx=\int_{-\infty}^\infty\pdv{\theta}f(x,\theta)\,dx.$$

Note: this also holds at just one $\theta=\theta_0$, replacing $\theta$ with $\theta_0$ where appropriate.

Theorem (Differentiating under the sum).
 ~ Say that $\sum_{x=0}^\infty h(x,\theta)$ converges for all $\theta\in(a,b)$ and
 ~  i. $\pdv{\theta}h(x,\theta)$ is continuous in $\theta$ for all $x$,
 ~  ii. $\sum_{x=0}^\infty\pdv{\theta}h(x,\theta)$ converges uniformly on closed bounded subintervals of $(a,b)$.
 ~ Then, $$\dv{\theta}\sum_{x=0}^\infty h(x,\theta)=\sum_{x=0}^\infty\pdv{\theta}h(x,\theta).$$

Theorem (Exchanging integral and sum).
 ~ Suppose the series $\sum_{x=0}^\infty h(x,\theta)$ converges uniformly for $\theta\in[a,b]$ and for each $x$, $h(x,\theta)$ is continuous in $\theta$. Then $$\int_a^b\sum_{x=0}^\infty h(x,\theta)\,d\theta=\sum_{x=0}^\infty\int_a^bh(x,\theta)\,d\theta.$$






