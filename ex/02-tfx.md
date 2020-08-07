# Transformations and Expectations

1. *In each of the following find the pdf of $Y$ and show that it integrates to 1.*

   a. $Y=X^3$ where $f_X(x)=42x^5(1-x)$, $0<x<1$.
      We have
      $$\begin{aligned}
      f_Y(y)=\dv{y}F_Y(y)
      &=\dv{y}P(X\leq\cbrt{y})\\
      &=\dv{y}\int_0^{\cbrt{y}} f_X(x)\,dx\\
      &=f_X(\cbrt{y})\frac{1}{3}y^{-2/3}\\
      &=\frac{42}{3}y^{5/3}(1-y^{1/3})y^{-2/3}\\
      &=14(y-y^{4/3})\\
      \end{aligned}$$
      Integrating,
      $$\int_0^1 y-y^{4/3}\,dy=\left[\frac{y^2}{2}-\frac37y^{7/3}\right]_0^1=\frac12-\frac37=\frac{1}{14}.$$

   b. $Y=4X+3$ with $f_X(x)=7e^{-7x}$, $0<x<\infty$.

      Here, $X=\frac{Y-3}{4}$. Above we did it by hand, but here we use the theorem $$f_Y(x)=f_X(g^{-1}(y))\abs{(g^{-1})'(y)}.$$Note that here the domain changes, so $3<y<\infty$ with pdf $$f_Y(y)=7e^{-7(y-3)/4}=\frac74e^{21/4}e^{-7y/4}.$$ Integrating, $$\int_3^\infty e^{-7y/4}\,dx=\bqty{-\frac47e^{-7y/4}}_3^\infty=\frac47e^{-21/4}.$$

   c. $Y=X^2$ and $f_X(x)=\frac{15}{2}x^2(1-x^2)$, $0<x<1$.

      (There is a problem in the question as stated, $f_X$ does not integrate to 1. So it's modified here.)

      Now, $X=\sqrt{Y}$ and the domain does not change. Applying the theorem, $$f_Y(y)=\frac{15}{2}(x-x^2)\,\frac{1}{2\sqrt{x}}=\frac{15}{4}(\sqrt{x}-x^{3/2}).$$ Integrating, $$\int_0^1 \sqrt{x}-x^{3/2}\,dx=\bqty{\frac23x^{3/2}-\frac25x^{5/2}}_0^1=\frac23-\frac25=\frac{4}{15}.$$

2. *Find the pdf of $Y$.*

   a. $Y=X^2$, $f_X(x)=1$, $0<x<1$.

      The domain does not change, and $$f_Y(y)=\frac{1}{2\sqrt{y}}.$$

   b. $Y=-\log X$, where $X$ has pdf $$f_X(x)=\frac{(n+m+1)!}{n!m!}x^n(1-x^m)$$on $0<x<1$.

      $-\log$ is decreasing, so the domain becomes $0<y<\infty$ since $X=e^{-Y}$. We have $$\abs{\dv{y}g^{-1}(y)}=e^{-y},$$ so that $$f_Y(y)=\frac{(n+m+1)!}{n!m!}e^{-(n+1)y}(1-e^{-my}).$$ Looks familiar...

   c. $Y=e^X$ and $X$ has pdf $$f_X(x)=\frac{1}{\sigma^2}xe^{-(x/\sigma)^2/2}.$$

      Then $X=\log Y$ and the domain does not change. The pdf becomes $$f_Y(y)=\frac{1}{\sigma^2}e^{-\log(x)^2/2\sigma^2}.$$

3. Let $X\thicksim\text{Geom}(\tfrac13)$, so that it has pmf $$\frac13\pqty{\frac23}^x,\qq{x=0,1,2,\dots}$$Let $Y=\frac{X}{X+1}$ and determine its distribution.

   The function $$g(x)=\frac{x}{x+1}$$ maps $0,1,\dots$ onto $0,\frac12,\frac23,\dots$ with the same probability as $x$. If $$\begin{aligned}
   y&=\frac{x}{x+1}\\
   (x+1)y=x\\
   xy+y=x\\
   y=x-xy\\
   y=x(1-y)\\
   x=\frac{y}{1-y},
   \end{aligned}$$
   then $$f_Y(y)=P(\frac{X}{X+1}=y)=P(X=\frac{y}{1-y})=\frac13\pqty{\frac23}^{y/(1-y)}.$$

4. Let $f(x)=\frac12\lambda e^{-\lambda\abs{x}}$ for $\lambda>0$, $x\in\bbR$.

   a. *Verify that $f(x)$ is a pdf.*

      First, $f>0$ for all $x$ and is clearly continuous. Second,
      $$\begin{aligned}
      \int_{\bbR}f(x)\,dx
      &=\lambda \int_0^\infty e^{-\lambda x}\,dx\\
      &=\lambda\bqty{-\frac{1}{\lambda}e^{-\lambda x}}_0^\infty
      &=\lambda(\frac{1}{\lambda})=1.
      \end{aligned}$$

   b. We have $$P(X<t)=\begin{cases}
      \frac{\lambda}{2}\int_{-\infty}^t e^{\lambda x}\,dx &\qif t<0\\
      \frac{\lambda}{2}\pqty{\frac12 + \int_0^t e^{-\lambda x}\,dx}&\qif t\geq0.
      \end{cases}$$
      Evaluating these integrals, we get
      $$\begin{aligned}
      \int_{-\infty}^t e^{\lambda x}\,dx
      &=\bqty{\frac{1}{\lambda}e^{\lambda x}}_{-\infty}^t\\
      &=\frac{1}{\lambda}e^{\lambda t},\qand\\
      \int_0^t e^{-\lambda x}\,dx
      &=\bqty{-\frac{1}{\lambda}e^{-\lambda x}}_0^t\\
      &=-\frac{1}{\lambda}e^{-\lambda t} + \frac{1}{\lambda}.
      \end{aligned}$$
      Plugging back in,
      $$P(X<t)=\begin{cases}
      \frac12e^{\lambda t} &\qif t<0\\
      \frac12   \frac{\lambda}{2}\pqty{\frac12 + \int_0^t e^{-\lambda x}\,dx}&\qif t\geq0.
      \end{cases}$$

   c. By symmetry,
      $$\begin{aligned}
      P(\abs{X}<t)
      &=2\int_0^t \frac{\lambda}{2}e^{-\lambda x}\,dx\\
      &=\lambda\bqty{-\frac{1}{\lambda}e^{-\lambda x}}_{0}^t\\
      &=1-e^{-\lambda t}.
      \end{aligned}$$

5. *Find the pdf of $Y=\sin[2](x)$ where $X$ is uniformly distributed on $(0,2\pi).$*

   First find it by differentiating the cdf given in (2.1.6). To do so, we need to find two solutions to $\sin[2](x)=y$ in $(0,\pi)$. We can take $$\begin{aligned}
   x_1&=\asin\sqrt{y}\\
   x_1&=\pi+\asin(-\sqrt{y}).
   \end{aligned}$$
   Thus we need to differentiate $$\begin{aligned}
   P(Y\leq y)
   &=2P(X\leq\asin\sqrt{y})+2P(\pi+\asin(-\sqrt{y})\leq X\leq \pi)\\
   &=\frac{1}{\pi}\asin\sqrt{y} + \frac{1}{\pi}\bqty{-\asin(-\sqrt{y})}\\
   &=\frac{2}{\pi}\asin\sqrt{y}.
   \end{aligned}$$
   So, what's obvious now is that there's another symmetry, so that the probability is four times the probability in the first region. Also, this is clearly a cdf, since for $0\leq y\leq 1$ this function's range is $[0,1]$. Differentiating, $$\begin{aligned}
   f_Y(y)
   &=\frac{2}{\pi}\dv{y}\asin\sqrt{y}\\
   &=\frac{2}{\pi}\,\frac{1}{\sqrt{1-y}}\,\frac{1}{2{\sqrt{y}}}\\
   &=\frac{1}{\pi}\frac{1}{\sqrt{y-y^2}}.
   \end{aligned}$$
   I don't want to find this using Theorem 2.1.8 since Theorem 2.1.8 would lose all of the symmetries.

6. *Find the pdf of $Y$ and show that it integrates to 1.*

   a. $f_X(x)=\frac12 e^{-\abs{x}}$, $x\in\bbR$, $Y=\abs{X}^3$.

      Here, $$\begin{aligned}
      P(Y\leq y)
      &=P(-\cbrt{y}\leq X\leq \cbrt{y})\\
      &=\frac12 \int_{-\cbrt{y}}^{\cbrt{y}} e^{-\abs{x}}\,dx\\
      &=\int_0^{\cbrt{y}} e^{-x}\,dx.
      \end{aligned}$$
      Differentiating,
      $$f_Y(y)=\frac13 y^{-2/3} e^{-\cbrt{y}}.$$
      To show that this integrates to 1, make the change of variable $s=\cbrt{y}$, $ds=\frac13 y^{-2/3}\,dy$. Note this does not change the domain.
      $$\begin{aligned}
      \int_0^\infty f_Y(y)\,dy
      =\int_0^\infty e^{-s}\,ds
      =\bqty{-e^{-s}}_0^\infty=0 + 1.
      \end{aligned}$$

   b. $f_X(x)=\frac38(x+1)^2$, $-1<x<1$, $Y=1-X^2$.

      Here, $0<1-x^2<1$ is the range of $Y$. Picturing $g(x)=1-x^2$ as an inverted frown, since it has inverses $g^{-1}(y)=\pm\sqrt{1-y}$, we can see that $$\begin{aligned}
      P(Y\leq y)
      &=P(-1\leq X\leq-\sqrt{1-y}) + P(\sqrt{1-y}\leq X\leq 1)\\
      &=\int_{-1}^{-\sqrt{1-y}} \frac38(x+1)^2\,dx + \int_{\sqrt{1-y}}^1 \frac38(x+1)^2\,dx.
      \end{aligned}$$
      Differentiating, $$\begin{aligned}
      f_Y(y)
      &=\frac38 (1-\sqrt{1-y})^2\,\frac{1}{2\sqrt{1-y}} + \frac38(\sqrt{1-y}+1)^2\,\frac{1}{2\sqrt{1-y}}\\
      &=\frac{3}{16}\frac{(1-\sqrt{1-y})^2+(1+\sqrt{1-y})^2}{\sqrt{1-y}}\\
      &=\frac38(\sqrt{1-y}^{-1}+\sqrt{1-y}).
      \end{aligned}$$
      Integrating again,
      $$\begin{aligned}
      \frac38\int_0^1 \sqrt{1-y}^{-1}+\sqrt{1-y}\,dy
      &=\frac38\bqty{-2\sqrt{1-y}-\frac23(1-y)^{3/2}}_0^1\\
      &=\frac38\bqty{2+\frac23}=1.
      \end{aligned}$$

   c. $f_X(x)=\frac38(x+1)^2$, $-1<x<1$, $$Y=\begin{cases}
   1-X^2 & X\leq 0\\
   1 - X & X > 0.
   \end{cases}$$

      Again, the range is the same, but this one is just more complicated. Now, we have $$\begin{aligned}
      P(Y\leq y)
      &=P(-1\leq X\leq-\sqrt{1-y}) + P(1-y\leq X\leq 1)\\
      &=\int_{-1}^{-\sqrt{1-y}} \frac38(x+1)^2\,dx + \int_{1-y}^1 \frac38(x+1)^2\,dx.
      \end{aligned}$$
      Then $$\begin{aligned}
      f_Y(y)
      &=\frac{3}{16}\frac{(1-\sqrt{1-y})^2}{\sqrt{1-y}} + \frac{d}{dy}\int_{1-y}^1 \frac38 (x+1)^2\,dx\\
      &= \frac{3}{16}\pqty{\sqrt{1-y}^{-1}-2+\sqrt{1-y}}  + \frac38(2-y)^2.
      \end{aligned}$$
      Integrating (this will be fun),
      $$\begin{aligned}
      \int_0^1 f_Y(y)\,dy
      &=
      \frac{3}{16}\int_0^1 \sqrt{1-y}^{-1}-2+\sqrt{1-y}\,dy
      +\frac38 \int_0^1 (2-y)^2\\
      &=1.
      \end{aligned}$$

7. *Let $X$ have pdf $f_X(x)=\frac29(x+1)$ on $-1\leq x\leq 2$.*

   a. *Find the pdf of $Y=X^2$.*

      Well, $$\begin{aligned}
      P(Y\leq y)
      &=P(X^2\leq y)\\
      &=P(-\sqrt{y}\leq X \leq \sqrt{y})\\
      &=\int_{-\sqrt{y}}^{\sqrt{y}} \1{-1\leq x\leq 2} f_X(x)\,dx.
      \end{aligned}$$
      Differentiating, $$\begin{aligned}
      f_Y(y)
      &=\frac29\frac{1}{2 y^{1/2}}\bqty{
      \1{-1\leq \sqrt{y}\leq 2} (\sqrt{y}+1)
      -\1{-1\leq-\sqrt{y}\leq 2}(1-\sqrt{y})
      }\\
      &=\frac{1}{9y^{1/2}} \bqty{
      \1{0\leq y\leq 1}(\sqrt{y}+1-1+\sqrt{y})
      +\1{1\leq y\leq 4}(\sqrt{y}+1)
      }\\
      &=\frac{1}{9}\bqty{
      2\1{0\leq y\leq 1}
      +\1{1\leq y\leq 4}(1+y^{-1/2}).
      }
      \end{aligned}$$
      Clearly this is positive, but check that it integrates to 1:
      $$\begin{aligned}
      \frac{9}{1}\int_{-1}^4 f_Y(y)\,dy
      &= 2\int_0^1 2 \,dy + \int_1^4 1 + y^{-1/2}\,dy\\
      &= 2\bqty{2y}_0^1 + \bqty{y+2\sqrt{y}}_1^4 \\
      &= 4 + [(4+4)-(1+2)] = 9.
      \end{aligned}$$

   b. Theorem 2.1.8 can be extended by just assuming that $f_X=0$ away from its support. Then one can apply it to this example just fine. I don't like calculating with that cumbersome theorem though, the math that results is identical to the above but with more hoops to jump through.

8. *In each of the following, show that $F_X$ is a cdf and find the quantile function $F_X^{-1}$.*

   a. $$F_X(x)=\begin{cases}
   0         & x < 0 \\
   1- e^{-x} & x\geq0.
   \end{cases}$$

      Clearly $F_X(-\infty)=0$ and $F_X(\infty)=1-e^{-\infty}=1$. Also, this function is continuous, since $1-e^{-0}=0$, and clearly it's increasing.

      Clearly $F_X^{-1}(0)=\infty$, but for $x>0$, $F_X$ is invertible. Since $$\begin{aligned}
      y=1-e^{-x}\implies 1-y=e^{-x}\implies -x=\log(1-y),
      \end{aligned}$$
      we have
      $$\begin{aligned}
      F_X^{-1}(y)=-\log(1-y).
      \end{aligned}$$

   b. $$F_X(x)=\begin{cases}
   e^{x}/2 & x < 0\\
   1/2 & 0\leq x<1\\
   1-e^{1-x}/2 & 1\leq x.
   \end{cases}$$

      Notice that $e^{-\infty}/2=0=e^{1-\infty}/2$, so that $F_X(-\infty)=0$ and $F_X(\infty)=1$. Also, $e^0/2=1/2=1-e^{1-1}/2$, so that $F_X$ is continuous. Finally, the function is increasing.

      For the quantile function, we can invert the cdf for $y<\frac12$ and $y>\frac12$, and use the infimum for $y=\frac12$, so that $$\begin{aligned}
      F_X^{-1}(y)=\begin{cases}
      \log 2y & y<\frac12 \\
      0 & y=\frac12\\
      1-\log(2-2y)&y>\frac12.
      \end{cases}
      \end{aligned}$$

   c. $$F_X(x)=\begin{cases}
   e^x/4 & x<0\\
   1-e^{-x}/4 & x\geq0.
   \end{cases}$$

      $F_X$ has a jump discontinuity at 0, since $e^0/4=\frac14$ and $1-e^0/4=\frac34$. However, it is continuous from the right with limits from the left since we choose the branch to the right at 0. Still, it's increasing and has the right limits since $e^{-\infty}=0$.

      For the quantile function, $F_X$ is injective so it can be inverted without needing to take infima. The only difficulty is to recognize that for $\frac14\leq y<\frac34$, $F_X(x)\geq y$ implies that we use the branch for $x\geq0$, so that $$F_X^{-1}(y)=\begin{cases}
      \log 4y & y<\frac14\\
      -\log(4-4y) & y\geq\frac14.
      \end{cases}$$

9. *If the random variable $X$ has pdf $f(x)=\1{1<x<3}\frac{x-1}{2}$, find a monotone function $u(x)$ such that $Y=u(X)$ has the uniform(0,1)$ distribution.*

   By the probability integral transformation, we can take $u=F_X$. Indeed, $$F_X(x)=\int_{-\infty}^x\frac{s-1}{2}\,ds=\begin{cases}
   0 & x \leq 1\\
   \frac{x^2}{4}-\frac{x}{2}-\frac14 & 1<x<3 \\
   1 & x \geq 3.
   \end{cases}$$
   Since $x\leq 1$ or $x\geq 3$ w.p. 0, we can take $u(x)=\frac{x^2}{4}-\frac{x}{2}-\frac14.$

10. *Let $X$ be discrete with cdf $F_X$ and let $Y=F_X(X)$.*

    a. *Prove that $Y$ is stochastically greater than $U\thicksim$ uniform$(0,1)$.*

       It suffices to show that for all $y$, $$P(Y\leq y)\leq P(U\leq y)=y,$$ and that there exists some $y$ such that the inequality is strict.

       Indeed, let $\calX=\{x:P(X=x)>0\}$. Then for each $y$, $$\begin{aligned}
       P(Y\leq y)=\sup_{x\in X:F_X(x)\leq y} F_X(x)\leq y.
       \end{aligned}$$
       Thus we have the non-strict inequality, and in fact if there exists $x\in\calX$ such that $F_X(x)=y$, then the supremum is achieved and $P(Y\leq y)=y$. Now, assume for the sake of contradiction that the supremum is achieved anywhere. Then for all $y$, $P(Y\leq y)=y$. But then $Y$ is a continuous random variable, and $P(Y=y)=0$ for all $y$. But that contradicts the assumption that $X$ was discrete, since if $X$ is discrete, there exists some $x\in\calX$ such that $P(Y=F(X_i))=P(X=x_i)>0$.

    b. *This asks for another proof of the same claim, but to provide the $y$ such that the inequality is strict constructively. I think there's a typo, I can't see how to do it by adding $\epsilon$, only by subtracting $\epsilon$ (going to the left as below).*

       To find a $y$ such that the inequality is strict, take arbitrary $x\in\calX$, and let $p=P(X=x).$ We claim that there is no $x'$ such that $F_X(x)-p<F(x')<F_X(x)$. Indeed, if there were such $x'$, then $$P(X=x)\leq P(x'< X \leq x)=F_X(x)-F(x')<F_X(x)-F_X(x)-p=p,$$implying that $P(X=x)=p<p$.

       Now, let $y$ such that $F_X(x)-p<y<F_X(x)$. Then $$P(Y\leq y)=\sup_{x\in X:F_X(x)\leq y} F_X(x)\leq F(x)-p<y.$$

11. *Let $X\thicksim N(0,1)$.*

    a. *Find $EX^2$ directly, and then by using the $\chi^2_1$ pdf.*

       After going down a lot of wrong roads, we can integrate by parts using $u=x$ and $dv=xe^{-x^2/2}\,dx$, so that $$v=\int xe^{-x^2/2}\,dx=\int -e^{-s}\,ds=-e^{-x^2/2}.$$
       Then $$\begin{aligned}
       \int_{-\infty}^\infty x\,xe^{-x^2/2}\,dx
       &=\bqty{-xe^{-x^2/2}}_{-\infty}^\infty + \int -e^{-x^2/2}\,dx
       &= 0+\sqrt{2\pi},
       \end{aligned}$$
       which we know by recognizing the kernel of the Gaussian pdf, so that the result is 1 as it should be.

       Now, let $Y=X^2$. Then
       $$\begin{aligned}
       f_Y(y)
       &=\frac{1}{2\sqrt{y}}(f_X(-\sqrt(y))+f_X(\sqrt{y}))\\
       &=\frac{1}{2\sqrt{y}}\frac{1}{\sqrt{2\pi}} 2e^{-y/2}\\
       &=\frac{1}{\sqrt{2\pi y}} e^{-y/2}.
       \end{aligned}$$

       Then we just want the expectation
       $$\begin{aligned}
       EY
       &=\frac{1}{\sqrt{2\pi}} \int_0^\infty \sqrt{y} e^{-y/2}\,dy \\
       &=\frac{1}{\sqrt{2\pi}} \pqty{
       \bqty{-2\sqrt{y}e^{-y/2}}_0^\infty
       +2\int_0^\infty \frac{1}{2\sqrt{y}} e^{-y/2}\,dy
       }\\
       &=\frac{1}{\sqrt{2\pi}} \int_0^\infty \frac{1}{\sqrt{y}} e^{-y/2}\,dy\\
       &=\frac{\sqrt{2\pi}}{\sqrt{2\pi}}=1.
       \end{aligned}$$

    b. *Find the pdf of $Y=\abs{X}$ and compute the mean and variance.*

       To compute the pdf, we have
       $$f_Y(y)=\dv{y}2F_X(y)=\sqrt{\tfrac{2}{\pi}}e^{-y^2/2}.$$
       Then the expectation is
       $$EY=\sqrt{\tfrac{2}{\pi}}\int_0^\infty ye^{-y^2/2}\,dy=\sqrt{\tfrac{2}{\pi}}[-e^{-y^2/2}]_0^\infty=\frac{1}{\sqrt{2\pi}}.$$
       And the variance can be computed with $\var Y=E[Y^2]-E[Y]^2$. Luckily, $Y^2=X^2$, so we know that $$\var Y=1-\frac{1}{2\pi}.$$

<!-- 12 -->

13. *Let $X$ be the length of the run started by the first of a sequence $Y_i$ of independent coin flips. Find the distribution of $X$ and $EX$.*

    Conditioned on the value of the first flip, $X$ is geometrically distributed:
    $$P(X=k\mid Y_1=y)=0.5^{k-1}0.5.$$
    Thus $$P(X=k)=P(X=k\mid Y_1=y)P(Y_1=y)=0.5^{k}0.5$$ is also geometrically distributed ($k$ failures parametrization), and has expectation $EX=\frac{1-p}{p}=1$.

14. *Let $X$ have pdf $f$ such that $f(x)=0$ for $x<0$. Show the "bathtub formula" $$EX=\int_0^\infty 1-F(x)\,dx.$$*

    There is an easy visual proof: imagine filling the area between $F(x)$ and $1$ by a Riemann-style sum, only with the rectangles based on the $y$-axis. Then they have height $F(dx)=dP(x)=f(x)\,dx$ and width $x$, so we are summing $x\,dP=x\,f(x)\,dx$.

    We can translate this into words using Fubini's theorem to interchange integration from $x$ to $y$:
    $$\begin{aligned}
    \int_0^\infty 1-F(x)\,dx
    &= \int_0^\infty P(X>x)\,dx \\
    &= \int_0^\infty E[\1{X>x}]\,dx \\
    &= \int_0^\infty \int_0^\infty \1{y>x}\,f(y)dy\,dx \\
    &= \int_0^\infty \bigg[\int_0^\infty \1{y>x}\,dx\bigg]\,f(y)\,dy \\
    &= \int_0^\infty y\,f(y)\,dy.
    \end{aligned}$$


15. *Let $X$ and $Y$ be random variables and $X\wedge Y=\min(X,Y)$, $X\vee Y=\max(X,Y)$. Then $$E[X\vee Y]=EX + EY - E[X\wedge Y].$$*

    Indeed, notice that for all $\omega$, $$(X\wedge Y + X\vee Y)(\omega)=\begin{cases}
    Y(\omega) + X(\omega) & \qif* X(\omega) > Y(\omega) \\
    X(\omega) + Y(\omega) & \qif* X(\omega) \leq Y(\omega) \\
    \end{cases}=(X+Y)(\omega).$$
    Thus, taking expectations of both sides,
    $$E[X\wedge Y + X\vee Y] = E[X+Y]$$
    and, by linearity,
    $$E[X\wedge Y] + E[X\vee Y] = EX+EY.$$
    Subtract $E[X\wedge Y]$ to finish.

    This requires that these be defined on the same probability space. But actually, I think that's sort of an assumption of the construction of taking min and max, since events like $\{X> Y\}$ need to be measurable.

16. *Let $T$ have survival function $P(T>t)=ae^{-\lambda t} + (1-a)e^{-\mu t}$ for $\lambda,\mu>0$, $0<a<1$, and $t>0$. Compute $ET$.*

    By a previous exercise, since $T$ is positive, $$\begin{aligned}
    ET
    &=\int_0^\infty ae^{-\lambda t} + (1-a)e^{-\mu t}\,dt\\
    &=\bqty{-\frac{a}{\lambda} e^{-\lambda t} - \frac{1-a}{\mu}e^{-\mu t}}_0^\infty\\
    &=\frac{a}{\lambda} + \frac{1-a}{\mu}.
    \end{aligned}$$

17. *Find the median of the following distributions.*

    a. $f(x)=3x^2$, $0<x<1$.

       Since $f$ is strictly positive, the median is the unique $m$ such that
       $$\int_0^m 3x^2\,dx=\frac12.$$
       Indeed,
       $$\int_0^m 3x^2\,dx=\bqty{x^3}_0^m=m^3,$$
       so take $m=\cbrt{\frac12}.$

    b. $f(x)=\frac{1}{\pi}\frac{1}{1+x^2}$, $-\infty<x<\infty$.

       The Cauchy is symmetric, so clearly $m=0$.

18. *Show that any median $m$ of a continuous random variable minimizes the mean absolute deviation, i.e. if $m$ is a median of $X$ with pdf $f$, then $$\min_a E\abs{X-a}=E\abs{X-m}.$$*

    For any $a$, since $X=a$ with probability 0, we can break up the following integral into two integrals of differentiable functions to allow for the use of Leibniz's rule (although I think it should apply up to a set of measure 0 anyway). Indeed, $$\begin{aligned}
    \dv{a}E\abs{X-a}
    &=\dv{a}\int_{-\infty}^\infty\abs{x-a}f(x)\,dx\\
    &=\dv{a}\bqty{\int_{-\infty}^a (a-x)f(x)\,dx + \int_a^\infty (x-a)f(x)\,dx}\\
    &=\bqty{(a-a)f(a) + \int_{-\infty}^a f(x)\,dx} + \bqty{-(a-a)f(a) - \int_a^\infty f(x)\,dx}\\
    &=\int_{-\infty}^a f(x)\,dx - \int_{a}^\infty f(x)\,dx.
    \end{aligned}$$
    Thust to achieve a minimum, we need $$\int_{-\infty}^a f(x)\,dx = \int_{a}^\infty f(x)\,dx=\frac12,$$ so that $a$ is a median.


19. *Show that the minimizer $a$ of $E(X-a)^2$ is the mean $EX$, and list the necessary assumptions on $F$ and $f$.*

    Indeed, by Leibniz's rule, $$\begin{aligned}
    \dv{a} E(X-a)^2
    &= \dv{a}\int_{-\infty}^\infty (x-a)^2\,f(x)\,dx \\
    &= -2\int_{-\infty}^\infty (x-a)f(x)\,dx.
    &= -2\bqty{\int_{-\infty}^\infty xf(x)\,dx - a\int_{-\infty} f(x)\,dx}
    &= -2[EX - a].
    \end{aligned}$$
    Setting this equal to 0, we see that $a$ is a critical point iff it is the mean.

    To see that the critical point is a minimum, differentiate again to obtain
    $$\dv{a}(-2[EX - a]) = 2,$$
    so that the function is convex.

    The only assumption was the existence of absolute continuity (the same proof would work with a pmf), but I'm sure that can't be necessary...

20. *A couple decides to flip a coin until it lands heads. What is the expected total number of coin tosses?*

    Clearly the pmf is $P(X=k)=0.5^{k-1}0.5$, the $k-1$ failures parametrization of the geometric distribution, which has expectation $\frac{1}{p}.$

21. *Prove the "two-way rule" for expectations, that $EY=Eg(X)$ if $Y=g(X)$.*

    I am a little confused why they would ask this, $Y=g(X)$ with probability 1 so of course they have the same expectation. They allow us to assume that $g$ is monotonic, so my guess is they want us to show that
    $$\int_{\calX} xf_X(x)\,dx=\int_{g(\calX)} g(x)f_X(g^{-1}(x))\frac{1}{\abs{g'(x)}}\,dx=\int_{\calY} yf_Y(y)\,dy,$$
    but here the first equality is just a change of variables and the second is the expectation of $Y$. It remains to observe that the density of $y$ is as given in the middle, but this has been shown already...

22. *Let $X$ have pdf $$f(x)=\frac{4}{\beta^3\sqrt{\pi}}x^2 e^{-x^2/\beta^2}$$ for $0<x<\infty$ and $\beta>0$.*

    a. *Verify that $f$ is a pdf.*

       Indeed, $f$ is positive, so it remains to integrate it. But $$\begin{aligned}
       \int_0^\infty x^2 e^{-x^2/\beta^2}
       &=\frac12 \int_{-\infty}^\infty x^2 \exp(-\frac{x^2}{2 (\beta/\sqrt{2})^2})\,dx\\
       &=\frac{\sqrt{\pi}\beta}{2} \int_{-\infty}^\infty \frac{1}{\sqrt{2\pi}(\beta/\sqrt{2})} x^2 \exp(-\frac{x^2}{2 (\beta/\sqrt{2})^2})\,dx\\
       &= \frac{\sqrt{\pi}\beta}{2} E[N(0,\beta^2/2)^2]\\
       &=\frac{\sqrt{\pi}\beta}{2} \frac{\beta^2}{2}\\
       &=\frac{\sqrt{\pi}\beta^3}{4},
       \end{aligned}$$
       where we have recognized the variance of a Gaussian distribution to make the computation easier.

    b. This is a lot of integration by parts...

23. Let $X$ have pdf $f(x)=(1+x)/2$, $-1<x<1$.

    a. *Find the pdf of $Y=X^2$.*

       For $0\leq y<1$,
       $$\begin{aligned}
       F_Y(y)
       &=\dv{y}\int_{-\sqrt{y}}^{\sqrt{y}} f(x)\,dx\\
       &=(f(\sqrt{y})\frac{1}{2\sqrt{y}} - f(-\sqrt{y})\frac{-1}{2\sqrt{y}})\\
       &= \frac{1+\sqrt{y} + 1 - \sqrt{y}}{4\sqrt{y}}\\
       &=\frac{1}{2\sqrt{y}}.
       \end{aligned}$$

       Check that it's a pdf:
       $$\int_0^1 \frac{1}{2\sqrt{y}}\,dy=\bqty{\sqrt{y}}_0^1=1.$$

    b. *Find $EY$ and $\var Y$.*

       $$EY=\int_0^1\frac{\sqrt{y}}{2}\,dy=\bqty{\frac{1y^{3/2}}{3}}_0^1=\frac13.$$
       And, since
       $$EY^2=\int_0^1\frac{y^{3/2}}{2}\,dy=\bqty{\frac{1y^{5/2}}{5}}_0^1=\frac15,$$
       we have $\var Y=E[Y^2]-E[Y]^2=\frac15-\frac19=\frac{4}{45}.$

24. *Compute $EX$ and $\var X$ for each of the following distributions.*

    a. $f(x)=ax^{a-1}$, $0<x<1$, $a>0$.

       $$\begin{aligned}
       EX&=\int_0^1 ax^a\,dx=\bqty{\frac{a}{a+1}x^{a+1}}_0^1=\frac{a}{a+1},\\
       EX^2&=\int_0^1 ax^{a+1}\,dx=\bqty{\frac{a}{a+2}x^{a+2}}_0^1=\frac{a}{a+2},\\
       \var X&=E[X^2]-E[X]^2=\frac{a}{a+2}-\frac{a^2}{(a+1)^2}.
       \end{aligned}$$

    b. $f(x)=\frac{1}{n}$, $x=1,2,\dots,n$.

       Then
       $$\begin{aligned}
       EX
       &=\frac{1}{n}\sum_{i=1}^n i=\frac1n\frac{n(n+1)}{2}=\frac{n+1}{2},\\
       EX^2
       &=\frac{1}{n}\sum_{i=1}^n i^2 =\frac1n \frac{n(n+1)(2n+1)}{6}=\frac{(n+1)(2n+1)}{6},\\
       \var X
       &=\frac{(n+1)(2n+1)}{6}-\frac{(n+1)^2}{4}\\
       &=\frac{(8n^2 + 12n + 4) - (6n^2 + 12n + 6)}{24}
       =\frac{n^2 - 1}{12}.
       \end{aligned}$$

    c. $f(x)=\frac32(x-1)^2$, $0<x<2$.

       To simplify, let $Y=X-1$ with pdf $g(y)$, so that $$g(y)=\frac32 y^2$$ on $-1<y<1$. Then by symmetry, $EY=0$, so that $EX=1$.

       Now, notice that $Y=X-EX$, so that $EY^2=E[(X-EX)^2]=\var X$. So, $$\var X=\int_{-1}^1 \frac32 y^4\,dy=\bqty{\frac{3}{10}y^5}_{-1}^1=\frac{3}{5}.$$

25. *Let $X$ have pdf $f$, where $f$ is even. Then, ...*

    a. *$X$ and $-X$ are identically distributed.*

       Indeed, since $\abs{\dv{x}-x}=1$, $f_{-X}(x)=f(-x)$.

    b. *$M_X(t)$ is even.*

       Notice that making the change of variables $u=-x$, $du=-dx$,
       $$\begin{aligned}
       M_X(-t)
       &=Ee^{-tX}\\
       &=\int_{-\infty}^\infty e^{-tx}f(x)\,dx\\
       &=-\int_{\infty}^{-\infty} e^{tx}f(-x)\,dx\\
       &=\int_{-\infty}^{\infty} e^{tx}f(-x)\,dx\\
       &=\int_{-\infty}^{\infty} e^{tx}f(x)\,dx\\
       &=M_X(t).
       \end{aligned}$$

26. *A pdf $f(x)$ is said to be symmetric about $a$ if $f(a+x)=f(a-x)$ for all $x$.*

    a. *Give three examples of symmetric pdfs.*

       $N(a,1)$: $f(x)=\frac{1}{\sqrt{2\pi}}e^{-(x-a)^2/2}.$

       Cauchy centered at $a$: $f(x)=\frac1\pi\frac{1}{1+(x-a)^2}$.

       Double exponential centered at $a$: $f(x)=\frac12 e^{-\abs{x-a}}.$

    b. *Let $X\thicksim f(x)$ symmetric about $a$. Then the median of $X$ is $a$.*

       Indeed, since $f$ is symmetric,
       $$\int_{-\infty}^a f(x)\,dx=\int_a^\infty f(x)\,dx.$$

    c. *If $f$ is symmetric and $EX$ exists, then $EX=a$.*

       Indeed, let $Y=X-a$ so that $EY=EX-a$. Then
       $$P(Y\leq y)=P(X-a\leq y)=P(X\leq y+a),$$
       so that $f_Y(y)=f(y+a)$. Then
       $$\begin{aligned}
       \int_{-\infty}^\infty y f_Y(y)\,dy
       &=\int_{-\infty}^\infty y f(y+a)\,dy
       &=\int_0^\infty (-y f(-y+a)+y f(y+a))\,dy
       &=0.
       \end{aligned}$$

    d. *Show that $f(x)=\1{x\geq0}e^{-x}$ is not symmetric.*

       Indeed, assume that $f$ were symmetric about $a$. But then $f(a+2\abs{a})>0$ while $f(a-2\abs{a})=0$.

    e. *Show that the median is less than the mean for that $f$.*

       Indeed, the median satisfies
       $$\begin{aligned}
       \int_0^a e^{-x}\,dx&=\int_a^\infty e^{-x}\\
       \bqty{-e^{-x}}_0^a &= \bqty{-e^{-x}}_a^\infty\\
       1-e^{-a} &= e^{-a},\\
       \end{aligned}$$
       so that $2e^{-a}=1$, or $a=\log2$.

       But the mean is
       $$\begin{aligned}
       \int_0^\infty xe^{-x}\,dx
       &=\bqty{-xe^{-x}}_0^\infty - \int_0^\infty -e^{-x}\,dx\\
       &=0 + \bqty{-e^{-x}}_0^\infty\\
       &=1.
       \end{aligned}$$
       To finish, notice that $\log2<1$.

27. A pdf $f$ is called unimodal with mode $a$ if $y\leq x\leq a$ implies $f(y)\leq f(x)\leq f(a)$ and $a\leq x\leq y$ implies $f(a)\geq f(x)\geq f(y).$

    a. *Give an example of a unimodal pdf for which the mode is unique.*

       Any normal distribution would do.

    b. *Give an example of a unimodal pdf for which the mode is not unique.*

       You could take any uniform distribution here.

    c. *Show that if $f$ is symmetric about $a$ and unimodal, then $a$ is a mode.*

       Assume that $a$ were not a mode, so that there exists some $\epsilon\neq0$ such that $f(a+\epsilon)>f(a)$. But then $f(a-\epsilon)>f(a)$ as well, which contradicts unimodality.

    d. *Show that $f(x)=\1{x\geq0}e^{-x}$ is unimodal.*

       Indeed, it has mode $0$, since $0\leq 1$ and $f$ is strictly decreasing for $x>0$.

28. *Let $\mu_n$ denote the $n$th central moment of $X$. Then recall* $$\begin{aligned}
\qq*{the skewness} \alpha_3&=\frac{\mu_3}{(\mu_2)^{3/2}}\\
\qq*{the kurtosis} \alpha_4&=\frac{\mu_4}{\mu_2^2}.
\end{aligned}$$

    a. *Let the pdf $f$ be symmetric about $a$. Then $\alpha_3=0$.*

       It suffices to show that $\mu_3=0$. Indeed, let $Y=X-a$ so that $Y$ has pdf $f(y+a)$ and $EY^3=\mu_3$. But then
       $$\begin{aligned}
       EY^3
       &=\int_{-\infty}^\infty y^3 f(y+a)\,dy
       &=\int_0^\infty (-y^3 f(-y+a)+y^3 f(y+a))\,dy
       &=0.
       \end{aligned}$$

    b. *Calculate $\alpha_3$ for $f(x)=e^{-x}$, $x\geq0$, which is skewed to the right.*

       Above, we calculated $EX=1$. Also, we have
       $$\begin{aligned}
       EX^2
       &=\int_0^\infty x^2e^{-x}\,dx \\
       &=\bqty{-x^2e^{-x}}_0^\infty - \int_0^\infty -2x e^{-x}\,dx\\
       &=0 + 2EX\\
       &=2.
       \end{aligned}$$
       Then the variance is $$\mu_2=\var X=E[X^2]-E[X]^2=1.$$

       Finally,
       $$\begin{aligned}
       E[(X-1)^3]
       &= \int_0^\infty (x-1)^3 e^{-x}\,dx\\
       &= [-(x-1)^3e^{-x}]_0^\infty - \int_0^\infty -3(x-1)^2e^{-x}\,dx\\
       &= -1 + 3 \var X = 2.
       \end{aligned}$$
       Thus $$\alpha_3=2.$$

    c. *Calculate $\alpha_4$ for each of the following pdfs.*

       $N(0,1)$: Here $\mu_1=0$ and $\mu_2=1$. Then $\alpha_4=\mu_4$. Later, if we let $u=x^2$, $du=2x\,dx$, and
       $$\begin{aligned}
       \mu_4
       &=
       \frac{1}{\sqrt{2\pi}}\int_{-\infty}^\infty x^4 e^{-x^2/2}\,dx\\
       &=
       \sqrt{\frac{2}{\pi}}\int_{0}^\infty x^4 e^{-x^2/2}\,dx\\
       &=
       \frac{1}{\sqrt{2\pi}}\int_{0}^\infty u^{3/2} e^{-u/2}\,du\\
       &=\frac{1}{\sqrt{2\pi}} \pqty{
       \bqty{-2u^{3/2}e^{-u/2}}_0^\infty
       -
       \int_0^\infty -2\sqrt{u}e^{-u/2}\,du
       }\\
       &=\frac{1}{\sqrt{2\pi}} \int_0^\infty 2\frac{3}{2}\sqrt{u}e^{-u/2}\,du\\
       &=\frac{6}{\sqrt{2\pi}} \int_0^\infty x^2 e^{-x^2/2}\,du\\
       &=3\var X=3.
       \end{aligned}$$

       uniform$(-1,1)$: Here, $\mu_1=0$, and
       $$\mu_2=\int_{-1}^1 \frac{x^2}{2}\,dx=\bqty{\frac16 x^3}_{-1}^1=\frac13.$$
       Finally,
       $$\mu_4=\int_{-1}^1 \frac{x^4}{2}\,dx=\bqty{\frac{1}{10} x^5}_{-1}^1=\frac15,$$
       so that $\alpha_4=\frac{\mu_4}{\mu_2^2}=\frac95.$

       double-exponential: here, $\mu_1=0$, and
       $$\begin{aligned}
       \mu_2
       &=\int_{-\infty}^\infty \frac12 x^2 e^{-\abs{x}}\,dx\\
       &=\int_{0}^\infty x^2 e^{-x}\,dx\\
       =2,
       \end{aligned}$$
       where we have calculated the last integral above. Sadly, we didn't calculate the 4th central moment, but it's just $$\begin{aligned}
       \mu_4
       &=\int_{0}^\infty x^4 e^{-x}\,dx\\
       &=\bqty{-e^{-x}x^4}_0^\infty - \int_0^\infty -e^{-x}\,4x^3\,dx
       &= 0 + 4\pqty{\bqty{-e^{-x}x^3}_0^\infty - \int_0^\infty -e^{-x}\,3x^2\,dx}\\
       &= 12\int_0^\infty x^2 e^{-x}\,dx\\
       &= 24 \quad(=4!).
       \end{aligned}$$
       Thus the kurtosis is $\alpha_4=6.$

29. *Factorial moments. I'm just going to do Poisson because these binomial coefficients are killing me.*

    a. *Calculate the factorial moment $E[X(X-1)]$ for the Poisson.*

       Then $f(x)=\frac{\lambda^xe^{-\lambda}}{x!},$ so
       $$\begin{aligned}
       E[X(X-1)]
       &=e^{-\lambda}\sum_{x=0}^\infty \lambda^x \frac{x(x-1)}{x!}\\
       &=\lambda^2 \sum_{x=2}^\infty \frac{e^{-\lambda}\lambda^{x-2}}{(x-2)!}\\
       &=\lambda^2.
       \end{aligned}$$

    b. *Use that to find the variance.*

       Well, $E[X(X-1)]=EX^2-EX$, and we know that the Poisson has expectation $\lambda$ by a similar calculation. Thus $EX^2=\lambda^2+\lambda$. Finally,
       $$\var X=EX^2-E[X]^2=\lambda^2+\lambda-\lambda^2=\lambda.$$

30. *Find the mgf for the following pdfs.*

    a. $f(x)=\frac1c$, $0<x<c$.

       Here, $$\begin{aligned}
       Ee^{tX}
       &=\int_0^c \frac{e^{tx}}{c}\,dx\\
       &=\bqty{\frac{e^{tx}}{tc}}_0^c\\
       &=\frac{e^{tc}-1}{tc}.
       \end{aligned}$$

    b. $f(x)=\frac{2x}{c^2}$, $0<x<c$.

       $$\begin{aligned}
       Ee^{tX}
       &= \frac{2}{c^2} \int_0^c x\,e^{tx}\,dx\\
       &= \frac{2}{c^2} \pqty{
       \bqty{\frac1t x e^{tx}}_0^c - \int_0^c e^{tx}\,dx
       }\\
       &=
       \frac{2e^{ct}}{ct}
       -
       \frac{2}{c^2} \bqty{\frac1t e^{tx}}_0^c
       \\
       &=
       \frac{2e^{ct}}{ct}
       -
       \frac{2}{c^2t} (e^{ct}-1).
       \end{aligned}$$

    c. $f(x)=\frac{1}{2\beta}e^{-\abs{x-\alpha}/\beta}$, $-\infty<x<\infty$, $-\infty<\alpha<\infty$, $\beta>0$.

       To simplify a little, let $Y=X-\alpha$, so that $Y$ has pdf $g(y)=\frac{1}{2\beta}e^{-\abs{y}/\beta}.$ Then we can recover $$\begin{aligned}
       M_X(t)
       &=e^{-\alpha t} Ee^{tY}\\
       &=\frac{e^{-\alpha t}}{2\beta}
       \int_{-\infty}^\infty e^{ty}\,e^{-\abs{y}/\beta}\,dy.
       \end{aligned}$$
       Let's break this into two integrals,
       $$\begin{aligned}
       \int_{-\infty}^0 e^{(t+\frac1\beta)y}\,dy
       &=
       \bqty{\frac{e^{(t+\frac1\beta)y}}{t+\frac1\beta}}_{-\infty}^0
       =
       \frac{1}{t+\frac1\beta},
       \\
       \int_{0}^\infty e^{(t-\frac1\beta)y}\,dy
       &=
       \bqty{\frac{e^{(t-\frac1\beta)y}}{t-\frac1\beta}}_{0}^\infty
       =
       \frac{1}{t-\frac1\beta},
       \end{aligned}$$
       where we only have convergence for $t<\frac1\beta$. In the end,
       $$M_X(t)
       =\frac{e^{-\alpha t}}{2\beta} \bqty{\frac{1}{t+\frac1\beta}+\frac{1}{t-\frac1\beta}}
       =
       \frac{e^{-\alpha t}}{\beta} \frac{1}{t^2-\beta^{-2}}.$$

31. *Does a distribution exist for which $M_X(t)=t/(1-t)$, $\abs{t}<1$?*

    No, because what random variable satisfies $Ee^{0X}=0$?

32. *Let $S(t)=\log M_X(t)$. Then $S'(0)=EX$ and $S''(0)=\var X$.*

    Indeed,$$\begin{aligned}
    \eval{\dv{t}S(t)}_{t=0} = \eval{\frac{1}{M_X(t)}M_X'(t)}_{t=0} = 1\cdot M_X'(0)=EX,
    \end{aligned}$$
    and
    $$\begin{aligned}
    \eval{\dv[2]{t} S(t)}_{t=0}
    &=
    \eval{\dv{t} \frac{M_X'(t)}{M_X(t)}}_{t=0}\\
    &=
    \frac{M_X(0)M_X''(0)-M_X'(0)^2}{M_X(0)^2}\\
    &=
    E[X^2]-E[X]^2.
    \end{aligned}$$

33. *Verify the following mgfs and use them to calculate $EX$ and $\var X$.*

    a. Poisson$(\lambda)$.

       Here, $$\begin{aligned}
       M_X(t)
       &= \sum_{x=0}^\infty e^{tx}\frac{e^{-\lambda}\lambda^x}{x!} \\
       &= e^{e^t\lambda-\lambda}\sum_{x=0}^\infty \frac{e^{-e^t\lambda}(e^t\lambda)^x}{x!} \\
       &=e^{\lambda(e^t-1)}.
       \end{aligned}$$

       By the last exercise, we can consider $S_X(t)=\log M_X(t)=\lambda(e^t-1)$. Then, interestingly, $S_X^{(n)}(t)=\lambda e^t$ for all $n>0$, so that $$EX=S_X'(0)=\lambda,$$ and $$\var X=S_X''(0)=\lambda.$$

    b. Geometric with $x$ failures.

       Using the geometric sum formula $\sum_{i=0}^\infty r^i=\frac{1}{1-r}$, we have $$\begin{aligned}
       M_X(t)
       &=\sum_{x=0}^\infty e^{tx} p (1-p)^x\\
       &=p \sum_{x=0}^\infty (e^t(1-p))^x\\
       &=\frac{p}{1-e^t(1-p)}.
       \end{aligned}$$
       Then, letting $q=1-p$ to clean it up, $$\begin{aligned}
       EX&=\eval{M_X'(t)}_{t=0}=\eval{\frac{pqe^t}{(1-e^tq)^2}}_{t=0}=\frac{1-p}{p},\\
       \var X
       &=\eval{M_X''(t)}_{t=0}\\
       &=p(1-p)\eval{(1-qe^t)^2e^t + 2qe^{2t}(1-qe^t){(1-qe^t)^4}}_{t=0}\\
       &=p(1-p)\frac{p^2+2p(1-p)}{p^4}\\
       &=\frac{1-p}{p^2}.
       \end{aligned}$$

    c. Gaussian $N(\mu,\sigma^2)$.

       Let's start with $N(0,1)$ and use the affine formula to finish. Completing the square in the exponent, $$\begin{aligned}
       M_X(t)
       &= \int_{-\infty}^\infty e^{tx}\frac{1}{\sqrt{2\pi}}e^{-x^2/2}\,dx\\
       &= \int_{-\infty}^\infty \frac{1}{\sqrt{2\pi}} e^{-(x^2 + 2tx)/2}\,dx\\
       &= e^{-t^2/2} \int_{-\infty}^\infty \frac{1}{\sqrt{2\pi}} e^{-(x+t)^2/2}\,dx\\
       &= e^{-t^2/2}.
       \end{aligned}$$
       Then
       $$M_{\sigma X + \mu}=e^{\mu t} M_X(\sigma t)=e^{\mu t + \sigma^2 t^2/2}.$$

34. *A distribution cannot be determined by a finite collection of moments. Let $X\thicksim N(0,1)$ and $Y$ be the discrete random variable with $P(Y=\sqrt{3})=P(Y=-\sqrt{3})=\frac16$ and $P(Y=0)=\frac23$. Then $EX^r=EY^r$ for $r=1,2,3,4,5$.*

    Indeed, clearly the odd moments are all 0 since these distributions are symmetric. So, it suffices to compute the moments for $r=2,4$. As we've computed previously, $EX^2=1$ and $EX^4=3$.

    For $Y$, we have $\frac{2\cdot3}{6}=1$ and $\frac{2\cdot 9}{6}=3$.

35. *I'm including (a) of this problem below with 36.*

36. *Let $X$ be standard lognormal, so that it has pdf*$$f(x)=\frac{1}{\sqrt{2\pi}x}e^{-\log(x)^2/2}.$$*Show that $EX^r=e^{r^2/2}$, so that all moments exists, and show that the mgf does not exist.*

    Indeed, make the change of variables $y=\log x$ (so that $x^r=e^{ry}$) and $dy=\frac{dx}{x}$. Then, $$\begin{aligned}
    EX^r
    &= \int_0^\infty \frac{x^{r}}{\sqrt{2\pi}x} e^{-\log(x)^2/2}\,dx\\
    &= \int_0^\infty \frac{1}{\sqrt{2\pi}} e^{-y^2/2+ry}\,dy\\
    &= e^{-r^2/2}\int_0^\infty \frac{1}{\sqrt{2\pi}} e^{-(y^2-2ry+r^2)/2}\,dy\\
    &= e^{-r^2/2},
    \end{aligned}$$
    where we recognized the $N(r,1)$ pdf in there. For the mgf, it suffices to show that the integral $$\int_0^\infty \frac{e^{tx}}{x}e^{-\log(x)^2/2}\,dx$$ does not converge for any $t\neq 0$, since the mgf needs to exist in a neighborhood of 0. For this, it suffices to show that the integrand does not converge to 0. Indeed, $$\begin{aligned}
    \lim_{x\to\infty}\frac{e^{tx}}{xe^{\log(x)^2/2}}
    &=\lim_{x\to\infty}\frac{te^{tx}}{e^{\log(x)^2/2}+\frac12e^{\log(x)^2/2}}\\
    &=2\lim_{x\to\infty}\frac{te^{tx}}{e^{-\log(x)^2/2}}\\
    &=t\frac23\lim_{x\to\infty}e^{tx-\log(x)^2/2}\\
    &=t\frac23\exp(\lim tx-\log(x)^2/2)=\infty.
    \end{aligned}$$

<!-- 37 -->

38. *Let $X$ have the negative binomial distribution with pmf* $$f(x)=\binom{r+x-1}{x} p^r (1-p)^x,$$ *where $x=0,1,2,\dots$, $0<p<1$, and $r$ is the number of successful outcomes.*

    a. *Calculate $M_X(t)$.*

       $$\begin{aligned}
       Ee^{tX}
       &= \sum_{x=0}^\infty e^{tx} \binom{r+x-1}p^r(1-p)^x \\
       &= \frac{p^r}{(1-e^t+pe^{t})^r}\sum_{x=0}^\infty \binom{r+x-1}(1-e^t+pe^{t})^r(e^t(1-p))^x \\
       &= \frac{p^r}{(1-e^t+pe^{t})^r}.
       \end{aligned}$$

    b. *Let $Y=2pX$. Then the mgf of $Y$ converges to* $$\pqty{\frac{1}{1-2t}}^r$$ *as $p\to0$, which is the mgf of the $\chi^2_{2r}$ distribution.*

       Indeed, if $Y=2pX$, then $$M_Y(t)=M_X(2pt)=\pqty{\frac{p}{1-e^{2pt}+pe^{2pt}}}^r.$$
       In the limit as $p\to0$, we can pass inside the $r$th power and apply L'Hôpital to arrive at
       $$\begin{aligned}
       \lim_{p\to\infty}\frac{p}{1-e^{2pt}+pe^{2pt}}
       =
       \lim_{p\to\infty}\frac{1}{-2te^{2pt}+e^{2pt}+2p^2e^{2pt}}
       =\frac{1}{1-2t},
       \end{aligned}$$
       which shows the result after restoring the $r$th power.
