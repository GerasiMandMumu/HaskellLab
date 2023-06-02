data Box a = Box a deriving Show

myrepeat n = take n (cycle [n])

instance Functor Box where
   fmap func (Box val)  = Box (func val)

morePresents a = fmap myrepeat a