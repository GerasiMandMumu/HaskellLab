f n = 
 if even n then n - 2
 else 3*n+1

main = do
 putStrLn "Введите n"
 s <- getLine
 let n = read s :: Integer
 print (f n)