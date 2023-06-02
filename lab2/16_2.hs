type Length = Double
type Width = Double
type Radius = Double

data Shape = Circle Radius | Square Length | Rectangle Length Width

perimeter :: Shape -> Double
perimeter (Circle r) = 2*pi*r 
perimeter (Square l) = 4*l
perimeter (Rectangle l w) = 2*(l + w) 

area :: Shape -> Double
area (Circle r) = pi*r*r
area (Square l) = l*l
area (Rectangle l w) = l*w


main = do
 print (area (Circle 12.3))
 print (area(Square 2.0))
 print (area(Rectangle 1.0 3.0))
 
 print(perimeter (Circle 12.0))
 print(perimeter (Square 2.0))
 print(perimeter (Rectangle 1.0 3.0))