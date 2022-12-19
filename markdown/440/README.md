#   Problem 440

   We want to tile a board of length n and height 1 completely, with either 1
   × 2 blocks or 1 × 1 blocks with a single decimal digit on top:

   p440_tiles.png

   For example, here are some of the ways to tile a board of length n = 8:

   p440_some8.png

   Let T(n) be the number of ways to tile a board of length n as described
   above.

   For example, T(1) = 10 and T(2) = 101.

   Let S(L) be the triple sum ∑_a,b,c gcd(T(c^a), T(c^b)) for 1 ≤ a, b, c ≤
   L.
   For example:
   S(2) = 10444
   S(3) = 1292115238446807016106539989
   S(4) mod 987 898 789 = 670616280.

   Find S(2000) mod 987 898 789.

   Project Euler: Copyright Information | Privacy Policy

   The page has been left unattended for too long and that link/button is no
   longer active. Please refresh the page.