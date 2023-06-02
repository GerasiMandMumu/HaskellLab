{-# LANGUAGE FlexibleContexts #-}
allApp :: Monad m => m (a -> b) -> m a -> m b
allApp func val = func >>= (\f -> val >>= (\x -> return (f x)) )