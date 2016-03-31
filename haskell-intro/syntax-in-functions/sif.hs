lucky :: (Integral a) a => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of oluck, pal!"

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
