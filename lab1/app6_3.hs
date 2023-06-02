inFirstHalf n lst = elem n buffer
 where len = (length lst) `div` 2
       buffer = take len lst

main = do
 print $ inFirstHalf 5 [1, 2, 3, 4, 5]
 print $ inFirstHalf 5 [1, 5, 3, 4, 10]
