-- [Char] == String
removetNonUppercase :: [Char] -> [Char]
removetNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

-- The parameters are separated with `->` and there's no special distinction between the parameters
-- and the return type. The return type is the last item declaration and the parameters are the
-- first three.
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- If you want to give your function a type declaration but are unsure what it should be you can
-- always write the function without it and then use :t in GHCI to see what it is.

-- This is epic. So concise.
factorial :: Integer -> Integer
factorial n = product [1..n]

-- Assuming pi is a built-in value?
-- After checking, it is.
circumference :: Float -> Float
circumference r = 2 * pi * r

-- Double is a real floating point value with double the precision
circumference' :: Double -> Double
circumference' r = 2 * pi * r

-- in the (built-in) function
-- head :: [a] -> a
-- a is a "type variable", which is like a generic variable but more powerful.
