fib _ _ 1 = 0
fib _ _ 2 = 1
fib a b 3 = a + b
fib a b counter = fib (a + b) a (counter-1)

main = do
 print (fib 1 1 5)