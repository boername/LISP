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


;Задача 27. Определите функцию, которая, чередуя элементы списков (a b...) и (1 2...), 
;образует новый список (a 1 b 2 ...). 

(defun alternation (lst1 lst2) 
    (cond 
    ((null lst1) nil) 
    ((null lst2) nil) 
    (t 
    (cons 
    (car lst1) 
    (cons (car lst2) (alternation (cdr lst1) (cdr lst2)))
 )))) 

    ;(print ( alternation '(B C) '(12 15))) 
    ;(B 12 C 15) 

    ;(print ( alternation '(Q W E R T Y) '(1 2 3 4 5 6))) 
    ;(Q 1 W 2 E 3 R 4 T 5 Y 6)

    ;(print ( alternation '() '()))
    ;NIL


;Задача 48.Напишите предикат (ИМЕЕТ-СВОЙСТВО символ свойство), который проверяет, обладает ли символ данным свойством.

  (defun ИМЕЕТ-СВОЙСТВО(x property) 
  (Поиск-свойства property (symbol-plist x)) 
  ) 

    (defun Поиск-свойства(property list) 
    (cond 
    ((null list) nil) 
    ((equal property (car list)) T) 
    (t (Поиск-свойства property (cddr list))) 
  )) 

  (setf ( get 'car 'color) 'black ) 
  (setf ( get 'car 'maxspeed) '180 ) 
  (setf ( get 'car 'mark ) 'toyota ) 

(print(ИМЕЕТ-СВОЙСТВО 'car 'color))
;T 
(print(ИМЕЕТ-СВОЙСТВО 'car 'maxspeed))
;T 
(print(ИМЕЕТ-СВОЙСТВО 'car 'country))
;NIL


;Задача 47: Определите функцию УДАЛИТЬ-ВСЕ-СВОЙСТВА, которая удаляет все свойства символа. 

(defun УДАЛИТЬ-ВСЕ-СВОЙСТВА (ОБЪЕКТ) 
((lambda (СПИСОК-СВОЙСТВ) 
(cond 
((null СПИСОК-СВОЙСТВ) nil) 
(t (remprop ОБЪЕКТ (car СПИСОК-СВОЙСТВ)) (УДАЛИТЬ-ВСЕ-СВОЙСТВА ОБЪЕКТ)) 
)) (symbol-plist ОБЪЕКТ) 
) 
) 


(setq ОБЪЕКТ 'NAME1) 
(setf (get 'NAME1 'name) 'Vova) 
(setf (get 'NAME1 'weight) '62) 
(setf (get 'NAME1 'hair) 'black) 
(setf (get 'NAME1 'hobby) 'basketball)


(print (symbol-plist 'NAME1))
;(BEHAVIOR PLAYFUL COLOR BLACK-AND-WHITE SIZE BIG NAME VASILIY) 

;(УДАЛИТЬ-ВСЕ-СВОЙСТВА 'NAME1) 
;(print (symbol-plist 'NAME1))
;NIL
