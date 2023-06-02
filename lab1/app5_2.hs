binaryPartialApplication binaryFunction arg1 = (\x -> binaryFunction arg1 x)
sumFunc a b = a + b
func = binaryPartialApplication sumFunc 10

main = do
 print (func 20)