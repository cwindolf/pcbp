# Probability Theory: Exercises

 1. *For each of the following experiments, describe the sample space.*
    a. *Toss a coin four times.*

      $\{H,T\}^4$.

    b. *Count the number of insect-damaged leaves on a plant.*

       $\{0,\dots,N\}$, where $N$ is the number of leaves.

    c. *Measure the lifetime (in hours) of a particular brand of light bulb.*

       Assuming we only measure discrete hours, $\bbZ_{\geq0}$.

    d. *Record the weights of 10-day-old rats.*

       $\bbR_{\geq0}$?

    e. *Observe the proportion of defectives in a shipment of electronic components.*

       $[0,1]$.

 2. *Verify the following identities.*

    a. $A\setminus B = A\setminus(A\cap B)=A\cap B^C$.

       These kinds of basic set theory questions are always hilarious, because the expected proof always assumes the logical version of the same claim, and nobody knows whether it would even help to learn how to prove it from "first principles".

       Anyway, by definition,
       $$\begin{aligned}
       A\setminus B
       &=\{x:x\in A\text{ and }x\notin B\}\\
       &=A\cap B^C.
       \end{aligned}$$
       Also, $$A\cap B^C=A\cap(A^C\cup B^C)= A\cap(A\cap B)^C=A\setminus (A\cap B).$$

    b. $B=(B\cap A)\cup B(\cap A^C)$.

       By distributive property, $$B=B\cap S=B\cap(A\cup A^C)=(B\cap A)\cup B(\cap A^C).$$

    c. $B\setminus A=B\cap A^C$. Yikes, this is shown in (a.)?

    d. $A\cup B=A\cup(B\cap A^C)$.

       Indeed,
       $$\begin{aligned}
       A\cup B
       &=\{x\in S: x\in A\text{ or }x\in B\}\\
       &=\{x\in S: x\in A\text{ or }(x \notin A \text{ and }x\in B)\}\\
       &=A\cup(B\cap A^C).
       \end{aligned}$$

 3. *Finish the proof of Theorem 1.1.4. For any events $A,B,C$ defined on a sample space $S$, show that: (a) set union and intersection are commutative, (b) associative, and (c) obey De Morgan's laws.*

    These follow directly from commutativity, associativity, and the De Morgan's laws of logical and and or, which can be shown by looking at truth tables.

 4. *For events $A$ and $B$, find formulas for the following events in terms of $P(A)$, $P(B)$, and $P(A\cap B)$.

    a. *either $A$ or $B$ or both:* This is inclusion-exclusion: $$P(A\cup B)=P(A)+P(B)-P(A\cap B).$$

    b. *either $A$ or $B$ but not both:* $$P(A\cup B)=P(A\cup B)-P(A\cap B)=P(A)+P(B)-2P(A\cap B).$$

    c. *at least one of $A$ or $B$:* This is (a.), no?

    b. *at most one of $A$ or $B$:* $P(S\setminus (A\cup B)) + P(A\cup B)-P(A\cap B)$.

 5. *(Paraphrasing, and excuse the bad biology here.) One third of twins are identical, the rest fraternal. Identical twins are same sex, male and female equally likely. For fraternal twins, the pairs are equally likely, so that MM and FF occur w.p. 1/4 and MF w.p. 1/2. Finally, 1 in 90 births yields twins. Let*$$\begin{aligned}A&=\{\text{birth results in FF}\}\\B&=\{\text{birth results in identical}\}\\C&=\{\text{birth results in twins}\}.\end{aligned}.$$

    a. *State, in words, the event $A\cap B\cap C$:* A U.S. birth results in identical twin females.

    b. *Find $P(A\cap B\cap C)$:*

       Well, since $B\subset C$, and by the chain rule,
       $$\begin{aligned}
       P(A\cap B\cap C)
       &=P(A\mid B \cap C) P(B\mid C) P(C)\\
       &=P(A\mid B) P(B\mid C) P(C) \\
       &= \frac{1}{4}\,frac{1}{3}\,\frac{1}{90}\\
       &=\frac{1}{1080}.
       \end{aligned}$$

 6. *Two pennies, one with $P(H)=u$ and the other with $P(H)=w$ are tossed independently. Let $p_i$ be the probability of the event that $i$ heads occur. Can $u$ and $w$ be chosen such that $p_0=p_1=p_2$.*

    Well, we have:
    $$\begin{aligned}
    p_0 &= (1 - u) + (1 - w) - (1-u)(1-w) = 1 - uw,\\
    p_1 &= u(1-w) + w(1-u)=u + w,\\
    p_2 &= uw.
    \end{aligned}$$
    Then we need $$1-uw=uw\implies uw=\frac{1}{2}=u+w.$$ Substituting for $u=\frac{1}{2}-w$, we have $$uw=w(\tfrac{1}{2}-w)=\frac{w}{2}-w^2=\frac{1}{2},$$ which has no real solutions.

 7. This question recalls an example with a dartboard that's hit w.p. 1, and where each of its five rings is hit w.p. proportional to its area, so that if we write $P(i\text{ points scored})=p_i$, then $$p_i=\frac{(6-i)^2 - (5-i)^2}{5^2}.$$ Now, we imagine that the dartboard is mounted on a wall that's hit w.p. 1, with area $A$ (seems like $A\geq25\pi$).

    a. *Find the new point probabilities, call them $p_i'$.* Well,
    $$p_i'=\frac{\pi(6-i)^2 - \pi(5-i)^2}{A}$$
    for $1\leq i\leq5$, with $p_0'=1-25\pi/A$.

    b. *Show that* $P(i\text{ points on new board}\mid\text{board hit})=p_i$. Indeed,$$\begin{aligned}
    P(i\text{ points on new board}\mid\text{board hit})
    &=\frac{p_i'}{P(\text{board hit})}\\
    &=p_i' \frac{A}{25\pi}\\
    &=p_i.
    \end{aligned}$$

<!-- skip 8-10 -->

 11. Let $S$ be a sample space.

     a. Show that $\{\nil,S\}$ is a $\sigma$-algebra. It remains to check that this is closed under countable unions, but it's even preserved under those.

     b. Show that $2^S$ is a $\sigma$-algebra. Well, $\nil\subset S$, and complements or even arbitrary unions of subsets of $S$ cannot escape $S$.

     c. Let $\calA,\calB$ be $\sigma$-algebras over $S$. Then they both contain $\nil$ and $S$. Also, if $A$ is in their intersection, then $A^C$ must have also been in both of them. Same goes for (even arbitrary) unions.

 12. *Together, finite additivity and continuity imply countable additivity.*

     a. *Claim:* Countable additivity implies finite additivity. Indeed, just take $A_{n+1},A_{n+2},\dots$ to be $\nil$.

     b. *Claim:* Finite additivity and continuity imply countable additivity.

        Let $A_1,A_2,\dots$ be disjoint elements of a $\sigma$-algebra $\calF$, let $A=\bigcup_i A_i$, and let $B_n=\bigcup_{i=n}^\infty A_i$. By disjointness, $\bigcap_n B_n=\nil$, so that by continuity $P(B_n)\to0$.

        But by finite additivity, $$P(A)=\sum_{i=1}^{n-1} P(A_i) + P(B_n)$$ for all $n$. Since $P(B_n)\to0$, $$\lim_{n\to\infty}\sum_{i=1}^{n-1} P(A_i)=P(A).$$

        (The odd thing to me is that we are allowed to assume $A\in\calF$: I would be more convinced of the inevitability of countable additivity if we had shown first that the finite union property for $\sigma$-algebras together with some continuity property, say being closed under countable intersections for sequences of nested sets. However, that would probably be strong enough to prove the countable union property due to a $\pi$-$\lambda$ scenario.)

 13. *If $P(A)=\frac{1}{3}$ and $P(B^C)=\frac{1}{4}$, can $A$ and $B$ be disjoint?*

     Note $P(B)=\frac{3}{4}$. But by Bonferroni, $$P(A\cap B)=P(A)+P(B)-1=\frac{1}{12}.$$Since $P(\nil)=0$, $A\cap B\neq\nil$.

 14. *Let $S$ be a finite set of $n$ elements. Then $\abs{2^S}=2^n$.*

     Indeed, we can establish a bijection $C$ between $2^S$ and $\{0,\dots,2^{n-1}\}$ as follows. Assume w.l.o.g. $S=\{1,\dots,n\}$, and for any $A\subset S$ take $C(A)$ to be the number whose $i$th binary bit is $\1{i\in A}$.

 15. Finishing the proof of Thm. 1.2.14 just takes a simple induction: consider the first $i$ tasks as one task, and use the $k=2$ case to add the $i+1$th task.

<!-- skip 16 and 17 -->

 18. *Place $n$ balls at random in $n$ cells. What is the probability that exactly one cell remains empty?*

     There are $n^n$ total arrangements of balls, $(n-1)^n$ with the first cell empty, and $n(n-1)^n$ with at least one cell empty. But we need to ensure that the rest of the cells are not empty.

     That implies that $n-2$ cells have 1 ball, 1 cell has 2 balls, and the remaining has nothing. Let the first cell be empty, which happens in 1 way. There are $\binom{n}{2}$ ways to fill the second cell with two balls, and after that we must place the remaining $n-2$ balls in $n-2$ slots, which can be done in $(n-2)!$ ways.

     Finally, we could have chosen any of the $n$ slots to be empty, and any of the remaining $n-1$ slots to have 2 balls. So we end up with
     $$\frac{n\cdot(n-1)\cdot\binom{n}{2}\cdot(n-2)!}{n^n}=\binom{n}{2}\frac{n!}{n^n}.$$

 19. a. A function of three variables can have up to $$\binom{4+3-1}{4}$$ fourth partial derivatives.

     b. Why? Well, to see how many $r$th order derivatives there are of a function with $n$ variables, note that we are just putting $r$ balls into $n$ bins, or equivalently ordering $r$ bars and $n-1$ stars. So we just need to choose $r$ of the $r+n-1$ locations for bars, which can be done $\binom{r+n-1}{r}$ ways.

 20. *12 phone calls come in at random on the 7 days of the week. What is the probability that no day goes by without a phone call?*

     First, we must dispel the idea that the answer can be computed in an unordered way. The ordering of the number of phone calls per day is important, since for example there are a lot more ways to get $(2, 2, 2, 2, 2, 1, 1)$ calls than there are to get $(12, 0, 0, 0, 0, 0, 0)$ calls -- we would not want to undercount by only observing the number of calls per day. I arrived at a wrong answer using unordered counting, and thankfully there was an answer here to correct me.

     In other words, we cannot place 12 things into 7 slots, since we will only count each arrangement instead of all of the ways it arises, decreasing its weight.

     Rather, we choose 12 samples from a population of 7 with replacement and consider whether all 7 show up. That way, all of the different ways that calls can be assigned to days will be counted, rather than just counting the number of calls per day.

     Indeed, $7^12$ 12 letter words can be made on 7 symbols. Some of those only include 6 or fewer symbols, so we need to subtract the count of words that include at most 6 of the 7 symbols. $\binom{7}{6}6^12$ will overcount those, since the each choice of 6 letters will double-count the words with 5 letters that can be made from those, so that all of the 5 letter words are counted twice, and so on for fewer letters, leading to the inclusion-exclusion $${\textstyle7^{12} - \binom{7}{6} 6^{12} + \binom{7}{5} 5^{12} - \binom{7}{4} 4^{12} + \binom{7}{3} 3^{12} - \binom{7}{2} 2^{12} + \binom{7}{1} 1^{12} = 3162075840.}$$

     In the end, we have $3162075840/7^12\approx0.22845$.

 21. *A closet contains $n$ pairs of shoes. If $2r<n$ shoes are chosen at random, what is the probability that there will be no matching pair in the sample?*

     First of all, there are $\binom{2n}{2r}$ total ways to choose $2r$ shoes. How many ways are there to choose without picking a pair? Well, we have to choose $2r$ of the $n$ pairs, and then for each pair we pick one of the two shoes, for $\binom{n}{2r} 2^{2r}$ ways.


<!-- skip 22, 23 -->

 24. b. *Two players A and B flip alternately and independently flip a biased coin, first player to obtain a heads wins, A flips first. What is the probability that $A$ wins?

        A wins on the first turn w.p. $p$. $A$ wins on the second turn with probability $p(1-p)^2$, third turn w.p. $p(1-p)^4$, etc.

        So, $A$ wins with probability following the geometric series
        $$\begin{aligned}
        \sum_{k=0}^\infty p(1-p)^{2k}
        &=p\sum_{k=0}^\infty((1-p)^2)^k\\
        &=\frac{p}{1-(1-p)^2}\\
        &=\frac{p}{1-(1-2p+p^2)}=\frac{1}{2-p}.
        \end{aligned}$$

     c. *Show that A wins with probability > 0.5 for all $p$.*

        Clearly the probability above is minimized at $p=0$.

<!-- skip 25 -->

 26. *A fair die is cast until a 6 appears. What is the probability that it must be cast more than five times?*

     This is $1 - \sum_{i=0}^5 \frac{1}{6^i}$. I didn't have the formula for partial geometric series ready, but it turns out to be $\frac{1-1/6^n}{1-1/6}$, which makes sense.

 27. *Verify the following identities for $n\geq 2$.*

     a. $\sum_{k=0}^n (-1)^k\binom{n}{k}=0$.

        Indeed, for even $n$, this is clear since $\binom{n}{k}=\binom{n}{n-k}$.

        For odd $n$, let $m$ such that $2m+1=n$. Then the identity is
        $$\sum_{k=0}^{m} \binom{n}{2k} = \sum_{k=0}^m \binom{n}{2k+1}.$$
        But $$\binom{n}{2k}=\binom{n}{n-2k}=\binom{n}{2m+1-2k}=\binom{n}{2(m-k)+1},$$
        so that all the terms on the LHS appear on the RHS.

     b. Ibid.

     c. $\sum_{k=1}^n k\binom{n}{k}=n 2^{n-1}$.

        $$\begin{aligned}
        \sum_{k=1}^n k\binom{n}{k}
        &=\sum_{k=1}^n k\frac{n!}{k!(n-k)!}\\
        &=\sum_{k=1}^n n\frac{(n-1)!}{(k-1)!((n-1)-(k-1))!}\\
        &= n \sum_{k=0}^{n-1} \binom{n-1}{k-1},
        \end{aligned}$$
        and the result follows since
        $$\sum_{k=0}^{n-1} \binom{n-1}{k-1}=2^{n-1},$$
        which is clear, since on the left we count the number of possible binary sequences of length $n-1$, which is also clearly counted on the right.


 28. *Prove a weakening of Stirling's formula $n!\approx\sqrt{2\pi} n^{n+1/2}e^{-n}$, namely that* $$\lim_{n\to\infty}\frac{n!}{n^{n+1/2}e^{-n}}$$ *is some constant.*

     Indeed, following the hint, we note that since $\log$ is monotonically increasing, and since the average of a monotonic function on some interval has to be strictly greater than its right endpoint and less than its left endpoint, for all $k=1,2,\dots$ we have $$\int_{k-1}^k\log x\,dx<\log k<\int_k^{k+1}\log x\,dx.$$ Since $$\log n! = \sum_{i=1}^n\log i,$$ it follows that $$\begin{aligned}
     \int_0^n \log x\,dx &< \log n! < \int_1^{n+1}\log x\,dx\\
     n\log n - n &< \log n! < (n+1)\log(n+1)-n\\
     n\log n - n &< \log n! < (n+1)\log(n+1)-n\\
     \end{aligned}$$
     The average of LHS and RHS is $\approx (n+1/2)\log n - n$. At this point, we have good reason to believe that $\log n! - [(n+1/2)\log n - n]$ will converge to something, which is nice because we are interested in the limit of the exponential of this sequence. I'm going to leave this incomplete, though.


<!-- 29, 30, 31, 32 -->

 33. *5% of men and 25% of women are colorblind, and the world is half male and half female. What is $P(\text{male}\mid\text{colorblind})$?*

     From this, we can see that $P(\text{colorblind})=0.15$. Then, by Bayes',
     $$\begin{aligned}
     P(\text{male}\mid\text{colorblind})
     &= \frac{P(\text{colorblind}\mid\text{male})P(\text{male})}{P(\text{colorblind})}\\
     &= \frac{0.05\cdot0.5}{0.15}=\frac16.
     \end{aligned}$$
     In hindsight, since $P(\text{male})=P(\text{female})$, we could have just looked at the ratios of the likelihoods.

 34. *(Skipping the rodents.) We have two populations $B,B,G$ and $B,B,B,G,G$. Let $X$ be chosen by first picking a population at random and then picking an element at random from that population.*

     a. $P(X=B)=\frac12\frac23+\frac12\frac35=\frac{19}{30}.$

     b. $$P(\text{pop. 1}\mid X=B)=\frac{P(X=B\mid P1)P(P1)}{P(X=B)}=\frac{\frac23\frac12}{\frac{19}{30}}=\frac{10}{19}.$$

 35. *Let $(\Omega,\calF,P)$ be a probability space and $B\in\calF$ a set with $P(B)>0$. Then $P(\cdot\mid B)$ is a probability measure.*

     First, let's show that $\calG=\{A\cap B : A\in\calF\}$ is a $\sigma$-algebra on the sample space $B$. Clearly $\nil\in\calG$ since $\nil\in\calF$. Further, if $A\in\calG$, then $A\in\calF$ and $B\setminus A=B\cap A^C$ is clearly in $\calF$ too, and since it is a subset of $B$ it also lives in $\calG$. Finally, since one cannot escape $B$ with countable unions, $\calG$ is also closed under countable union.

     Clearly $P(B\mid B)=1$ and nonnegativity is preserved. Finally, intersection with $B$ preserves disjointness.

 36. *Flip 10 coins with probability 1/5 of landing heads. What is the probability of at least 2 heads? What is the probability of at least two heads given at least one?*

     Well, the probability of at least one heads is $$1-(\tfrac45)^10,$$two heads is $$1-(\tfrac45)^10-10\frac15(\tfrac45)^9,$$and the conditional probability is their quotient.


<!-- 37 -->

 38. *If $P(B)=1$, then $P(A\mid B)=P(A)$ for any $A$.*

     Indeed, write $A$ as the disjoint union $A=(A\cap B)\cup(A\cap B^C)$, so that $$P(A)=P(A\cap B) + P(A\cap B^C).$$ By definition, $$P(A\mid B)=\frac{P(A\cap B)}{P(B)}=P(A\cap B).$$Now, assume for the sake of contradiction that $P(A\mid B)\equiv P(A\cap B)\neq P(A)$. By the first equation and positivity of measure, that would imply $P(A\cap B^C)>0$. But again by disjoint additivity, that would imply $P(B^C)>0$, which contradicts $$1=P(\Omega)=P(B)+P(B^C).$$

     *(b) and (c) are trivial. Instead of (d) as written, prove the chain rule for conditional probability: for any $n$ sets $A_1,\dots,A_n$ of positive measure,* $$P(A_1\cap\dotsm\cap A_n)=P(A_n\mid A_{n-1}\cap\dotsm\cap A_1)\dots P(A_3\mid A_2\cap A_1)P(A_2\mid A_1)P(A_1).$$

     The $n=2$ case follows from the definition, and is the inductive step as well.


 39. *Two events $A$ and $B$ can not be both mutually exclusive and independent.*

     (Note that if  $P(A)$ or $P(B)$ is 0, sure, the statement can vacuously hold.)

     Let $P(A),P(B)>0$. Then if $A\cap B=\nil$, clearly $P(A\cap B)\neq P(A)P(B)$. On the other hand, if $P(A\cap B)=P(A)P(B)$, then clearly the intersection cannot be empty.

<!-- 40 -->


 41. *Consider a source that sends . and - in proportion 3:4, where errors can cause . to be received as - w.p. $\frac14$ and - to be received as . w.p. $\frac13$.*

     a. *What is the probability that - was sent given that it was received?*

        Well, we have $P(-\text{ sent})=\frac47$, $P(-\text{ recd}\mid-\text{ sent})=\frac23$, and
        $$P(-\text{ recd})=\frac47\frac23+\frac37\frac14=\frac{41}{84}.$$

        Then,
        $$\begin{aligned}
        P(-\text{ sent}\mid-\text{ recd})
        &=\frac{P(-\text{ recd}\mid-\text{ sent})P(-\text{ sent})}{P(-\text{ recd})}\\
        &=\frac{\frac23\frac47}{\frac{41}{84}}
        &=\frac{32}{41}.
        \end{aligned}$$

     b. *Assuming independence and that .. was received, what is the probability of the four possible sent messages?*

        $$P(..)=P(.\text{ sent}\mid.\text{ recd})^2,$$
        $$P(-.)=P(.=)=P(.\text{ sent}\mid.\text{ recd})P(-\text{ sent}\mid.\text{ recd}),$$
        and
        $$P(--)=P(-\text{ sent}\mid.\text{ recd})^2.$$
        Those can be calculated as in (a).

 42. *Inclusion-exclusion.* Let $A_1,\dots,A_n$ be events and consider $P(\cup_i=1^n A_i)$. Let $A=\cup_{i=1}^n A_i$.

     a. *Let $E_k$ denote the set of sample points that are contained in exactly $k$ of the events $A_i$. Then $P(\cup_{i=1}^nA_i)=\sum_{i=1}^nP(E_i)$.*

        Indeed, by finite disjoint additivity of measure, it suffices to show that $E_i$ form a disjoint partition of $A$.

        First, clearly $A=\cup_{i=1}^nE_i$: every point in $A$ is in some number $k$ of events $A_i$, and thus is in $E_k$, and every point in some $E_k$ must be in some events $A_i$.

        Second, clearly the $E_k$ are disjoint, since we used the word "exactly".

     b. My text has a clear erratum here. And honestly it seems like (c) may as well, and I can't quite figure it out. Let's skip it.

<!-- 43, 44, 45 -->

 46. *Seven balls are distributed randomly into seven cells. Let $X_i$ be the number of cells containing $i$ balls. Find the distribution of $X_3$.*

     First of all, at most 2 cells can contain 3 balls. That will happen for permutations of the pattern 3310000, which can occur by: pick 2 locations for the 3s with $\binom{7}{2}$, pick three balls for the first three with $\binom{7}{3}$, pick three balls for the second three with $\binom{4}{3}$, and pick a location for the one with $5$ for $\binom{7}{2}\binom{7}{3}\binom{4}{3}5=14700$.

     To get $X_3=1$, what are the patterns, and how often do they occur?

      Pattern  Count
      -------  -------
      3400000  $7\binom{7}{3}6=1470$
      3220000  $7\binom{7}{3}\binom{6}{2}\binom{4}{2}=22050$
      3211000  $7\binom{7}{3}6\binom{4}{2}\binom{5}{2}2=176400$
      3111100  $7\binom{7}{3}\binom{6}{4}4!=88200$
      *Total*  $288120$

     So, since there are $7^7$ possible arrangements, we have
     $$\begin{aligned}
     P(X_3=2)&=\frac{14700}{7^7}=\frac{300}{16807},\\
     P(X_3=1)&=\frac{288120}{7^7}=\frac{120}{343},\\
     P(X_3=0)&=1-\frac{300}{16807}-\frac{120}{343}=\frac{10627}{16807}.
     \end{aligned}$$

 47. *Prove that the following functions are cdfs.*

     a. $F(x)=\frac12 + \frac1\pi\atan x.$

        Indeed, arctan is continuous with derivative $\frac{1}{1+x^2}$, so this function is increasing and continuous.

        What's more, $\atan(-\infty)=-\frac\pi2$ and $\atan(\infty)=\frac\pi2$,
        so we have correct limits of 0 and 1 for $F$.

     b. $G(x)=(1+e^{-x})^{-1}$.

        Indeed, clearly this function is continuous, and it has derivative
        $$\frac{d}{dx}(1+e^{-x})^{-1}=-(1+e^{-x})^{-2}(-e^{-x})=\frac{e^{-x}}{(1+e^{-x})^2}>0,$$
        so it's increasing. Finally, $e^{-\infty}=0$ and $e^{\infty}\to\infty$, so that $G(-\infty)\to0$ and $G(\infty)\to1$.

 48. *Let $F(x)$ be the cdf of a random variable $X$ on $\bbR$. Then (a) $F(-\infty)=0$ and $F(\infty)=1$, (b) $F$ is nondecreasing, and (c) $F$ is right-continuous: i.e., for all $x_0$, $F(x+)=F(x_0)$.*

     Write $\bbR=\bigcup_{i\in\bbZ}[i,i+1)$. Then clearly
     $$F(-\infty)=\lim_{x\to-\infty}P(X\geq x)\leq\lim_{x\to0}\sum_{i=-\infty}^{\ceil{x+1}} P(X\in[i,i+1)).$$
     But if the RHS did not converge to 0, then $P(X\in\bbR)$ could not be 1. Taking the limit in the other direction with the same argument leads to the sum $P(X\in\bbR)=1$.

     $F$ is nondecreasing since for all $x<y$, $P(X\leq x)\leq P(X\leq y)$.

     $F$ is right-continuous because we use the $\leq$ in the definition $F(x)=P(X\leq x)$. Indeed, take any $x_0$. Then for any $x>x_0$, $$P(X\leq x)=P(X\leq x_0) + P(X\in (x_0,x]).$$ But $P(X\in(x_0,x])\to0$ as $x\to x_0$ by the axiom of continuity.

 49. A cdf $F_X$ is *stochastically greater than* a cdf $F_Y$ if $F_X(t)\leq F_Y(t)$ for all $t$ and there exists some $t$ such that the inequality is strict. For such $X$ and $Y$, show that (a) for all $t$, $$P(X>t)\geq P(Y>t)$$ and (b) there is some $t$ for which that inequality is strict.

     a. Indeed, we have that for all $t$,
        $$\begin{aligned}
        F_X(t)&\leq F_Y(t)\\
        P(X\leq t)&\leq P(Y\leq t)\\
        1 - P(X>t)&\leq 1 - P(Y>t)\\
        P(X>t)&\geq P(Y>t).\\
        \end{aligned}$$
     b. Follows since we had some $t$ where the first line in (a) was strict.

 50. Verify the formula for partial sums of geometric series:
     $$\sum_{k=0}^{n-1} r^k = \frac{1-r^n}{1-r}.$$
     I don't like this formula, since I always forget, $n$ or $n-1$ or what?

     First, consider $r\neq1$, since there the sum is clearly just $n$.

     We proceed by induction on $n$. For $n=1$, the sum is just $r^0=1$, and the RHS is $\frac{1-r^1}{1-r}=1$. To get a feel, for $n=2$ the sum is $1 + r$, and the RHS is $$\frac{1-r^2}{1-r}=\frac{(1-r)(1+r)}{1-r}=(1+r)\frac{1-r}{1-r}=1+r.$$

     Now, assume that $$\sum_{k=0}^{n-2} r^k = \frac{1-r^{n-1}}{1-r}.$$ Then it suffices to show that $$r^{n-1} + \frac{1-r^{n-1}}{1-r} = \frac{1-r^n}{1-r}.$$ Indeed,
     $$\begin{aligned}
     r^{n-1} + \frac{1-r^{n-1}}{1-r}
     &=\frac{(1-r)r^{n-1}}{1-r} + \frac{1-r^{n-1}}{1-r}\\
     &=\frac{r^{n-1}-r^n}{1-r} + \frac{1-r^{n-1}}{1-r}\\
     &=\frac{1-r^{n-1}+r^{n-1}-r^n}{1-r}\\
     &=\frac{1-r^n}{1-r},
     \end{aligned}$$
     well ok then!

 51. *An appliance store receives a shipment of 30 microwave ovens, 5 of which are defective. 4 are selected at random and tested. Let $X$ be the number of defective ovens discovered. Calculate and plot its pmf and cdf.*

     Let's do the calculation. Of all combinations of 4 ovens, there are $\binom54=5$ ways to choose four defective ones, $\binom{5}{3}\binom{25}{1}=250$ ways to choose three, $\binom{5}{2}\binom{30}{2}=3000$ for 2, you get the picture.

     Here's a plot in Julia.

     ```julia
     using Combinatorics, Plots
     xs = [0, 1, 2, 3, 4]
     ys = @. binomial(5, xs) * binomial(25, 4 - xs)
     ys /= sum(ys)
     plot(
        xs, cumsum(ys),
        linetype=:steppre, linecolor=:black, legend=false,
        size=(400, 400)
     )
     ```

     ![cdf of $X$.](ims/1.51.pdf){ width=50% }

 52. *Let $X$ be a continuous random variable with pdf $f$ and cdf $F$. For some $x_0$ such that $F(x_0) < 1$, let*
     $$g(x)=\begin{cases}
     f(x)/[1-F(x_0)] & x\geq x_0\\
     0 & x < x_0.
     \end{cases}$$
     *Then $g(x)$ is a pdf.*

     Since $g$ is clearly positive, it suffices to show that it integrates to 1, or in other words that $\int_{x_0}^\infty f=1-F(x_0)$. Indeed, by the definition of CDF and the FTC,
     $$1 - F(x_0)=\lim_{x\to\infty} [F(x) - F(x_0)] = \int_{x_0}^\infty f(x)\,dx.$$

 53. *A river floods every year. Suppose the low-water mark is at 1, and the high water mark $Y$ has cdf*
     $$F_Y(y)=1-\frac1{y^2},\quad1\leq y<\infty.$$

     a. *Check that $F_Y$ is a cdf.*

        This function is clearly continuous for $y\geq1$. Further, differentiating, we get $$f_Y(y)=\frac2{y^3},$$which is positive for positive $y$ so that $F_Y$ is increasing. Finally, $F_Y(1)=0$ and $y^{-2}\to0$ so that $F(\infty)=1$.

     b. The pdf is $f_Y(y)=\frac2{y^3}$.

     c. *Let $Z=10(Y-1)$ and find $F_Z$.*

        Well,
        $$\begin{aligned}
        F_Z(z)
        &=P(10(Y-1)\leq z)\\
        &=P(10Y\leq z+10)\\
        &=P\bigg(Y\leq \frac{z+10}{10}\bigg)\\
        &=F_Y\bigg(\frac{z+10}{10}\bigg)\\
        &=1-\bigg(\frac{z+10}{10}\bigg)^{-2},
        \end{aligned}$$
        on the domain $0\leq z<\infty$.

 54. *Find $c$ such that the following $f(x)$ are pdfs.*

     a. $f(x)=c\sin x,0\leq x<\pi/2$.

        Pick
        $$c=\int_0^{\frac\pi2}\sin x\,dx=[-\cos x]_0^{\frac\pi2}=-0+1,$$
        OK then, fine. Shoulda known.

     b. $f(x)=ce^{-\abs{x}}$, $x\in\bbR$.

        By symmetry,
        $$\frac{c}{2}=\int_0^\infty e^{-x}\,dx=[-e^{-x}]_0^\infty=-0+\frac1e,$$
        so take $c=\frac2e$.

 55. *An electronic device has lifetime $T$. The device has value $V=5$ if it fails before time 3, otherwise it has value $V=2T$. Find the cdf of $V$ if $T$ has pdf*
     $$f_T(t)=\frac{1}{1.5}e^{-t/1.5},\quad t>0.$$

     We can see that $V=5$ with probability $P(T\leq 3)$, and otherwise $V$ takes values starting at 6, such that
     $$F_V(v)=\begin{cases}
     0 & v<5\\
     P(T\leq3) & 5\leq v<6\\
     P(2T\leq v) & 6\leq v.
     \end{cases}$$
     These are more easily computed using the cdf of $T$, which is
     $$F_T(t)=\int_0^t \tfrac{1}{1.5}e^{-s/1.5}\,ds=[-e^{-s/1.5}]_0^t=1-e^{-t/1.5}.$$
     From here, we see that
     $$P(T\leq 3)=F_T(3)=1-e^{-2},$$
     and
     $$P(2T\leq v)=F_T(\tfrac{v}{2})=1-e^{-t/3}.$$


