myHead :: [a] -> [a]
myHead [] = []
myHead (x:xs) = [x]

main = do
 putStrLn (myHead [])
 let lst = myHead [1 .. 5]
 print $ lst
