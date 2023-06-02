import Data.Char

isPalindrome text = processedText == reverse processedText
 where noSpaces = filter (/= ' ') text
       processedText = map toLower text

main = do
 print (isPalindrome "aTeSt tSeTA")