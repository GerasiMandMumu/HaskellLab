data RhType = Pos | Neg
data ABOType = A | B | AB | O

data BloodType = BloodType ABOType RhType

patient1BT :: BloodType
patient1BT = BloodType A Pos
patient2BT :: BloodType
patient2BT = BloodType O Neg
patient3BT :: BloodType
patient3BT = BloodType AB Pos

showRh :: RhType -> String
showRh Pos = "+"
showRh Neg = "-"
showABO :: ABOType -> String
showABO A = "A"
showABO B = "B"
showABO AB = "AB"
showABO O = "O"
showBloodType :: BloodType -> String
showBloodType (BloodType abo rh) = showABO abo ++ showRh rh


type FirstName = String
type LastName = String
type MiddleName = String
type PatientName = (String, String)

firstName :: PatientName -> String
firstName patient = fst patient
lastName :: PatientName -> String
lastName patient = snd patient
data Sex = Male | Female
sexInitial :: Sex -> Char
sexInitial Male = 'M'
sexInitial Female = 'F'


data Name = Name FirstName LastName | NameWithMiddle FirstName MiddleName LastName
data Patient = Patient { name :: Name, sex :: Sex, age :: Int, height :: Int, weight :: Int, bloodType :: BloodType}

getName :: Patient -> Name
getName (Patient n _ _ _ _ _) = n
getAge :: Patient -> Int
getAge (Patient _ _ a _ _ _) = a
getBloodType :: Patient -> BloodType
getBloodType (Patient _ _ _ _ _ bt) = bt

showName :: Name -> String
showName (Name f l) = f ++ " " ++ l
showName (NameWithMiddle f m l) = f ++ " " ++ m ++ " " ++ l

showSex Male = "Мужчина"
showSex Female = "Женщина"

patientSummary :: Patient -> String
patientSummary patient = "**************\nИмя пациента: " ++ showName (getName patient) ++ "\nПол: " ++ showSex (sex patient) ++ "\nВозраст: " ++ show (age patient) ++ "\nРост: " ++ show (height patient) ++ "см" ++ "\nВес: " ++ show (weight patient) ++ "кг" ++ "\nТип крови: " ++ showBloodType (bloodType patient) ++ "\n**************"



main = do
 let jackieSmith = Patient { name = Name "Джеки" "Смит"
						   , age = 43
						   , sex = Male
						   , height = 187
						   , weight = 82
						   , bloodType = BloodType O Neg }
 

 putStrLn (patientSummary jackieSmith)
