module Template where

import Data.List

--1
null' x
  | x == [] = True
  | otherwise = False

--2
fst' (a,b) = a

--3
snd' (a,b) = b

--4
length' [] = 0
length' (x:xs) = 1 + length' xs

--5
take' _ [] = []
take' 0 _ = []
take' n (x:xs) = x : take' (n-1) xs

--6
drop' 0 xs = xs
drop' _ [] = []
drop' n (x:xs) = drop' (n-1) xs

--7
and' [x,y]
  | [x,y] == [True,True] = True
  | otherwise = False

--8
or' [x,y]
  | [x,y] == [False,False] = False
  | otherwise = True

--9
head' (x:xs) = x

--10
tail' [x] = []
tail' (x:xs) = xs

--11
max' a b = if a > b then a else b

--12
min' a b = if a < b then a else b

--13
sum' [] = 0
sum' [x] = x
sum' (x:xs) = x + sum' xs

--14
product' [] = 1
product' [x] = x
product' (x:xs) = x * product' xs

--15
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

--16
init' [x] = []
init' (x:xs) = [x] ++ init' xs

--17
last' [x] = x
last' (x:xs) = last' xs

--18
elem' n (x:xs)
  | n == x = True
  | otherwise = False

--19
notElem' n (x:xs)
  | n == x = False
  | otherwise = True

--20
intersperse' n [] = []
intersperse' n [x] = [x]
intersperse' n (x:xs) = [x] ++ [n] ++ intersperse' n (xs)

--21
intercalate' [] [[]] = []
intercalate' [x] [[xs]] = [xs]

--22
delete' n [] = []
delete' n (x:xs)
  | x == n = xs
  | otherwise = [x] ++ delete' n (xs)

--23
deleteAll (x:xs) = []

--24
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = [(x,y)] ++ zip' (xs) (ys)

--25
zip3' [] _ _ = []
zip3' _ [] _ = []
zip3' _ _ [] = []
zip3' (x:xs) (y:ys) (z:zs) = [(x,y,z)] ++ zip3' (xs) (ys) (zs)

--26
zipWith' a [] _ = []
zipWith' a _ [] = []
zipWith' a (x:xs) (y:ys) = ([a x y]) ++ zipWith' a xs ys

--27
map' f [] = []
map' f (x:xs) = f x : map' f xs

--28
concat' [[]] = []
concat' [(x:xs)] = (x:xs)

--29
unlines' [] = ""
unlines' [""] = "\n"
unlines' (a:b) = a ++ "\n" ++ unlines' b

--30
unwords' [] = ""
unwords' [""] = ""
unwords' (a:b) = a ++ unwords' b

--31
words' "" = []
words' ("\n") = []
words' "x" = ["x"]
words' (x:xs) = [x:xs]
