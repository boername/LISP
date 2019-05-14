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



