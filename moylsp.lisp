;---------------------------------------------------Вариант 28------------------------------------------------------------------
;Задача 2. Определите функцию, возвращающую последни q элемент списка.

    (defun posl (lst); функция posl
        (cond 
        ((null (cdr lst)) (car lst)) ;проверяем пустой ли у списка хвост
        (t (posl (cdr lst))) ;вызываем функцию posl(рекурсия)
        ) 
    ) 

    ;(print (posl '(1 2 3 4 5)))
    ;5	

    ;(print (posl '(a b c)))
    ;C

    ;(print (posl '(a b (a c))))
    ;(A C)

    ;(print (posl '(1)))
    ;1

    ;(print (posl '()))
    ;NIL



;Задача 12 Определите функцию, заменяющую в исходном списке два подряд идущих
;одинаковых элемента одним.

(defun zamen (lst)
  ((lambda ( x y )    
        (cond ((null y) lst)
             ((equal x (cadr lst)) (cons x (zamen (cddr lst))))
             (t (cons x (zamen y )))))  
  (car lst) 
  (cdr lst )))


    ;(print (zamen '( a a b b c c c)))
    ;(A B C C)
    ;(print (zamen '( a a (b b c) (b b c) (b b c) c f f c)))
    ;(A (B B C) (B B C) C F C) 
    ;(print (zamen '(1 1 1 1 1 1 4 5 67 7 7)))
    ;(1 1 1 4 5 67 7)


;Задача 15 Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел  

(defun cross-prod (vect1 vect2)
   (if (or (null vect1)(null vect2)) 0   
   (+ (* (car vect1) (car vect2)) ( cross-prod(cdr vect1) (cdr vect2)))
   )
)

;(print(cross-prod '(1 2 3) '(4 5 7)))
;35


