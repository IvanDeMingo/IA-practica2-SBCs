(load "protege_files/ontologia.pont")
;;;(load-instances "protege_files/ontologia.pins")

;;;--------------------------------------------------------------------------;;;
;;;------------------------------- TEMPLATES --------------------------------;;;
;;;--------------------------------------------------------------------------;;;

(deftemplate Cliente
	(slot PrecioMin (type FLOAT))
	(slot PrecioMax (type FLOAT))
)

;;;--------------------------------------------------------------------------;;;
;;;------------------------- FUNCIONES AUXILIARES ---------------------------;;;
;;;--------------------------------------------------------------------------;;;

(deffunction pregunta-general (?pregunta)
	(format t "¿%s?" ?pregunta)
	(bind ?respuesta (read))
	?respuesta
)

(deffunction pregunta (?pregunta $?valores-permitidos)
	(progn$
		(?var ?valores-permitidos)
		(lowcase ?var))
	(format t "¿%s? (%s) " ?pregunta (implode$ ?valores-permitidos))
	(bind ?respuesta (read))
	(while (not (member (lowcase ?respuesta) ?valores-permitidos)) do
		(format t "¿%s? (%s) " ?pregunta (implode$ ?valores-permitidos))
		(bind ?respuesta (read))
	)
	?respuesta
)

(deffunction si-o-no-p (?pregunta)
	(bind ?respuesta (pregunta ?pregunta si no s n))
	(if (or (eq (lowcase ?respuesta) si) (eq (lowcase ?respuesta) s))
		then TRUE
		else FALSE
	)
)

;;;--------------------------------------------------------------------------;;;
;;;-------------------------- MODULO DE PREGUNTAS ---------------------------;;;
;;;--------------------------------------------------------------------------;;;

(defmodule MAIN (export ?ALL))

(defmodule hacer-preguntas
	(import MAIN ?ALL)
	(export ?ALL))

(defrule precioMensual
	(nuevo_cliente)
	=>
	(bind ?precio (pregunta-general "¿Cuál es el precio mínimo por el que está buscando una vivienda de alquiler?  "))
	(assert (?precio))
)