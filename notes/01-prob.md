# Probability Theory

Fix a sample space $S$ and for all $A\subset S$ define $A^C=S\setminus A$.


## Set Theory

Thm (Set arithmetic).
 ~ Set intersection $\cup$ and union $\cap$ are commutative, associative, and distributive, i.e.
 ~ - (Commutativity)\
   $$\begin{aligned}
   A\cup B&=B\cup A,\\
   A\cap B&=B\cap A.
   \end{aligned}$$
 ~ - (Associativity)
   $$\begin{aligned}
   A\cup(B\cup C)&=(A\cup B)\cup C,\\
   A\cap(B\cap C)&=(A\cap B)\cap C,\\
   \end{aligned}$$
 ~ - (Distributivity)
   $$\begin{aligned}
   A\cup(B\cap C)&=(A\cup B)\cap(A\cup C),\\
   A\cap(B\cup C)&=(A\cap B)\cup(A\cap C),\\
   \end{aligned}$$
 ~ - (De Morgan)
   $$\begin{aligned}
   (A\cup B)^C&=A^C\cap B^C,\\
   (A\cap B)^C&=A^C\cup B^C.
   \end{aligned}$$

De Morgan's laws extend to arbitrary unions and intersections. Actually, by definition of set membership, all of the above also extend to arbitrary unions and intersections.

Def (Disjoint events, partition).
 ~ $A_1,A_2,\dots$ are *pairwise disjoint* if for all $i\ne j$, $A_i\cap A_j=\nil$. If $\{A_i\}_{i\in I}$ are pairwise disjoint and $\bigcup_{i\in I} A_i=S$, then $\{A_i\}$ are said to form a *partition* of $S$.


## Basics of Probability Theory

Def (σ-algebra).
 ~ A collection $\calB$ of subsets of $S$ is called a *$\sigma$-algebra* if
 ~ a. $\nil\in\calB$,
 ~ b. Closed under complement: $A\in\calB\implies A^C\in\calB$,
 ~ c. Closed under countable union: $A_1,A_2,\dots\in\calB\implies\bigcup_{i=1}^\infty A_i\in\calB$.

Def (Borel algebra).
 ~ The Borel algebra is the smallest $\sigma$-algebra containing all open sets. We'll use $\calB_{\bbR}$ to denote the Borel algebra on the reals.

Note that (a.,b.)$\implies S=\nil^C\in\calB$, and by De Morgan and (c.), $\calB$ is also closed under countable intersections. A set $S$ together with a $\sigma$-algebra $\calB$ is called a *measurable space*.

Def (Probability measure).
 ~ Given a measurable space $(S,\calB)$, a *probability measure* is a set function $P:\calB\to\bbR$ such that
 ~ 1. $P(A)\geq0$ for all $A$,
 ~ 2. $P(S)=1$,
 ~ 3. For $A_1,A_2,\dots$ pairwise disjoint, $P(\bigcup_1^\infty A_i)=\sum_1^\infty P(A_i)$.

Axiom of Continuity.
 ~ If $A_1\supset A_2\supset\dots$ and $\bigcap_n A_n=\nil$, then $P(A_n)\to0$.

As shown in an exercise, continuity combined with the finite union property imply the countable union property.

Proposition (Basic properties of probability measures).
 ~ Let $(S,\calB,P)$ be a probability space and $A$ a measurable set. Then,
 ~ a. $P(\nil)=0$,
 ~ b. $P(A)\leq1$,
 ~ c. $P(A^C)=1-P(A)$,
 ~ d. $P(B\cap A^C)=P(B)-P(B\cap A)$,
 ~ e. $P(A\cup B)=P(A)+P(B)-P(A\cap B)$, which weakens to $\mbox{P(A\cap B)\geq P(A)+P(B)-1}$ (Bonferroni),
 ~ f. $A\subset B\implies P(A)\leq P(B)$.
 ~ Further,
 ~ g. $P(A)=\sum_{i=1}^\infty P(A\cap C_i)$ for any partition $\{C_i\}$.
 ~ h. $P(\bigcup_1^\infty A_i)\leq \sum_{i=1}^\infty P(A_i)$ for any $\{A_i\}\subset\calB$ (Boole).

*Note* (On counting).

 - Recall that the number of independent choices from $m$ collections of sizes $n_1,\dots,n_m$ is $n_1\times\dots\times n_m$.
 - How many ways are there to sample $k$ objects from a collection of size $n$? Well, it depends on the sampling method:
    - *Ordered, with replacement*: $n^k$.
    - *Ordered, without replacement*: $$\frac{n!}{(n-k)!}=n\times(n-1)\times\dots\times(n-k+1).$$
    - *Unordered, without replacement*: $$\binom{n}{k}=\frac{n!}{k!(n-k)!}=\frac{n}{k}\times\frac{n-1}{k-1}\times\dots\times\frac{n-k+1}{1}.$$
    - *Unordered, with replacement*, aka *stars and bars*: since we're putting $k$ balls into $n$ bins, we are equivalently arranging $n-1$ bars and $k$ stars. So, there are $k+n-1$ total slots, and we want to choose $k$ of them for the stars, putting us in the previous case: $$\frac{(k + n - 1)!}{k!(n-1)!}=\binom{k+n-1}{k}.$$


## Conditional Probability and Independence

Def (Conditional probability).
 ~ Let $A,B$ be measurable with $P(B)>0$. Then the *conditional probability* $P(A\mid B)$ is given by $$P(A\mid B)=\frac{P(A\cap B)}{P(B)}.$$

Theorem (Bayes' rule).
 ~ For $B$ measurable and $A_1,A_2,\dots$ a partition of the sample space, we have $$P(A_i\mid B)=\frac{P(B\mid A_i)P(A_i)}{\sum_{j=1}^\infty P(B\mid A_j)P(A_j)},$$ and in particular for any measurable $A$, $$P(A\mid B)=\frac{P(B\mid A)P(A)}{P(B)}.$$

To obtain the latter, take $A=\bigcup_{i=1}^\infty A_i$.

Prop (Chain rule).
 ~ For any events $A_1,\dots,A_n$,
 $$\begin{aligned}
 P(A_n\cap\dots\cap A_1)
 &=P(A_n\mid A_{n-1}\cap\dots\cap A_1)\times\dots\times P(A_2\mid A_1)P(A_1)\\
 &=\prod_{k=1}^n P\bigg(A_k\mid \bigcap_{j=1}^{k-1} A_j\bigg).
 \end{aligned}$$

This follows by straight induction from $P(A\cap B)=P(B\mid A)P(A)$.

Def (Independence).
 ~ Two events $A,B$ are said to be *independent*, written $A\ind B$, if $$P(A\cap B)=P(A)P(B).$$

*Note:* If $A\ind B$, then also $A\ind B^C$, $A^C\ind B$, $A^C\ind B^C$.

Def (Mutual independence).
 ~ A collection of events $\{A_i\}_{i\in I}$ is said to be mutually independent if for all $J\subset I$, $$P\bigg(\bigcap_{j\in J}A_j\bigg)=\prod_{j\in J}P(A_j).$$


## Random Variables

Def (Measurable function).
 ~ Let $(S,\calA)$, $(T,\calB)$ be measurable spaces and $f:A\to B$. Then we say that $f$ is measurable if $f^{-1}(B)\in\calA$ for all $B\in\calB$, i.e. preimages of measurable sets are measurable.

*Note:* The book ignores the measurability of random variables, but I wanted to write it down.

Def (Random variable).
 ~ A random variable is a measurable function $X:(S,\calA)\to(\bbR,\calB_{\bbR})$.

Def (Pushforward, induced probability measure).
 ~ Let $X$ be a random variable with range $\calX=X(S)$. Then $X$ induces a *pushforward* probability measure on $\calX$, $P_X=P\circ X^{-1}$, i.e. $$P_X(E)=P(X^{-1}(E)).$$This will most often be written as $P(X\in E)$.


## Distribution Functions

Def (Cumulative distribution function).
 ~ The *cumulative distribution function* or *cdf* of a random variable $X$ is $$F_X(x)=P(X\leq x).$$

*Note:* In the book, they have (to me) some problems with notation where $F_X(x)=P_X(X\leq x)$. This does not make sense to me, since $X\leq x$ lives in the sample space and is not a subset of $\bbR$ under any reasonable interpretation.

Def (cádlág).
 ~ Continuous from the right, with limits existing from the left.

Theorem (Properties of the *cdf*.)
 ~ $F(x)$ is a cdf if and only if the following hold
 ~ a. $\lim_{x\to-\infty}F(x)=0$ and $\lim_{x\to\infty}F(x)=1$,
 ~ b. $F(x)$ is nondecreasing,
 ~ c. $F(x)$ is right continuous.

Note that (b.) and (c.) imply cádlág. Actually that's not really important at this point?

*Note:* We say that a random variable with a continuous cdf is *continuous* and that one with a step function cdf is *discrete*.

Def (Identically distributed).
 ~ Random variables $X,Y$ are *identically distributed* if $P_X=P_Y$, i.e. if for all $A\in\calB_{\bbR}$, $P(X\in A)=P(Y\in A)$.

Def (pdf, pmf).
 ~ The definition they give is vague. But the point is these are positive functions that sum to 1 over the range of the random variable.


## Important examples

 - Binomial pmf: If $X\thicksim\Bin(n,p)$, then $$P(X=k)=\binom{n}{k}p^k(1-p)^{n-k}.$$

