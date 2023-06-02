import Data.Char (isDigit)

allDigits :: String -> Bool
allDigits val = all (== True) (map isDigit val)

addStrInts :: String -> String -> Either Int String
addStrInts val1 val2
 | allDigits val1 && allDigits val2 = Left (read val1 + read val2)
 | not (allDigits val1 || allDigits val2) = Right "ни одно из значений не удалось считать"
 | not (allDigits val1) = Right "первое значение не удалось считать"
 | otherwise = Right "второе значение не удалось считать"	