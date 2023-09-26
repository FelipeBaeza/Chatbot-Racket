#lang racket

(require "TDA_option_20637464_BaezaMunoz.rkt")

;------------------------------------------------Constructores----------------------------------------
#|
Nombre: flow.
Dominio: id (int) X name-msg (String)  X Option (Lista deopciones).
Recorrido: flow.
Descripcion: Función constructora que toma como argumento un id, un name y una lista de options.
Retorna una lista que representa un flujo. Las opciones son procesadas para eliminar duplicados antes de ser incluidas en la lista del flujo.
|#
(define (flow id name-msg . options)
  (list id name-msg (eliminar-ids-duplicados options)))


;---------------------------------------------------Modificadores------------------------------------------------
#|
Nombre: flow-add-option.
Dominio: flow X option.
Recorrido: flow.
descripcion: Funcion modificadora que agrega opciones si es que el id de la opcion no es igual a alguno id de la lista optines.
|#
(define (flow-add-option flow option)
  (if (member (get-id-option option) (map (lambda (opt) (car opt)) (get-options-flow flow))) ; Compara el ID de la opción
      flow ; Devuelve el flujo original si la opción ya existe
      (list (get-id-flow flow)
            (get-name-flow flow)
            (reverse (cons option (reverse (get-options-flow flow))))))) ; Agrega la opción al flujo si no existe





;----------------------------------------------Selectores-------------------------------------------

#|
Nombre: get-name-flow.
Dominio: flow.
Recorrido: name.
descripcion: Funcion selectora que obtiene la lista del nombre del flujo.
|#
;selecetor
(define (get-name-flow flow)
  (cadr flow))

#|
Nombre: get-id-flow.
Dominio: flow.
Recorrido: id.
descripcion: Funcion selectora que obtiene la lista del id del flujo.
|#
(define (get-id-flow flow)
  (car flow))

#|
Nombre: get-options-flow.
Dominio: flow.
Recorrido: Lista.
descripcion: Funcion selectora que obtiene la lista de optiones del flujo.
|#
;selector
(define (get-options-flow flow)
  (caddr flow))


;provide-----------------------------
(provide flow)
(provide flow-add-option)
(provide get-id-flow)


