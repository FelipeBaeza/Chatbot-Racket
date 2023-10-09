#lang racket




;-----------------------------------------------Constructor---------------------------------------------------------- 

#|
Nombre: Users.
Dominio: name (string).
Recorrido: user.
Descripcion: Función constructora que toma como argumento un name.
Retorna una lista que representa un usuario.
|#


(define (users name)
  name)

;------------------------------------------Pertenencia----------------------------------------------------

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

#|
Nombre: get-talk-system.
Dominio: system.
Recorrido: Lista.
descripcion: Funcion selectora que obtiene la lista donde se encuentra la interaccion del usuario con el chatbot.
|#


(define (get-talk-system system)
  (list-ref system 5))



#|
Nombre: get-login-user.
Dominio: system.
Recorrido: Lista.
descripcion: Funcion selectora que obtiene la lista del usuario logueado actualmente en el sistema.
|#

(define (get-login-user system)
  (list-ref system 4))

#|
Nombre: get-user.
Dominio: system.
Recorrido: Lista.
descripcion: Funcion selectora que obtiene la lista de los usuarios del sistema.
|#

(define (get-system-user system)
  (cadddr system))





;------------------------------------------------------Provide-------------------------------------------------
(provide (all-defined-out))
