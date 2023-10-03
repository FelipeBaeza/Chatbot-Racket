#lang racket

(require "TDA_option_20637464_BaezaMunoz.rkt")
(require "TDA_chatbot_20637464_BaezaMunoz.rkt")



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

#|
Nombre: get-user.
Dominio: system.
Recorrido: Lista.
descripcion: Funcion selectora que obtiene la lista de los usuarios del sistema.
|#

(define (get-system-user system)
  (cadddr system))

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

;-------------------------------------------------Provide------------------------------------------------
(provide (all-defined-out))
