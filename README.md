# LISP
Все лабы по LISP здесь!

Запишите последовательности вызовов CAR и CDR, выделяющие из приведенных ниже списков символ цель. Упростите эти вызовы с помощью комбинации селекторов:
• (1 2 цель 3 4)
• ((1) (2 цель) (3 (4)))
• ((1 (2 (3 4 цель))))

```lisp
;gnu clisp 2.49


(print (caddr '(1 2 goal 3 4)))

(print (cadadr'((1) (2 goal) (3 (4))) ))

(print  (caddr (cadar (cdar '((1 (2 (3 4 goal))))))))
```  
   
       
           
              
Определите функцию, возвращающую последний элемент списка.

```lisp
;gnu clisp 2.49

(set 'lst '(1 2 3))


(defun posl (lst)
    
(cond ((null lst) (print nil)) ;проверка на пустой список 
((null(cdr lst)) (print (car lst))) ;проверка на одноэлементный список
(t (posl (cdr lst)))
)
)
```
