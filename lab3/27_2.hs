data Box a = Box a deriving Show
myBox :: Box Int
myBox = Box 1

wrap :: a -> Box a
wrap val = Box val
unwrap :: Box a -> a
unwrap (Box val) = val