#lang racket

(require "TDA_system_20637464_BaezaMunoz")


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



(provide users)