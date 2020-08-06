*Claim* (A version of Scheffé's theorem).

Let $(X,\calM,\mu)$ be a measure space and $(f_n)$ a sequence of *(a)* integrable functions *(b)* uniformly bounded from below (i.e. there is some $M$ such that $M<f_n$ for all $n$). Suppose that *(c)* $f_n\to f$ a.e. and *(d)* $\int f_n\,d\mu\to\int f\,d\mu$ where *(e)* $f$ is integrable. Then $f_n\to f$ in $L^1_\mu$, i.e. $$\int\abs{f_n-f}\,d\mu\to0.$$

*Possible counterexample?*

Consider $f=0$ and $f_n=\1{(-n,-n-1)}-\1{(n,n+1)}$ on $\bbR$ with Lebesgue measure.

Then:

 - $f_n\to f$ a.e., since $f_n(x)=0$ for all $n>\abs{x}$, *(c)*
 - $\int f_n\,dx=1-1=0=\int f\,dx$ for all $n$, *(a, d, e)*
 - $f_n\geq-1$ for all $n$. *(b)*

However, $\abs{f_n-f}=\1{(-n,-n-1)}+\1{(n,n+1)}$, so that $$\int\abs{f_n-f}\,dx=2$$for all $n$.

*Remedy?* I think that adding the assumption $\int\abs{f_n}\,d\mu\to\int\abs{f}\,d\mu$ would be enough, and I was wondering what you think about that assumption. Is it too much?
