type Pizza = (Double, Double)

areaGivenDiameter :: Double -> Double
areaGivenDiameter size = pi * (size / 2)^2

costPerCm :: Pizza -> Double
costPerCm (size, cost) = cost / areaGivenDiameter size

describePizza :: Pizza -> String
describePizza (size, cost) = "Пицца размера " ++ show size ++ " дешевле по цене " ++ show costSqCm ++ " за квадратный сантиметр"
 where costSqCm = costPerCm (size, cost)

comparePizzas :: Pizza -> Pizza -> Pizza
comparePizzas p1 p2 = if costP1 < costP2 then p1 else p2
 where costP1 = costPerCm p1
       costP2 = costPerCm p2

main :: IO ()
main = putStrLn "What is the size of pizza 1" >>
       getLine >>=
       (\size1 ->
         putStrLn "What is the cost of pizza 1" >>
         getLine >>=
         (\cost1 ->
           putStrLn "What is the size of pizza 2" >>
           getLine >>=
           (\size2 ->
             putStrLn "What is the cost of pizza 2" >>
             getLine >>=
             (\cost2 ->
               (\pizza1 ->
                 (\pizza2 ->
                   (\betterPizza -> putStrLn (describePizza betterPizza)) (comparePizzas pizza1 pizza2)
                 )(read size2,read cost2)
               )(read size1, read cost1)
             ))))