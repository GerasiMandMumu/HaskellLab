import Data.Array.Unboxed
import Data.Array.ST
import Control.Monad
import Control.Monad.ST

replaceZeros :: UArray Int Int -> UArray Int Int
replaceZeros myArray = runSTUArray $ do
                        stuArray <- thaw myArray :: ST s (STUArray s Int Int)
                        let end = (snd . bounds) myArray
                        forM_ [0..end] $ \ i -> do 
                                                val <- readArray stuArray i 
                                                if (val == 0 )
                                                then writeArray stuArray i (-1)
                                                else return ()
                        return stuArray 
						
a :: UArray Int Int
a = listArray (0,5) [1, 2, 0, 0, 3, 0]						