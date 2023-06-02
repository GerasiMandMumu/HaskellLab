import qualified Data.Map as Map

data List a = Empty | Cons a (List a) deriving Show
data Organ = Heart | Brain | Kidney | Spleen deriving (Show,Eq,Ord,Enum)

organs :: [Organ]
organs = [Heart,Heart,Brain,Spleen,Spleen,Kidney]

ids :: [Int]
ids = [2,7,13,14,21,24]

organCatalog :: Map.Map Int Organ
organCatalog = Map.fromList (zip ids organs)

organInventory :: Map.Map Organ Int
organInventory = Map.fromList (zip organs counts)
  where organs = [Heart .. Spleen]
        counts = map (\organ -> length $ Map.filter (==organ) organCatalog) organs