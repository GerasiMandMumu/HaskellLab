myrepeat n = cycle [n]

main = do
 print $ take 4 (myrepeat 1)
 