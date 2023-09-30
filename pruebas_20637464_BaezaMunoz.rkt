#lang racket
(require "TDA_option_20637464_BaezaMunoz.rkt");Optiones
(require "TDA_flow_20637464_BaezaMunoz.rkt");Flows
(require "TDA_chatbot_20637464_BaezaMunoz.rkt");Chatbot

;Ejemplo de un sistema de chatbots basado en el esquema del enunciado general
;Chabot0
(define op1 (option  1 "1) Viajar" 1 1 "viajar" "turistear" "conocer"))
(define op2 (option  2 "2) Estudiar" 2 1 "estudiar" "aprender" "perfeccionarme"))
(define f10 (flow 1 "Flujo Principal Chatbot 1\nBienvenido\n¿Qué te gustaría hacer?" op1 op2 op2 op2 op2 op1)) ;solo añade una ocurrencia de op2 y op1
(define f11 (flow-add-option f10 op1)) ;se intenta añadir opción duplicada            
(define cb0 (chatbot 0 "Inicial" "Bienvenido\n¿Qué te gustaría hacer?" 1 f10 f10 f10 f10))  ;solo añade una ocurrencia de f10
