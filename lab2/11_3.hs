myFoldl f init [] = init
myFoldl f init (x:xs) = myFoldl f newInit xs
 where newInit = f init x
 
main = do
 print $ foldl (+) 0 [1,2,3,4]
 print $ myFoldl (+) 0 [1,2,3,4]