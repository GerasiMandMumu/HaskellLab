sfOffice name = if lastName < "L" then nameText ++ " - 1234, San Francisco, California, 94111"
                else nameText ++ " - 1234, San Francisco, California, 94109"
 where lastName = snd name
       nameText = fst name ++ " " ++ lastName


nyOffice name = nameText ++ ": 789, New York, New York, 10013"
 where nameText = (fst name) ++ " " ++ (snd name)

renoOffice name = nameText ++ " - 456, Rhino, Nevada, 89523"
 where nameText = snd name

washOffice name = "Dear, " ++ nameText ++ ": 1212, Washington, D.C. Columbia, 94999"
 where nameText = fst name


getLocationFunction location =
 case location of
  "ny" -> nyOffice
  "sf" -> sfOffice
  "reno" -> renoOffice
  "ws" -> washOffice
  _ -> (\name -> (fst name) ++ "" ++ (snd name))

addressLetter name location = locationFunction name
 where locationFunction = getLocationFunction location

   
main = do
 print $ addressLetter ("Bob","Smith") "ws"