import System.IO
import qualified Data.ByteString as B
import qualified Data.Text.Encoding as E
import System.Environment
import qualified Data.Text as T


main :: IO ()
main = do
  args <- getArgs
  let source =  args !! 0
  input <- B.readFile source
  putStrLn "Bytes:"
  print (B.length input)
  putStrLn "Chars:"
  print ((T.length . E.decodeUtf8) input)