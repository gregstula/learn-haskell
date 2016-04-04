-- Lambdas are basically anonymous functions that are used because we need a function only once.

map (+3) [1,6,3,2]

-- is equavalent to

map (\x -> x + 3) [1,6,3,2]

numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))

