import System.IO
import System.Environment
import qualified Data.Text as T
import qualified Data.Text.IO as TI

main :: IO ()
main = do
  args <- getArgs
  let source =  args !! 0
  let dest = args !! 1
  input <- TI.readFile source
  TI.writeFile dest input