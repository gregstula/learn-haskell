-- The data keyword means that we're defining a new data type. The part before the = denotes the
-- type. THe part after the = are value constructors. They specify the different values that this
-- type can have. The | is read as _or_. So we can read this as: The Shape type can have a value of
-- Circle that has three fields or Rectangle that has four fields.
data Shape = Circle Float Float FLoat | Rectangle Float Float Float Float

surface :: Shape -> Float
surface (Circle _ _ r) = pi * r ^ 2
surface (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)
