import Data.Array.Unboxed
import Data.Array.ST
import Control.Monad
import Control.Monad.ST


crossover :: UArray Int Int -> UArray Int Int -> Int -> UArray Int Int
crossover myArray1 myArray2 pt = runSTUArray $ do 
                                stuArray1 <- thaw myArray1  :: ST s (STUArray s Int Int)
                                stuArray2 <- thaw myArray2  :: ST s (STUArray s Int Int)
                                let end = (snd . bounds) myArray1
                                myArray <- newArray (0, end) 0 
                                forM_ [0..end] $ \ i -> do
                                                        value1 <- readArray stuArray1 i
                                                        value2 <- readArray stuArray2 i
                                                        if i < pt then
                                                            writeArray myArray i  value1
                                                        else 
                                                            writeArray myArray i value2
                                return myArray  
  
a :: UArray Int Int
a = listArray (0,4) [1,1,1,1,1]

b :: UArray Int Int
b = listArray (0,4) [0,0,0,0,0]