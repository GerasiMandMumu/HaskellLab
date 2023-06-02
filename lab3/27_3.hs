import qualified Data.Map as Map

data RobotPart = RobotPart
 { name :: String
 , description :: String
 , cost :: Double
 , count :: Int
 } deriving Show

leftArm :: RobotPart
leftArm = RobotPart
	{ name = "left arm"
	, description = "левая рука для того, чтобы бить в лицо!"
	, cost = 1000.00
	, count = 3
	}
	
rightArm :: RobotPart
rightArm = RobotPart
	{ name = "right arm"
	, description = "правая рука для добрых жестов"
	, cost = 1025.00
	, count = 5
	}
	
robotHead :: RobotPart
robotHead = RobotPart
	{ name = "robot head"
	, description = "эта голова выглядит безумной"
	, cost = 5092.25
	, count = 2
	}

printCost :: Maybe Double -> IO()
printCost Nothing = putStrLn "item not found"
printCost (Just cost)= print cost

partsDB :: Map.Map Int RobotPart 
partsDB = Map.fromList keyVals
 where keys = [1,2,3]
       vals = [leftArm,rightArm,robotHead]
       keyVals = zip keys vals

main :: IO ()
main = do
  putStrLn "enter a part number"
  partNo <- getLine
  let part = Map.lookup (read partNo) partsDB
  printCost (cost <$> part)