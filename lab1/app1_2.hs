toPart recipient = "Здравствуйте, " ++ recipient ++ "!\n"
bodyPart document = "Высылаю " ++ document ++ ".\n"
fromPart author = "\nС уважением, "++author

createEmail recipient document author = toPart recipient ++
                                        bodyPart document ++
                                        fromPart author

main = do
	putStrLn "Кто получатель этого письма?"
	recipient <- getLine
	putStrLn "Название документа в дательном падеже:"
	document <- getLine
	putStrLn "Кто автор этого письма?"
	author <- getLine
	putStrLn "\n"
	putStrLn (createEmail recipient document author)