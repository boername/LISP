-- 1. Реализовать на языке Haskell функцию вычисления суммы элементов списка.

sumL [] = 0
sumL (head:tail) = head + sumL tail

    
main = print $ sumL [1, 2, 3, 4, 5, 6, 7, 8, 9]
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



--6. Реализовать на языке Haskell функцию, которая преобразует исходный список в список,
--в котором элементы записаны в обратном к исходному порядке.

reverseList [] = []
reverseList (head:tail) = reverseList tail ++ [head]  
                    
main = print $ reverseList [1, 2, 3, 4, 5, 6 ,7, 8, 9]
--[9,8,7,6,5,4,3,2,1]



--8. Реализовать на языке Haskell функцию, которая увеличивает элементы исходного списка на единицу

plusOne [] = []
plusOne list = map (1+) list
                     
main = print $ plusOne [1, 2, 3, 4, 5, 6 ,7, 8, 9]

--[2,3,4,5,6,7,8,9,10]



--9. Реализовать на языке Haskell функцию, которая увеличивает элементы исходного списка в 10 раз.

x10 [] = []
x10 list = map (10*) list
                     
main = print $ x10 [1, 2, 3, 4, 5, 6 ,7, 8, 9]

--[10,20,30,40,50,60,70,80,90]








