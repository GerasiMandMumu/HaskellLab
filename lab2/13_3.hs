cycleSucc :: (Bounded a, Enum a, Eq a) => a -> a 
cycleSucc n = if n == maxBound
              then minBound
              else succ n
main = do
 print (cycleSucc 10 :: Int)
 