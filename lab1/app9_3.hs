harmonic n = sum (take n values)
 where pairs = zip (cycle [1.0]) [2.0, 3.0 .. ]
       values = map (\pair -> (fst pair)/(snd pair)) pairs

main = do
 print (harmonic 5)