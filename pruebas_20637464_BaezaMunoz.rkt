#lang racket
(require "TDA_option_20637464_BaezaMunoz.rkt");Optiones
(require "TDA_flow_20637464_BaezaMunoz.rkt");Flows
(require "TDA_chatbot_20637464_BaezaMunoz.rkt");Chatbot
(require "TDA_system_20637464_BaezaMunoz.rkt")
(require "TDA_user_20637464_BaezaMunoz.rkt")

;Script N°1
;Ejemplo de un sistema de chatbots basado en el esquema del enunciado general
;Chabot0
(define op1 (option  1 "1) Viajar" 1 1 "viajar" "turistear" "conocer"))
(define op2 (option  2 "2) Estudiar" 2 1 "estudiar" "aprender" "perfeccionarme"))
(define f10 (flow 1 "Flujo Principal Chatbot 1\nBienvenido\n¿Qué te gustaría hacer?" op1 op2 op2 op2 op2 op1)) ;solo añade una ocurrencia de op2 y op1
(define f11 (flow-add-option f10 op1)) ;se intenta añadir opción duplicada            
(define cb0 (chatbot 0 "Inicial" "Bienvenido\n¿Qué te gustaría hacer?" 1 f10 f10 f10 f10))  ;solo añade una ocurrencia de f10
;Chatbot1
(define op3 (option 1 "1) New York, USA" 1 2 "USA" "Estados Unidos" "New York"))
(define op4 (option 2 "2) París, Francia" 1 1 "Paris" "Eiffel"))
(define op5 (option 3 "3) Torres del Paine, Chile" 1 1 "Chile" "Torres" "Paine" "Torres Paine" "Torres del Paine"))
(define op6 (option 4 "4) Volver" 0 1 "Regresar" "Salir" "Volver"))
;Opciones segundo flujo Chatbot1
(define op7 (option 1 "1) Central Park" 1 2 "Central" "Park" "Central Park"))
(define op8 (option 2 "2) Museos" 1 2 "Museo"))
(define op9 (option 3 "3) Ningún otro atractivo" 1 3 "Museo"))
(define op10 (option 4 "4) Cambiar destino" 1 1 "Cambiar" "Volver" "Salir")) 
(define op11 (option 1 "1) Solo" 1 3 "Solo")) 
(define op12 (option 2 "2) En pareja" 1 3 "Pareja"))
(define op13 (option 3 "3) En familia" 1 3 "Familia"))
(define op14 (option 4 "4) Agregar más atractivos" 1 2 "Volver" "Atractivos"))
(define op15 (option 5 "5) En realidad quiero otro destino" 1 1 "Cambiar destino"))
(define f20 (flow 1 "Flujo 1 Chatbot1\n¿Dónde te Gustaría ir?" op3 op4 op5 op6))
(define f21 (flow 2 "Flujo 2 Chatbot1\n¿Qué atractivos te gustaría visitar?" op7 op8 op9 op10))
(define f22 (flow 3 "Flujo 3 Chatbot1\n¿Vas solo o acompañado?" op11 op12 op13 op14 op15))
(define cb1 (chatbot 1 "Agencia Viajes"  "Bienvenido\n¿Dónde quieres viajar?" 1 f20 f21 f22))
;Chatbot2
(define op16 (option 1 "1) Carrera Técnica" 2 1 "Técnica"))
(define op17 (option 2 "2) Postgrado" 2 1 "Doctorado" "Magister" "Postgrado"))
(define op18 (option 3 "3) Volver" 0 1 "Volver" "Salir" "Regresar"))

(define f30 (flow 1 "Flujo 1 Chatbot2\n¿Qué te gustaría estudiar?" op16 op17 op18))
(define cb2 (chatbot 2 "Orientador Académico"  "Bienvenido\n¿Qué te gustaría estudiar?" 1 f30))
;Sistema
(define s0 (system "Chatbots Paradigmas" 0 cb0 cb0 cb0 cb1 cb2))
(define s1 (system-add-chatbot s0 cb0)) ;igual a s0
(define s2 (system-add-user s1 "user1"))
(define s3 (system-add-user s2 "user2"))
(define s4 (system-add-user s3 "user2"))
(define s5 (system-add-user s4 "user3"))
(define s6 (system-login s5 "user8"))
(define s7 (system-login s6 "user1"))
(define s8 (system-login s7 "user2"))
(define s9 (system-logout s8))
(define s10 (system-login s9 "user2"))
(define s11 (system-talk-norec s10 "hola"))
(define s12 (system-talk-rec s11 "1"))
(define s13 (system-talk-norec s12 "1"))
(define s14 (system-talk-rec s13 "Museo"))
(define s15 (system-talk-norec s14 "1"))
(define s16 (system-talk-rec s15 "3"))
(define s17 (system-talk-norec s16 "5"))
(display (system-synthesis s17 "user2"))


;Script N°2

;Chabot 00
(define opt1 (option  1 "1) Actividad fisica" 1 1 "Deporte" "Cardio" "Pesas"))
(define opt2 (option  2 "2) Jugar" 2 1 "Futbol" "Basket" "Voley"))
(define opt3 (option  3 "3) Relajar" 2 1 "Jugar lol" "Ver anime" "Dormir"))
(define flo1 (flow 1 "Flujo Principal Chatbot 1\nBienvenido\n¿Qué actividad te gustaria realizar?" opt1 opt2 )) ;solo añade una ocurrencia de op2 y op1
(define flo2 (flow-add-option flo1 opt3)) ;se intenta añadir opción duplicada            
(define cb00 (chatbot 0 "Inicial" "Bienvenido\n¿Qué te gustaría hacer?" 1 flo1 flo2))  ;solo añade una ocurrencia de f10

;chatbot 01
;Optiones para flujo 1
(define opt4 (option 1 "1) escalar" 1 2 "trepar" "subir" "colgarse"))
(define opt5 (option 2 "2) Nadar" 1 1 "bucear" "flotar"))
(define opt6 (option 3 "3) trotar" 1 1 "caminar" "correr" "moverme" ))
(define opt7 (option 4 "4) Volver" 0 1 "Regresar" "Salir" "Volver"))
;Opciones para flujo 2
(define opt8 (option 1 "1) Montaña" 1 2 "monte" "Alto" "lugar tierroso"))
(define opt9 (option 2 "2) Aeroplark" 1 2 "ciudad" "Lugar seguro"))
(define opt10 (option 3 "3) Ningún otro atractivo" 1 3 ))
(define opt11 (option 4 "4) Cambiar destino" 1 1 "Cambiar" "Volver" "Salir"))
;Opciones para flujo 3
(define opt12 (option 1 "1) Solo" 1 3 "Solo")) 
(define opt13 (option 2 "2) En pareja" 1 3 "Pareja"))
(define opt14 (option 3 "3) En familia" 1 3 "Familia"))
(define opt15 (option 4 "4) Agregar más atractivos" 1 2 "Volver" "Atractivos"))
(define opt16 (option 5 "5) En realidad quiero otro destino" 1 1 "Cambiar destino"))
;Flujos de chatbot 01
(define flo3 (flow 1 "Flujo 1 Chatbot1\n¿Dónde te Gustaría hacer?" opt4 opt5 opt6 opt7))
(define flo4 (flow 2 "Flujo 2 Chatbot1\n¿Donde lo quieres hacer?" opt8 opt9 opt10 opt11))
(define flo5 (flow 3 "Flujo 3 Chatbot1\n¿Vas solo o acompañado?" opt12 opt13 opt14 opt15 opt16))
(define cb01 (chatbot 1 "Actividades deportida"  "Bienvenido\n¿Dónde quieres viajar?" 1 flo3 flo4 flo5))
;optiones para el flujo
(define opt17 (option 1 "1) Futbol" 2 1 "Técnica"))
(define opt18 (option 2 "2) Voley" 2 1 "Doctorado" "Magister" "Postgrado"))
(define opt19 (option 3 "3) Volver" 0 1 "Volver" "Salir" "Regresar"))
;flujos del chatbot 02
(define flo6 (flow 1 "Flujo 1 Chatbot2\n¿Qué te gustaría estudiar?" opt17 opt18 opt19))
(define cb02 (chatbot 2 "Juegos"  "Bienvenido\n¿Qué te gustaría estudiar?" 1 flo6))
;optiones para el flujo
(define opt20 (option 1 "1) jugar en el pc" 2 1 "lol" "gtav" "pou"))
(define opt21 (option 2 "2) ver una serie" 2 1 "one piece" "Baki" "Naruto"))
(define opt22 (option 3 "3) Volver" 0 1 "Volver" "Salir" "Regresar"))
;flujos del chatbot 03
(define flo7 (flow 1 "Flujo 1 Chatbot2\n¿Dime cuales de las opciones te gustaria empezar?" opt20 opt21 opt22))
(define cb03 (chatbot 3 "Relajos"  "Bienvenido\n¿Qué con que te gustaría relajarte?" 1 flo7))
;sistema
(define s00 (system "Chatbots Inventado" 0 cb00 cb01 cb03))
(define s01 (system-add-chatbot s00 cb03)) ;igual a s0
(define s02 (system-add-user s01 "Checopete"))
(define s03 (system-add-user s02 "Popin"))
(define s04 (system-add-user s03 "Profesor rosa"))
(define s05 (system-add-user s04 "Pancho Saavedra"))
(define s06 (system-login s05 "Pedro"))
(define s07 (system-login s06 "Popin"))
(define s08 (system-login s07 "pancho Saavedra"))
(define s09 (system-logout s08))
(define s010 (system-login s09 "Popin"))
(define s011 (system-talk-norec s010 "wena"))
(define s012 (system-talk-rec s011 "1"))
(define s013 (system-talk-norec s012 "2"))
(define s014 (system-talk-rec s013 "2"))
(define s015 (system-talk-norec s014 "2"))
(define s016 (system-talk-rec s015 "1"))
(define s017 (system-talk-norec s016 "4"))
;(display (system-synthesis s017 "Popin"))

