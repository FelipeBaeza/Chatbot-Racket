#lang racket


;------------------------------------------Constructores------------------------------
#|
Nombre: flow.
Dominio: id (int) X name-msg (String)  X Option (Lista deopciones).
Recorrido: flow.
Descripcion: Función constructora que toma como argumento un id, un name y una lista de options.
Retorna una lista que representa un flujo. Las opciones son procesadas para eliminar duplicados antes de ser incluidas en la lista del flujo.
|#
(define (flow id name-msg . options)
  (list id name-msg (eliminar-ids-duplicados options)))

;------------------------------------------Selectores-------------------------------------------

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

