type FirstName = String
type LastName = String
type MiddleName = String
data Name = Name FirstName LastName | NameWithMiddle FirstName MiddleName LastName
data Artist = Person Name | Band String
data Author = Author Name
data Creator = AuthorCreator Author | ArtistCreator Artist

data Pamphlet = Pamphlet{
 title :: String, 
 desc :: String,
 pamphletPrice :: Double
}

data CollectibleToy = CollectibleToy {
 name :: String, 
 description :: String, 
 toyPrice :: Double
}

data VinylRecord = VinylRecord {
 artist :: Creator, 
 recordTitle :: String, 
 recordYear :: Int, 
 recordPrice :: Double
}

data Book = Book {
 author :: Creator, 
 isbn :: String, 
 bookTitle :: String, 
 bookYear :: Int, 
 bookPrice :: Double
}

data StoreItem = BookItem Book
               | RecordItem VinylRecord
               | ToyItem CollectibleToy
               | PamphletItem Pamphlet

price :: StoreItem -> Double
price (BookItem book) = bookPrice book
price (RecordItem record) = recordPrice record
price (ToyItem toy) = toyPrice toy
price (PamphletItem pamphlet) = pamphletPrice pamphlet



main = do
 let pamphlet = Pamphlet{
  title = "Весна", 
  desc = "Книга о природе",
  pamphletPrice = 1000.0
 }
 let item = PamphletItem pamphlet
 print (price item)