#lang racket

;--------------------------------------------Constructores---------------------------------------------------


#|
Nombre: option.
Dominio: code (Int)  X message (String)  X ChatbotCodeLink (Int) X InitialFlowCodeLink (Int) X Keyword (string).
Recorrido: option.
Descripcion: Funcion constructora que toma como argumento un code, un massage, un chatbotcodelink, un initialflowcodelink y los keyword
y retorna una lista que representa una opcion.
|#

(define (option Code Message ChatbotCodeLink InitialFlowCodeLink . Keyword)
  (list Code Message ChatbotCodeLink InitialFlowCodeLink Keyword))


;--------------------------------------------------Modificiadores-----------------------------------------------


#|
Nombre: eliminar-ids-duplicados.
Dominio: Lista.
Recorrido: Lista.
Tipo-recursion: Recursion natural.
Descripcion: Función modificadora que elimina los elementos que tengan IDs duplicados.
|#

(define (eliminar-ids-duplicados lista)
  (if (null? lista)
      '() 
      (if (member (caar lista) (map car (cdr lista)))
          (eliminar-ids-duplicados (cdr lista))
          (cons (car lista) (eliminar-ids-duplicados (cdr lista))))))


;----------------------------------------------------Selectores---------------------------------------------------

#|
Nombre: get-id-option.
Dominio: Option.
Recorrido: ID.
Descripcion: Funcion selectora que consigue el id de option.
|#
(define (get-id-option option) 
  (car option))




;Provide

(provide option)
(provide eliminar-ids-duplicados)
(provide get-id-option)
