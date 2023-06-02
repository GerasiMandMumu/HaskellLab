import Data.Maybe
data Organ = Heart | Brain | Kidney | Spleen deriving (Show, Eq)
ms :: [Maybe Organ]
ms = [(Just Brain), Nothing, Nothing,(Just Spleen)]
maybeMap :: (a -> b) -> Maybe a -> Maybe b
maybeMap func Nothing = Nothing
maybeMap func (Just val) = Just (func val)