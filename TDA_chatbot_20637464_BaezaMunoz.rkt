#lang racket

(require "TDA_option_20637464_BaezaMunoz.rkt")
(require "TDA_flow_20637464_BaezaMunoz.rkt")


;--------------------------------------------------------Constructor-----------------
#|
Nombre: chatbot.
Dominio: chatbotID (int) X name (String) X welcomeMessage (String) X startFlowId(int) X  flows.
Recorrido: chatbot.
Descripcion: Función constructora que toma como argumento un chatbotID, un name, un welcomeMessage, un startFlowId y una lista de flows.
Retorna una lista que representa un chatbot. El flows es procesadas para eliminar duplicados antes de ser incluidas en la lista.
|#

(define (chatbot chatbotID name welcomeMessage startFlowId . flows)
  (list chatbotID name welcomeMessage startFlowId (eliminar-ids-duplicados flows)))



;------------------------------------------- Selector-------------------------------------------------


#|
Nombre: get-startFlowId-chatbot.
Dominio: chatbot.
Recorrido: Lista.
descripcion: Funcion selectora que obtiene la lista del IDflow del chatbot.
|#

(define (get-startFlowId-chatbot chatbot)
  (cadddr chatbot))


#|
Nombre: get-message-chatbot.
Dominio: chatbot.
Recorrido: mensaje.
descripcion: Funcion selectora que obtiene la lista del mensaje del chatbot.
|#

(define (get-message-chatbot chatbot)
  (caddr chatbot))


#|
Nombre: get-name-chatbot.
Dominio: chatbot.
Recorrido: name.
descripcion: Funcion selectora que obtiene la lista del name del chatbot.
|#

(define (get-name-chatbot chatbot)
  (cadr chatbot))


#|
Nombre: get-id-chatbot.
Dominio: chatbot.
Recorrido: id.
descripcion: Funcion selectora que obtiene la lista del id del chatbot.
|#

(define (get-id-chatbot chatbot)
  (car chatbot))

#|
Nombre: get-flows-chatbot.
Dominio: chatbot.
Recorrido: Lista .
descripcion: Funcion selectora que obtiene la lista de los flujos.
|#

(define (get-flows-chatbot chatbot)
  (last chatbot))