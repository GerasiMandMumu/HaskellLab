doubleDouble x = (\dubs -> dubs*2) (x*2)

overwrite x = (\x ->(\x -> (\x -> x) 4) 3) 2
	
main = do
 print (doubleDouble 2)
 print (overwrite 10)   