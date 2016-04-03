replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0 =[]
    | otherwise = x:replicate' (n-1) x

-- Note: Num is not a sublass of Ord. Tha means that wha constitutes for a number doesn't really
-- haev to adhere to an ordering. So that's why we have to specify both te Num and Ord class
-- constraints when doing addition or subtraction and also comparison.
--

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

