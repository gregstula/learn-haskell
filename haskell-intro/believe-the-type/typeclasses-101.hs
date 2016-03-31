-- A typeclass is a sort of interface that defines some behavior. If a type is a part of a
-- typeclass, that means that it supports and implements the behavior the typeclass describes. 

-- NOTE:
-- They are not like OOP classes or objects.

-- Everything before the => symbol is called a class constraint
-- :t (==)
-- (==) :: (Eq a) => a -< a -> Bool
--

-- EQ type class provides an interface for testing for equality.

-- The elem function has a  type of (Eq a) => a - [a] -> bool because it uses `==` over a list to
-- check  whether some value we're looking for is in the list

-- Eq is used for types that support equality testing. The functions its members have to implement
-- are `==` and `=/`. So if there's an Eq class constraint for a type variable it's guaranteed to be
-- able to use == or =/

-- Ord is for types that have an ordering
-- cha> :t (>)
-- (>) :: Ord a => a -> a -> Bool

-- All the types we covered so fara except for functions are part of Ord. Ord covers all the
-- standard comparing functions such as >, <, >=, and <=. The `compare` function takes two Ord
-- members of the same type and returns an ordering. Ordering is a type that can be GT, LT, or EQ,
-- meaning the obvious... respectively.


-- cha> "Abrakadabra" < "Zebra"
-- True
-- cha> "Abrakadabra" `compare` "Zebra"
-- LT


-- Members of Show can be presented as strings. All types covered so far are a part of Show. The
-- most used used function that deals with Show typeclass is `show`.
-- cha> show 3
-- "3"
-- cha> show 5.334
-- "5.334"
-- cha> show True
-- "True"

-- Read can be thought of as the opposite of Show. The read function takes a string and returns a
-- type that is a member of Read.

-- cha> read "True" || False
-- True
-- cha> read "8.2" + 3.8
-- 12.0

-- Other typeclasses include Enum, Bounded... look in the book
