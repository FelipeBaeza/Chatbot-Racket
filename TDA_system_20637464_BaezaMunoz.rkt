#lang racket

(require "TDA_option_20637464_BaezaMunoz.rkt")
(require "TDA_chatbot_20637464_BaezaMunoz.rkt")
(require "TDA_user_20637464_BaezaMunoz.rkt")



;------------------------------------------Constructor--------------------------------------------------
#|
Nombre: system.
Dominio: name (string) X InitialChatbotCodeLink (Int) X chatbot.
Recorrido: system.
Descripcion: Función constructora que toma como argumento un name, un InitialChatbotCodeLink y una lista chatbot.
Retorna una lista que representa un system. El chatbot es procesadas para eliminar duplicados antes de ser incluidas en la lista.
|#

(define (system name InitialChatbotCodeLink . chatbot)
  (list name InitialChatbotCodeLink (eliminar-ids-duplicados chatbot) '() '() '() (current-seconds)))

;----------------------------------------Selectores----------------------------------------------------

#|
Nombre: get-name-system.
Dominio: system.
Recorrido: name.
descripcion: Funcion selectora que obtiene el nombre del sistema.
|#

(define (get-name-system system)
  (car system))
#|
Nombre: get-codelink-system.
Dominio: system.
Recorrido: InitialChatbotCodeLink.
descripcion: Funcion selectora que obtiene el InitialChatbotCodeLink del sistema.
|#


(define (get-codelink-system system)
  (cadr system))

#|
Nombre: get-chatbot-system.
Dominio: system.
Recorrido: Lista.
descripcion: Funcion selectora que obtiene la lista de los chatbots del sistema.
|#

(define(get-chatbot-system system)
  (caddr system))





;-----------------------------------------------Modificadores-------------------------------------------

#|
Nombre: system-add-chatbot.
Dominio: system x chatbot.
Recorrido: system.
Descripcion: Función modificadora que agrega un chatbot al sistema si es que el id del chatbot es distinto a los
ids de la lista de chatbot del sistema.
|#

(define (system-add-chatbot system chatbot)
  (if (member (get-id-chatbot chatbot) (map (lambda (sys) (car sys)) (get-chatbot-system system))) 
      system 
      (list (get-name-system system)
            (get-codelink-system system)
            (reverse (cons chatbot (reverse (get-chatbot-system system))))
            (get-system-user system)
            (get-login-user system)
            (get-talk-system system)
            (current-seconds)))) ; Agrega la opción al flujo si no existe



#|
Nombre: system-add-user.
Dominio: system x user.
Recorrido: system.
Descripcion: Función modificadora que agrega un usuario al sistema si es que el name del usuario es distinto a los
names de la lista de usuarios del sistema.
|#
(define (system-add-user system user)
  (if (member user (map car (get-system-user system)))
      system
      (list (get-name-system system)
            (get-codelink-system system)
            (get-chatbot-system system)
            (reverse (cons (users user) (reverse (get-system-user system)))) ; Modificado para agregar la función user
            (get-login-user system)
            (get-talk-system system)
            (current-seconds))))


#|
Nombre: system-login.
Dominio: system x user.
Recorrido: system.
Descripcion: Función modificadora que permite iniciar una sesión en el sistema si es que existe el usuario y
todavia no se iniciado sesion.
|#

(define (system-login system user)
  (if (equal? (register (map car (get-system-user system)) user) #t)
      (if (null? (get-login-user system))
          (list (get-name-system system)
                (get-codelink-system system)
                (get-chatbot-system system)
                (get-system-user system)
                (cons user (get-login-user system))
                (get-talk-system system)
                (current-seconds))
          system)
      system))


#|
Nombre: system-logout.
Dominio: system.
Recorrido: system.
Descripcion: Función modificadora que permite cerrar una sesion abierta.
|#
;listo
(define (system-logout system)
  (list (get-name-system system)
        (get-codelink-system system)
        (get-chatbot-system system)
        (get-system-user system)
        '()
        (get-talk-system system)
        (current-seconds)))


;-------------------------------------------------Provide------------------------------------------------
(provide (all-defined-out))
