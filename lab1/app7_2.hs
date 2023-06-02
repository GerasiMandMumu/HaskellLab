myGCD a 0 = a
myGCD a b = myGCD b (a `mod` b)

main = do
 print (myGCD 2 10)