import Control.Monad

data Name = Name { firstName ::String, lastName :: String }

instance Show Name where
 show (Name first last) = mconcat [first," ",last]
 
data GradeLevel = Freshman
 | Sophmore
 | Junior
 | Senior deriving (Eq,Ord,Enum,Show) 


data Student = Student
 { studentId :: Int
 , gradeLevel :: GradeLevel
 , studentName :: Name } deriving Show

data Teacher = Teacher { teacherId :: Int, teacherName :: Name } deriving Show

data Course = Course { courseId :: Int, courseTitle :: String, teacher :: Int } deriving Show


students :: [Student]
students = [(Student 1 Senior (Name "Одри" "Лорд"))
 ,(Student 2 Junior (Name "Лесли" "Силко"))
 ,(Student 3 Freshman (Name "Джудит" "Батлер"))
 ,(Student 4 Senior (Name "Ги" "Дебор"))
 ,(Student 5 Sophmore (Name "Жан" "Бодрийяр"))
 ,(Student 6 Junior (Name "Юлия" "Кристева"))]

teachers :: [Teacher]
teachers = [Teacher 100 (Name "Симона" "де Бовуар"), Teacher 200 (Name "Сьюзен" "Зонтаг")]

courses :: [Course]
courses = [Course 101 "Французский язык" 100,Course 201 "Английский язык" 200]

_select :: (a -> b) -> [a] -> [b]
_select prop vals = do
 val <- vals
 return (prop val)



_where :: (a -> Bool) -> [a] -> [a]
_where test vals = do
 val <- vals
 guard (test val)
 return val

_join data1 data2 prop1 prop2 = do
 d1 <- data1
 d2 <- data2
 let dpairs = (d1,d2)
 guard ((prop1 (fst dpairs)) == (prop2 (snd dpairs)))
 return dpairs

startsWith :: Char -> String -> Bool
startsWith char string = char == (head string)

joinData = (_join teachers courses teacherId teacher)
whereResult = _where ((== "Английский язык") . courseTitle . snd) joinData
selectResult = _select (teacherName . fst) whereResult