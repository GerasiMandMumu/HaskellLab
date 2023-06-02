myelem n lst = length flst /= 0
 where flst = filter (==n) lst

main = do
 print (myelem 1 [2, 3, 4, 5])