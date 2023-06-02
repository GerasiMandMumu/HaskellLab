type Pizza = (Double, Double)

areaGivenDiameter :: Double -> Double
areaGivenDiameter size = pi * (size / 2)^2

costPerCm :: Pizza -> Double
costPerCm (size, cost) = cost / areaGivenDiameter size

describePizza :: Pizza -> String
describePizza (size, cost) = "Pizza size " ++ show size ++ " cheaper in price " ++ show costSqCm ++ " per square centimeter"
 where costSqCm = costPerCm (size, cost)

comparePizzas :: Pizza -> Pizza -> Pizza
comparePizzas p1 p2 = if costP1 < costP2 then p1 else p2
 where costP1 = costPerCm p1
       costP2 = costPerCm p2

listMain :: [String]
listMain = do
   size1 <- [10,20]
   cost1 <- [10.0,12.9]
   size2 <- [12,13]
   cost2 <- [17.4,19.8]
   let pizza1 = (size1,cost1)
   let pizza2 = (size2,cost2)
   let betterPizza = comparePizzas pizza1 pizza2
   return (describePizza betterPizza)