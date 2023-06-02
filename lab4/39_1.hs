import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as BC
import qualified Data.ByteString.Lazy as L
import qualified Data.ByteString.Lazy.Char8 as LC
import Network.HTTP.Simple

main :: IO ()
main = do
 response <- httpLBS request
 let status = getResponseStatusCode response
 if status == 200 
	then do
		putStrLn "Результаты запроса были сохранены в файл"
		let jsonBody = getResponseBody response
		L.writeFile "data.json" jsonBody
	else
		putStrLn "Запрос не удалось совершить из-за ошибки"
