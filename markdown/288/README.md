#   Problem 288

   For any prime p the number N(p,q) is defined by N(p,q) = ∑_n=0 to q
   T_n*p^n
   with T_n generated by the following random number generator:

   S_0 = 290797
   S_n+1 = S_n^2 mod 50515093
   T_n = S_n mod p

   Let Nfac(p,q) be the factorial of N(p,q).
   Let NF(p,q) be the number of factors p in Nfac(p,q).

   You are given that NF(3,10000) mod 3^20=624955285.

   Find NF(61,10^7) mod 61^10

   Project Euler: Copyright Information | Privacy Policy

   The page has been left unattended for too long and that link/button is no
   longer active. Please refresh the page.
