
-- The maximimum function takes a list of things that can be ordered and returns them. Let's define
-- it recursively.

maximum' :: (Ord a) => [a] -> a
-- empty list case
maximum' [] = error "can't maximum on empty list"
-- single list case
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs

-- an even clearer way

maximum'' :: (Ord a) => [a] -> a
maximum'' [] = error "maximum of empty list"
maximum'' [x] = x
maximum'' (x:xs) = max x (maximum' xs)

