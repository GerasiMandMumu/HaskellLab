counter x = (\x ->(\x ->(\x -> x) x) x+1) x+1			
main = do
	print(counter 5)