;gnu clisp 2.49

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