allFmapM :: Monad m => (a -> b) -> m a -> m b
allFmapM func val = val >>= (\x -> return (func x))