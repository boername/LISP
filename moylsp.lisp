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
