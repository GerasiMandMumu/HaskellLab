myReverse (x:[]) = [x]
myReverse (x:xs) = myReverse xs ++ [x]

main = do
 print $ myReverse [1, 2, 3, 4, 5]