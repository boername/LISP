;---------------------------------------------------Вариант 28------------------------------------------------------------------
;Задача 2. Определите функционал (MAPLIST fn список) для одного списочного аргумента.

(defun maplistSpecial (fn list)
	(cond
		((null list) nil)
		(t (cons (funcall fn list) (maplistSpecial fn (cdr list))))
	)
)

(print (maplistSpecial (lambda (x) (apply '+ x)) '(1 2 3 4 5)))
;(15 14 12 9 5)



;Задача 4. Определите функциональный предикат (КАЖДЫй пред список) , который истинен в том и только в том случае, когда,
;являющейся функциональным аргументом предикат пред истинен для всех элементов списка список.

(defun КАЖДЫЙ (predicate list)
    (null
         (mapcan (lambda (x)  
                   (if (funcall predicate x)NIL (list T))
                 ) list
         )
    )
)


(print(КАЖДЫЙ (lambda (x) (> x 0)) '(-1 -2 -3 1 2 3)))
;T

(print(КАЖДЫЙ (lambda (x) (>= x 0)) '(0 1 2 3)))
;T



;Задача 6. Определите фильтр (УДАЛитЬ-ЕСЛИ пред список), удаляющий из списка список
;все элементы, которые обладают свойством, наличие которого проверяет предикат пред

(defun Удалить-если (predicate lst)
    (mapcan (lambda(x)
                   (if (funcall predicate x)NIL (list x))
            ) lst)
)

(print (Удалить-если (lambda (x) (> x 11)) '(1 2 3 35 53 2 3)))
;(1 2 3 2 3)
(print (Удалить-если (lambda (x) (> x 11)) '(1 2 3 35 53 2 3)))
;(1 2 3 2 3)



;Задача 8. Напишите генератор натуральных чисел: 0, 1, 2, 3, 4, 5, ...

(defun generateNAT ()
	(let
		((x -1))
		(lambda ()(setq x (+ x 1)))
	)
)

(setq number (generateNAT))

(print(funcall number))
(print(funcall number))
(print(funcall number))
(print(funcall number))
(print(funcall number))
(print(funcall number))

;0 
;1 
;2 
;3 
;4 
;5 

