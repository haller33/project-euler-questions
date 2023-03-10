#   Problem 375

   Let $S_n$ be an integer sequence produced with the following pseudo-random
   number generator:

   \[ \begin{equation} \begin{split} S_0 & = 290797 \\ S_{n+1} & = S_n^2
   \bmod 50515093 \end{split} \end{equation} \]

   Let $A(i, j)$ be the minimum of the numbers $S_i, S_{i+1}, \ldots, S_j$
   for $i\le j$.
   Let $M(N) = \sum A(i, j)$ for $1 \le i \le j \le N$.
   We can verify that $M(10) = 432256955$ and $M(10\,000) = 3264567774119$.

   Find $M(2\,000\,000\,000)$.

   Project Euler: Copyright Information | Privacy Policy

   The page has been left unattended for too long and that link/button is no
   longer active. Please refresh the page.
