myTail [] = []
myTail (_:xs) = xs

main = do
 putStrLn (myTail [])
 let lst = myTail [1 .. 5]
 print $ lst