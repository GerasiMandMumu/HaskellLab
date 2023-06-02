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


monadMain :: Monad m => m String
monadMain = do
   let pizza1 = (20.0,20.0)
   let pizza2 = (25.0,25.0)
   let betterPizza = comparePizzas pizza1 pizza2
   return (describePizza betterPizza)