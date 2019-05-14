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
	(cond 
		((null list) t)
		((null (funcall predicate (car list))) nil)
		(t (КАЖДЫЙ predicate (cdr list)))
	)
)

(print(КАЖДЫЙ (lambda (x) (> x 0)) '(-3 -2 -1 0 1 2 3)))
; T




