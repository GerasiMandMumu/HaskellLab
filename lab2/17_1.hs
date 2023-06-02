data Color = Red | Yellow | Blue | Green | Purple | Orange | Brown | Clear deriving (Show, Eq)

instance Semigroup Color 
 where
  (<>) Clear any = any
  (<>) any Clear = any
  (<>) Red Blue = Purple
  (<>) Blue Red = Purple
  (<>) Yellow Blue = Green
  (<>) Blue Yellow = Green
  (<>) Yellow Red = Orange
  (<>) Red Yellow = Orange
  (<>) a b
         | all (`elem` [Red, Blue, Purple]) [a, b] = Purple
         | all (`elem` [Blue, Yellow, Green]) [a, b] = Green
         | all (`elem` [Red, Yellow, Orange]) [a, b] = Orange
         | otherwise = Brown
		 
instance Monoid Color where
   mempty = Clear
   mappend col1 col2 = col1 <> col2		 