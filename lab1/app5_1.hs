ifEven f x = if even x
 then f x
 else x

inc n = n + 1
double n = n * 2
square n = n^2

ifEvenInc = ifEven inc
ifEvenDouble = ifEven double
ifEvenSquare = ifEven square


main = do
 print (ifEvenInc 10)
 print (ifEvenDouble 10)
 print (ifEvenSquare 10)