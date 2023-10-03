#lang racket

(require "TDA_system_20637464_BaezaMunoz.rkt")


;-----------------------------------------------Constructor---------------------------------------------------------- 

#|
Nombre: Users.
Dominio: name (string).
Recorrido: list.
Descripcion: Función constructora que toma como argumento un name.
Retorna una lista que representa un usuario y una lista vacia .
|#


(define (users name)
  (list  name '()))

#|
Nombre: register.
Dominio: system x user.
Recorrido: booleano.
descripcion: Funcion de pertenencia que verifica si el usuario se encuentra en el sistema.
|#
;listo
(define (register system user)
  (if (member user  system) #t #f))



;----------------------------------------------Selectores-----------------------------------------------------------




;------------------------------------------------------Provide-------------------------------------------------
(provide (all-defined-out))
