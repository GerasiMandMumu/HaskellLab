type Bits = [Bool]

intToBits' :: Int -> Bits
intToBits' 0 = [False]
intToBits' 1 = [True]
intToBits' n = if (remainder == 0) then False : intToBits' nextVal
           else True : intToBits' nextVal
 where remainder = n `mod` 2
       nextVal = n `div` 2