import System.Random
import System.Environment
import qualified Data.ByteString.Char8 as BC

import Glitch (randomReverseBytes)
  
main :: IO ()
main = do
	args <- getArgs
	let fileName = head args
	imageFile <- BC.readFile fileName
	glitched1 <- randomReverseBytes imageFile
	let glitchedFileName = mconcat ["glitched_",fileName]
	BC.writeFile glitchedFileName glitched1
	putStrLn "END"  