;1. Определите макрос, который возвращает свой вызов.

(defmacro macros1 (&rest x)
    `'(macros1 ,@x))
 
(print (macros1 7 77 3 4 5 67 1)) 


; (macros1 7 77 3 4 5 67 1)



;3. Определите лисповскую форму (IF условие p q) в виде макроса.

(defmacro macroIF (условие р q)
    `(if ,условие ,р ,q))
    
    
(setq x '(a b c 1 2 3))

(print (macroIF (atom x) 'T 'F))
;F
(print (macroIF (listp x) 'T 'F))
;T
