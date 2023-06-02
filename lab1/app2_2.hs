incr n = n + 1
double n = n * 2
square n = n * n

main = do
	putStrLn "Введите n"
	s <- getLine
	let n = read s :: Integer
	print (incr n)
	print (double n)
	print (square n)