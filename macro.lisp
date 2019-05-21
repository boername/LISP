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



;4. Определите в виде макроса форму (FIF тест отр нуль полож).

(defmacro FIF(тест отр нол пол)
     `(cond
            ((plusp ,тест ) ,пол)
            ((zerop ,тест ) ,нол)
            ((minusp ,тест) ,отр)
           
      ) 
)


(print (FIF (- 1 1) 'отр  'нуль  'полож))
;НУЛЬ
(print (FIF (- 2 1) 'отр  'нуль  'полож))
;ПОЛОЖ
(print (FIF (- 1 3) 'отр  'нуль  'полож))
;ОТР
