-- similar in spirit to swift guards with a pipe.
-- The following mean function berates you based on your BMI using guards

bmiBerate :: (RealFloat a) => a -> String
bmiBerate bmi
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= 30.0 = "You're fat! Lose some wheight, fatty!"
    | otherwise = "You're a whale, congratulations!"

-- Guards are indicated by pipes that follow a function's name and its parameters. Usually, they're
-- indented a bit to the right and lined up. A guard is basically a boolean expression. If it
-- evaluates to True, then the corresponding function body is used. If it evaluates to False,
-- checking falls through to the next guard and so on.

-- While big if else trees are usually frowned upon (in Haskell), sometimes a problem is defined in
-- such a way that you can't get around them. Guards are a nice alternative for this.

-- We can use guards with functions that take as many parameters as we want. Instead of having the
-- user calculate his own BMI before calling the function, let's modify this function so that it
-- takes height and weight and calculates it for us.

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"
    | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | weight / height ^ 2 <= 30.0 = "You're fat! Lose some wheight, fatty!"
    | otherwise = "You're a whale, congratulations!"

-- Prelude> :l guards
-- [1 of 1] Compiling Main             ( guards.hs, interpreted )
-- Ok, modules loaded: Main.
-- *Main> bmiTell 85 1.90
-- "You're supposedly normal. Pffft, I bet you're ugly!"

-- Note that there's no = right after the function name and its parameters, before the first guard.
-- Many newbies get syntax errors because they sometimes put it there.

-- Let's write our own max function
max' :: ( Ord a ) => a -> a -> a
max' a b
    | a > b = a
    | otherwise = b

-- Guards can also be written inline, although this makes them less readable
-- max' :: (Ord a) => a -> a -> a
-- max' a b | a > b = a | otherwise = b
-- 
-- gross...

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a > b     = GT
    | a == b    = EQ
    | otherwise = LT

-- Note: Not only can we call functions as infix with backticks, we can also define them using
-- backticks to document them as such.

-- *Main> 3 `myCompare` 2
-- GT

