-- 1. Реализовать на языке Haskell функцию вычисления суммы элементов списка.

sumL :: [Int] -> Int
sumL [] = 0
sumL (x:xN) = x + sumL xN

    
main = print $ sumL [1, 2, 3, 4, 5, 6, 7 ,8 ,9]
--45



