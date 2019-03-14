;gnu clisp 2.49

    (defun posl (lst); ������� posl
        (cond 
        ((null (cdr lst)) (car lst)) ;��������� ������ �� � ������ �����
        (t (posl (cdr lst))) ;�������� ������� posl(��������)
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