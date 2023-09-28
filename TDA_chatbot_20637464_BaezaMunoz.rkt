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



;-------------------------------------------