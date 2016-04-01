cylinder :: (RealFloat a) => a -> a -> a
cylinder r h = 
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in sideArea + 2 * topArea

-- *Main> cylinder 43 23
-- 17831.679901775664

-- The difference between let bindings and where bingins is that let bindings are expressions
-- themselves. where bindings are just syntactic constructs.
