-- head' :: [a] -> a
-- head' [] = error "No head for empty lists~"
-- head' (x:_) = x

head' :: [a] -> a
head' xs = case xs of [] -> error "No head for empty lists!"
                      (x:_) -> x -- otherwise

-- case expression of pattern -> match
--                    pattern -> match
--                    pattern -> match
--                    pattern -> match
--                    ...

describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of [] -> "Empty!"
                                               [x] -> "a sigleton list"
                                               xs -> "a longer list."


