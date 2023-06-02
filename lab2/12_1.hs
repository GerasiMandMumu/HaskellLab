--Напишите аналогичную canDonateTo функцию, принимающую в качестве аргументов двух пациентов вместо двух значений типа BloodType.

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

canDonateTo :: BloodType -> BloodType -> Bool
canDonateTo (BloodType O _) _ = True --Универсальный донор
canDonateTo _ (BloodType AB _) = True --Универсальный получатель
canDonateTo (BloodType A _) (BloodType A _) = True
canDonateTo (BloodType B _) (BloodType B _) = True
canDonateTo _ _ = False



type FirstName = String
type LastName = String
type PatientName = (String, String)

firstName :: PatientName -> String
firstName patient = fst patient
lastName :: PatientName -> String
lastName patient = snd patient
data Sex = Male | Female
sexInitial :: Sex -> Char
sexInitial Male = 'M'
sexInitial Female = 'F'

type MiddleName = String
data Name = Name FirstName LastName | NameWithMiddle FirstName MiddleName LastName

showName :: Name -> String
showName (Name f l) = f ++ " " ++ l
showName (NameWithMiddle f m l) = f ++ " " ++ m ++ " " ++ l

data Patient = Patient { name :: Name, sex :: Sex, age :: Int, height :: Int, weight :: Int, bloodType :: BloodType}

getName :: Patient -> Name
getName (Patient n _ _ _ _ _) = n
getAge :: Patient -> Int
getAge (Patient _ _ a _ _ _) = a
getBloodType :: Patient -> BloodType
getBloodType (Patient _ _ _ _ _ bt) = bt



myCanDonateTo :: Patient -> Patient -> Bool
myCanDonateTo patient1 patient2 = canDonateTo (bloodType patient1) (bloodType patient2)


main = do
 print $ canDonateTo patient1BT patient2BT
 
 let jackieSmith = Patient { name = Name "Джеки" "Смит"
						   , age = 43
						   , sex = Male
						   , height = 187
						   , weight = 82
						   , bloodType = BloodType O Neg }

 let janeSmith = Patient { name = Name "Джейн" "Смит"
						   , age = 40
						   , sex = Female
						   , height = 157
						   , weight = 52
						   , bloodType = BloodType A Pos }
						   
 print $ showBloodType (bloodType jackieSmith)
 
 
 print $ myCanDonateTo jackieSmith janeSmith
 
