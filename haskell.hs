-- 1. Реализовать на языке Haskell функцию вычисления суммы элементов списка.

sumL [] = 0
sumL (head:tail) = head + sumL tail

    
main = print $ sumL [1, 2, 3, 4, 5, 6, 7 ,8 ,9]
--45



--2. Реализовать на языке Haskell функцию нахохдения максимального элемента списка.

maxElement [] = 0
maxElement (head:tail) = max head (maxElement tail)

main = print $ maxElement [1, 2, 3, 4, 5, 6, 7, 8, 9]
--9



--3. Реализовать на языке Haskell функцию, удаляющую из исходного списка элементы с четными номерами.

deleteEven [] = []
deleteEven (head:tail) =  head : deleteEven (drop 1 tail)


main = print $ deleteEven [1, 2, 3, 4, 5, 6 ,7, 8, 9]
--[1,3,5,7,9]


