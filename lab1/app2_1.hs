calcChange owed given = if change > 0
 then change
 else 0 
 where change = given - owed 
main = do
	print (calcChange 5 50)