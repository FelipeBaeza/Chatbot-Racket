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

;----------------------------------------------Selectores-----------------------------------------------------------

#|
Nombre: get-login-user.
Dominio: system.
Recorrido: Lista.
descripcion: Funcion selectora que obtiene la lista del usuario logueado actualmente en el sistema.
|#

(define (get-login-user system)
  (list-ref system 4))

#|
Nombre: get-talk-system.
Dominio: system.
Recorrido: Lista.
descripcion: Funcion selectora que obtiene la lista donde se encuentra la interaccion del usuario con el chatbot.
|#


(define (get-talk-system system)
  (list-ref system 5))


;------------------------------------------------------Provide-------------------------------------------------
(provide users)