-- baby.hs
-- from learn you a haskell, starting out
--

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y 

doubleSmallNumber x = if x > 100
                         then x
                         else x * 2
