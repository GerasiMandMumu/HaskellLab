import Data.List

compareLastNames names = sortBy compare names
   
main = do
 let names = [("Elena","Nives"), ("John","Snow"), ("Sansa","Stark"), ("Igor","Filatov")]
 print $ compareLastNames names