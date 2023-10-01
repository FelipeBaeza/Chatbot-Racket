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
