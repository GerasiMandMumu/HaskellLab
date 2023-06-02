monthEnds :: [Int]
monthEnds = [31,28,31,30,31,30,31,31,30,31,30,31]


datesDo :: [Int] -> [Int]
datesDo ends = do
   end <- ends
   date <- [1 .. end]
   return date

datesMonad :: [Int] -> [Int]
datesMonad ends  =  ends >>=
 (\end ->
   [1 .. end] >>=
     (\date -> return date))