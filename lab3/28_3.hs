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

leftLeg :: RobotPart
leftLeg = RobotPart
	{ name = "left robot leg"
	, description = "нога"
	, cost = 2000.21
	, count = 2
	}

rightLeg :: RobotPart
rightLeg = RobotPart
	{ name = "right robot leg"
	, description = "нога"
	, cost = 2200.21
	, count = 4
	}

partsDB :: Map.Map Int RobotPart 
partsDB = Map.fromList keyVals
 where keys = [1,2,3,4,5]
       vals = [leftArm,rightArm,robotHead,rightLeg,leftLeg]
       keyVals = zip keys vals


printCost :: Maybe Double -> IO()
printCost Nothing = putStrLn "missing item"
printCost (Just cost)= print cost

main :: IO ()
main = do
  putStrLn "enter a part number 1"
  partNo1 <- getLine
  putStrLn "enter a part number 2"
  partNo2 <- getLine
  let part1 = Map.lookup (read partNo1) partsDB
  let part2 = Map.lookup (read partNo2) partsDB
  let cheapest = min <$> (cost <$> part1) <*> (cost <$> part2)
  printCost cheapest