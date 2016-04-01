bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi <= skinny = "You're underweight!"
    | bmi <= normal = "You're supposedly normal!"
    | bmi <= fat    = "You're overweight!"
    | otherwise = "You're way too overweight!"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat = 30.0

-- where bindings aren't shared across function bodies of different patterns. If you want several
-- patterns of one function to access some shared name, you will have to define it globally

-- you can also use where binding to pattenr match.
-- where bmi = weight height ^ 2
-- (skinny, normal, fat) = (18.5, 25.0, 20.0)

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname

-- We could have done this pattern matching directly in the function's parameters (preferred
-- actually)

calcBmis :: (RealFloat a) => [(a,a)] -> [a]
calcBmis xs = [bmi w h | (w,h) <- xs]
    where bmi weight height = weigth / height ^ 2


