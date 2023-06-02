data Box a = Box a deriving Show
data Triple a = Triple a a a deriving Show

boxMap :: (a -> b) -> Box a -> Box b
boxMap f (Box a) = Box (f a)

tripleMap :: (a -> b) -> Triple a -> Triple b
tripleMap f (Triple x y z) = Triple (f x) (f y) (f z)