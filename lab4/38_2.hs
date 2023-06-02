safeSucc :: (Enum a, Bounded a, Eq a, Show a) => a -> Maybe a
safeSucc n = if n == maxBound
             then Nothing
             else Just (succ n)

safeTail :: [a] -> [a]
safeTail [] = []
safeTail (x:xs) = xs

safeLast' :: Int -> [a] -> Either a String
safeLast' 0 _ = Right "Список превышает безопасную границу"
safeLast' _ (x:[]) = Left x
safeLast' n (x:xs) = safeLast' (n - 1) xs


safeLast :: [a] -> Either a String
safeLast [] = Right "пустой список"
safeLast xs = safeLast' 10000 xs
