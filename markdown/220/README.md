#   Problem 220

   Let D_0 be the two-letter string "Fa". For nā„1, derive D_n from D_n-1 by
   the string-rewriting rules:

   "a" ā "aRbFR"
   "b" ā "LFaLb"

   Thus, D_0 = "Fa", D_1 = "FaRbFR", D_2 = "FaRbFRRLFaLbFR", and so on.

   These strings can be interpreted as instructions to a computer graphics
   program, with "F" meaning "draw forward one unit", "L" meaning "turn left
   90 degrees", "R" meaning "turn right 90 degrees", and "a" and "b" being
   ignored. The initial position of the computer cursor is (0,0), pointing up
   towards (0,1).

   Then D_n is an exotic drawing known as the Heighway Dragon of order n. For
   example, D_10 is shown below; counting each "F" as one step, the
   highlighted spot at (18,16) is the position reached after 500 steps.

   What is the position of the cursor after 10^12 steps in D_50 ?
   Give your answer in the form x,y with no spaces.

   Project Euler: Copyright Information | Privacy Policy

   The page has been left unattended for too long and that link/button is no
   longer active. Please refresh the page.
