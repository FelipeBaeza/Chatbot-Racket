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


;-------------------------------------------------Provide------------------------------------------------
(provide system)