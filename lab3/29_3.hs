startingBeer :: [Int]
startingBeer = [6, 12]

remainingBeer :: [Int]
remainingBeer = (\count -> count - 4) <$> startingBeer

guests :: [Int]
guests = [2,3]

totalPeople :: [Int]
totalPeople = (+ 2) <$> guests

beersPerGuest :: [Int]
beersPerGuest = [3,4]

totalBeersNeeded :: [Int]
totalBeersNeeded = (pure (*)) <*>  beersPerGuest <*> totalPeople

beersToPurchase :: [Int]
beersToPurchase = (pure (-)) <*> totalBeersNeeded  <*> remainingBeer