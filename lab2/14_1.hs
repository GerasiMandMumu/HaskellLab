data Team = TS | PSG | Entity deriving Enum

instance Ord Team where
 compare a b = compare (fromEnum a) (fromEnum b) 
 
instance Eq Team where
 (==) a b = (fromEnum a) == (fromEnum b) 