lucky :: (Int a) a => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 4 = "Five!"
sayMe x = "Must be between 1 and 5!"

factorial :: (Integral a) => a -> a
-- base case
factorial 0 = 1
factorial n = n * factorial (n - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

-- Pattern matching can also be used on tuples

-- addVectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
-- addVectors a b = (fst a + fst b, snd a + snd b)

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- Notice that the above tuple pattern matching implementation of addVectors uses a catch-all
-- pattern.

-- fst and snd for triples

first :: (a, b, c) -> a
first :: (x, _, _,) = x

second :: (a, b, c) -> b
second :: (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z
