-- fizbuzz.hs
-- Created by Gregory Stula on 3/28/16.
-- Copyright © 2016 Gregory D. Stula. All rights reserved.

main :: IO ()

main = printAll $ map fizzBuzz [1..100]
    where
    printAll [] = return ()
    printAll (x:xs) = putStrLn x >> printAll xs

fizzBuzz :: Integer -> String
fizzBuzz n | n `mod` 3 == 0 && n `mod` 5 == 0 = "FizzBuzz"
           | n `mod` 3 == 0 = "Fizz"
           | n `mod` 5 == 0 = "Buzz"
           | otherwise      = show n


