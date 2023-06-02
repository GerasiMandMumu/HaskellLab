import qualified Data.Map as Map

helloPerson :: String -> String
helloPerson name = "Hello, " ++ name ++ "!"

testData :: Map.Map Int String
testData = Map.fromList [(1, "John"), (2, "Ivan")]

maybeMain :: Maybe String
maybeMain = do
 name <- Map.lookup 1 testData
 return (helloPerson name)