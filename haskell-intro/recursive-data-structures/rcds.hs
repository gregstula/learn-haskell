-- As we've seen a constructor in an algerbraic data type can have several (or none at all) fields
-- and each field must be of some concreat type. With that in mind, we can make types whose
-- constructors have fieelds that are of the same type! Using that, we can create recursive data
-- types where one value of some type contains values of that type, which in turn contain more
-- values of the same type and so on.
--
-- Let's use algebraic data types to implement our own list then

data List a = Empty | Cons a (List a) deriving (Show, Read, Eq, Ord)

-- in Record syntax
-- data List a = Empty | Cons { listHead :: a, listTail :: List a} deriving (Show, Read, Eq, Ord)  

