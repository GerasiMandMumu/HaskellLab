words1 :: [String]
words1 = ["Hi"
         ,"Hello"
         ,"Good morning"
         ,"See you"
         ,"How are you?"
		 ,"End"]

getWord :: [String] -> [String]
getWord [] = []
getWord ("n":xs) = []
getWord (x:xs) = word : (getWord xs)
  where word = words1 !! (read x - 1)

main :: IO ()
main = do
  userInput <- getContents
  mapM_ putStrLn (getWord  (lines userInput))