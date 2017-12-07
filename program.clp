;(load "protege_files/ontologia.pont")
;(load-instances "protege_files/ontologia.pins")

; Wed Nov 29 14:03:24 CET 2017
; 
;+ (version "3.4.8")
;+ (build "Build 629")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot TipoServicio
		(type SYMBOL)
		(allowed-values COLEGIO HOSPITAL ZONA-OCIO)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Soleada
		(type SYMBOL)
		(allowed-values MANANA TARDE TODO-EL-DIA NO)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioMensual
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Amueblada
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Superficie
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot UbicacionVivienda
		(type INSTANCE)
;+		(allowed-classes Ubicacion)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Tipo
		(type SYMBOL)
		(allowed-values PISO VIVIENDA-UNIFAMILIAR)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ontologia_Class0
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Dormitorios
		(type SYMBOL)
		(allowed-values INDIVIDUAL DOBLE)
		(create-accessor read-write))
	(single-slot TipoVivienda
		(type SYMBOL)
		(allowed-values PISO UNIFAMILIAR)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot CoordX
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot UbicacionServicio
		(type INSTANCE)
;+		(allowed-classes Ubicacion)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Ubicacion
	(is-a USER)
	(role concrete)
	(single-slot CoordX
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass ViviendaAlquiler
	(is-a USER)
	(role abstract)
	(multislot Dormitorios
		(type SYMBOL)
		(allowed-values INDIVIDUAL DOBLE)
		(create-accessor read-write))
	(single-slot TipoVivienda
		(type SYMBOL)
		(allowed-values PISO UNIFAMILIAR)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Soleada
		(type SYMBOL)
		(allowed-values MANANA TARDE TODO-EL-DIA NO)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioMensual
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Amueblada
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot UbicacionVivienda
		(type INSTANCE)
;+		(allowed-classes Ubicacion)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Superficie
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Servicio
	(is-a USER)
	(role concrete)
	(single-slot TipoServicio
		(type SYMBOL)
		(allowed-values COLEGIO HOSPITAL ZONA-OCIO)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot UbicacionServicio
		(type INSTANCE)
;+		(allowed-classes Ubicacion)
;+		(cardinality 1 1)
		(create-accessor read-write)))

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
	(format t "¿%s?  " ?pregunta)
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

(defrule inicio "regla inicial"
	(initial-fact)
	=>
	(printout t crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "------ Sistema de recomendación de viviendas de alquiler -----" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t crlf)
	(assert (nuevo-cliente))
	(focus hacer-preguntas)		
)

(defmodule hacer-preguntas
	(import MAIN ?ALL)
	(export ?ALL))

(defrule precioMensual
	(nuevo-cliente)
	=>
	(bind ?precio (pregunta-general "Cuál es el precio mínimo por el que está buscando una vivienda de alquiler"))
	(assert (precioMinimo ?precio))
)