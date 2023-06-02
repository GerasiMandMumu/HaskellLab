subseq a b lst = result
 where result = take (b - a) (drop a lst)

main = do
 print $ subseq 2 5 [1 .. 10] 
 print $ subseq 2 6 "test game"
