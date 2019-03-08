{-
  Haskell problem selections
  h-99 1/???
  --------------------------
  Overview:
    List
    Algorithm
    Binary Tree
-}

--1 Last elem in a list myLast
myLast :: [a] -> a
myLast [] = error "No end for empty lists!"
myLast [x] = x
myLast (_:xs) = myLast xs

--31 check if an int is prime
isPrime :: (Integral a) => a -> Bool
isPrime n | n < 4 = n > 1
isPrime n = all ((/=0).mod n) $ 2:3:[x + i | x <- [6,12..s], i <- [-1,1]]
            where s = floor $ sqrt $ fromIntegral n
