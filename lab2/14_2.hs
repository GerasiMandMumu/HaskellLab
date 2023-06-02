data FiveSidedDie = S1 | S2 | S3 | S4 | S5 deriving (Enum, Eq, Show)
 
class (Eq a, Enum a) => Die a where
 printSide :: a -> String
 
instance Die FiveSidedDie where
 printSide n = show n