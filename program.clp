;;;--------------------------------------------------------------------------;;;
;;;--------------------------- ONTOLOGIA: CLASES ----------------------------;;;
;;;--------------------------------------------------------------------------;;;

(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot tipoVivienda
		(type SYMBOL)
		(allowed-values PISO UNIFAMILIAR)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ubicacionServicio
		(type INSTANCE)
;+		(allowed-classes Ubicacion)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot criteriosCumplidos
		(type STRING)
		(create-accessor read-write))
	(single-slot soleada
		(type SYMBOL)
		(allowed-values MANANA TARDE TODO-EL-DIA NO)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot criteriosNoCumplidos
		(type STRING)
		(create-accessor read-write))
	(single-slot vivienda
		(type INSTANCE)
;+		(allowed-classes ViviendaAlquiler)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot precioMensual
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot criteriosExtra
		(type STRING)
		(create-accessor read-write))
	(multislot dormitorios
		(type SYMBOL)
		(allowed-values INDIVIDUAL DOBLE)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot superficie
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot grado
		(type INTEGER)
		(default 0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot coordX
		(type FLOAT)
		(range 0.0 100.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot coordY
		(type FLOAT)
		(range 0.0 100.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot amueblada
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ubicacionVivienda
		(type INSTANCE)
;+		(allowed-classes Ubicacion)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tipoServicio
		(type SYMBOL)
		(allowed-values COLEGIO HOSPITAL ZONA-OCIO)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Ubicacion
	(is-a USER)
	(role concrete)
	(single-slot coordX
		(type FLOAT)
		(range 0.0 100.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot coordY
		(type FLOAT)
		(range 0.0 100.0)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass ViviendaAlquiler
	(is-a USER)
	(role concrete)
	(single-slot soleada
		(type SYMBOL)
		(allowed-values MANANA TARDE TODO-EL-DIA NO)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot precioMensual
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot amueblada
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tipoVivienda
		(type SYMBOL)
		(allowed-values PISO UNIFAMILIAR)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot dormitorios
		(type SYMBOL)
		(allowed-values INDIVIDUAL DOBLE)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot ubicacionVivienda
		(type INSTANCE)
;+		(allowed-classes Ubicacion)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot superficie
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Servicio
	(is-a USER)
	(role concrete)
	(single-slot tipoServicio
		(type SYMBOL)
		(allowed-values COLEGIO HOSPITAL ZONA-OCIO)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ubicacionServicio
		(type INSTANCE)
;+		(allowed-classes Ubicacion)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Recomendacion
	(is-a USER)
	(role concrete)
	(multislot criteriosCumplidos
		(type STRING)
		(create-accessor read-write))
	(multislot criteriosNoCumplidos
		(type STRING)
		(create-accessor read-write))
	(single-slot vivienda
		(type INSTANCE)
;+		(allowed-classes ViviendaAlquiler)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot grado
		(type INTEGER)
		(default 0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot criteriosExtra
		(type STRING)
		(create-accessor read-write)))

;;;--------------------------------------------------------------------------;;;
;;;------------------------- ONTOLOGIA: INSTANCIAS --------------------------;;;
;;;--------------------------------------------------------------------------;;;

(definstances instancias
	([ontologia_Class22] of  ViviendaAlquiler

		(amueblada TRUE)
		(dormitorios DOBLE INDIVIDUAL INDIVIDUAL)
		(precioMensual 850.0)
		(soleada MANANA)
		(superficie 75.0)
		(tipoVivienda PISO)
		(ubicacionVivienda [ontologia_Class24]))

	([ontologia_Class24] of  Ubicacion

		(coordX 3.0)
		(coordY 2.0))

	([ontologia_Class25] of  ViviendaAlquiler

		(amueblada FALSE)
		(dormitorios INDIVIDUAL DOBLE DOBLE)
		(precioMensual 810.0)
		(soleada TODO-EL-DIA)
		(superficie 83.0)
		(tipoVivienda UNIFAMILIAR)
		(ubicacionVivienda [ontologia_Class26]))

	([ontologia_Class26] of  Ubicacion

		(coordX 10.0)
		(coordY 68.0))

	([ontologia_Class27] of  ViviendaAlquiler

		(amueblada TRUE)
		(dormitorios DOBLE)
		(precioMensual 330.0)
		(soleada NO)
		(superficie 55.0)
		(tipoVivienda PISO)
		(ubicacionVivienda [ontologia_Class30]))

	([ontologia_Class30] of  Ubicacion

		(coordX 91.0)
		(coordY 28.0))

	([ontologia_Class31] of  ViviendaAlquiler

		(amueblada FALSE)
		(dormitorios INDIVIDUAL DOBLE)
		(precioMensual 550.0)
		(soleada MANANA)
		(superficie 61.0)
		(tipoVivienda PISO)
		(ubicacionVivienda [ontologia_Class32]))

	([ontologia_Class32] of  Ubicacion

		(coordX 48.0)
		(coordY 39.0))

	([ontologia_Class33] of  ViviendaAlquiler

		(amueblada FALSE)
		(dormitorios DOBLE INDIVIDUAL)
		(precioMensual 415.0)
		(soleada TODO-EL-DIA)
		(superficie 75.0)
		(tipoVivienda PISO)
		(ubicacionVivienda [ontologia_Class34]))

	([ontologia_Class34] of  Ubicacion

		(coordX 94.0)
		(coordY 91.0))

	([ontologia_Class35] of  ViviendaAlquiler

		(amueblada TRUE)
		(dormitorios DOBLE DOBLE INDIVIDUAL INDIVIDUAL)
		(precioMensual 1450.0)
		(soleada TODO-EL-DIA)
		(superficie 130.0)
		(tipoVivienda UNIFAMILIAR)
		(ubicacionVivienda [ontologia_Class36]))

	([ontologia_Class36] of  Ubicacion

		(coordX 50.0)
		(coordY 76.0))

	([ontologia_Class37] of  ViviendaAlquiler

		(amueblada TRUE)
		(dormitorios INDIVIDUAL DOBLE DOBLE)
		(precioMensual 1600.0)
		(soleada TARDE)
		(superficie 120.0)
		(tipoVivienda PISO)
		(ubicacionVivienda [ontologia_Class38]))

	([ontologia_Class38] of  Ubicacion
	)

	([ontologia_Class39] of  ViviendaAlquiler

		(amueblada TRUE)
		(dormitorios DOBLE INDIVIDUAL)
		(precioMensual 900.0)
		(soleada MANANA)
		(superficie 65.0)
		(tipoVivienda PISO)
		(ubicacionVivienda [ontologia_Class40]))

	([ontologia_Class40] of  Ubicacion

		(coordX 12.0)
		(coordY 87.0))

	([ontologia_Class41] of  ViviendaAlquiler

		(amueblada TRUE)
		(dormitorios DOBLE)
		(precioMensual 660.0)
		(soleada TODO-EL-DIA)
		(superficie 60.0)
		(tipoVivienda PISO)
		(ubicacionVivienda [ontologia_Class42]))

	([ontologia_Class42] of  Ubicacion

		(coordX 20.0)
		(coordY 15.0))

	([ontologia_Class43] of  ViviendaAlquiler

		(amueblada FALSE)
		(dormitorios DOBLE INDIVIDUAL INDIVIDUAL)
		(precioMensual 620.0)
		(soleada MANANA)
		(superficie 72.0)
		(tipoVivienda UNIFAMILIAR)
		(ubicacionVivienda [ontologia_Class44]))

	([ontologia_Class44] of  Ubicacion

		(coordX 23.0)
		(coordY 58.0))

	([ontologia_Class45] of  ViviendaAlquiler

		(amueblada TRUE)
		(dormitorios INDIVIDUAL INDIVIDUAL INDIVIDUAL INDIVIDUAL)
		(precioMensual 1000.0)
		(soleada MANANA)
		(superficie 90.0)
		(tipoVivienda PISO)
		(ubicacionVivienda [ontologia_Class46]))

	([ontologia_Class46] of  Ubicacion

		(coordX 60.0)
		(coordY 87.0))

	([ontologia_Class47] of  ViviendaAlquiler

		(amueblada TRUE)
		(dormitorios INDIVIDUAL INDIVIDUAL INDIVIDUAL)
		(precioMensual 750.0)
		(soleada TARDE)
		(superficie 81.0)
		(tipoVivienda PISO)
		(ubicacionVivienda [ontologia_Class48]))

	([ontologia_Class48] of  Ubicacion

		(coordX 44.0)
		(coordY 10.0))

	([ontologia_Class49] of  Servicio

		(tipoServicio COLEGIO)
		(ubicacionServicio [ontologia_Class50]))

	([ontologia_Class50] of  Ubicacion

		(coordX 65.0)
		(coordY 28.0))

	([ontologia_Class51] of  Servicio

		(tipoServicio COLEGIO)
		(ubicacionServicio [ontologia_Class52]))

	([ontologia_Class52] of  Ubicacion

		(coordX 30.0)
		(coordY 85.0))

	([ontologia_Class53] of  Servicio

		(tipoServicio HOSPITAL)
		(ubicacionServicio [ontologia_Class54]))

	([ontologia_Class54] of  Ubicacion

		(coordX 29.0)
		(coordY 30.0))

	([ontologia_Class55] of  Servicio

		(tipoServicio ZONA-OCIO)
		(ubicacionServicio [ontologia_Class56]))

	([ontologia_Class56] of  Ubicacion

		(coordX 75.0)
		(coordY 33.0))

	([ontologia_Class57] of  Servicio

		(tipoServicio ZONA-OCIO)
		(ubicacionServicio [ontologia_Class58]))

	([ontologia_Class58] of  Ubicacion

		(coordX 60.0)
		(coordY 90.0))
)

;;;--------------------------------------------------------------------------;;;
;;;---------------------- TEMPLATES: DATOS DE ENTRADA -----------------------;;;
;;;--------------------------------------------------------------------------;;;

(deftemplate Cliente
	(slot precioMax (type FLOAT) (default -1.0))
	(slot margenEstrictoPrecioMax (type SYMBOL) (allowed-values FALSE TRUE INDEF) (default INDEF))
	(slot precioMin (type FLOAT) (default -1.0))

	(slot numeroDormitorios (type INTEGER) (default -1))
	(slot margenEstrictoDormitorios (type SYMBOL) (allowed-values FALSE TRUE INDEF) (default INDEF))
	(slot numeroDormitoriosDobles (type INTEGER) (default -1))

	(multislot serviciosCercanos (type INSTANCE) (allowed-classes Servicio))
	(slot prefiereTransPublico (type SYMBOL) (allowed-values FALSE TRUE INDEF) (default INDEF))

	(multislot edadSolicitantes (type INTEGER))
	(slot tipologiaSolicitantes 
		(type SYMBOL)
		(allowed-values PAREJA-SIN-HIJOS PAREJA-HIJOS-FUTURO FAMILIA ESTUDIANTES INDIVIDUO INDEF)
		(default INDEF)
	)
)

;;;--------------------------------------------------------------------------;;;
;;;----------------------- TEMPLATES: DATOS INFERIDOS -----------------------;;;
;;;--------------------------------------------------------------------------;;;

(deftemplate RestriccionPrecio
	(slot precioMax (type FLOAT))
	(slot margenPrecioMax (type SYMBOL) (allowed-values ESTRICTO FLEXIBLE) (default ESTRICTO))
	(slot precioMin (type FLOAT))
)

(deftemplate RestriccionDormitorios
	(slot numeroDormitorios (type INTEGER))
	(slot margenDormitorios (type SYMBOL) (allowed-values ESTRICTO FLEXIBLE) (default ESTRICTO))
	(slot numeroDormitoriosDobles (type INTEGER))
)

(deftemplate RestriccionServiciosCercanos
	(multislot serviciosCercanos (type INSTANCE) (allowed-classes Servicio))
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

(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "¿%s? [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(> ?respuesta ?rangini)(< ?respuesta ?rangfi))) do
		(format t "¿%s? [%d, %d] " ?pregunta ?rangini ?rangfi)
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

(defrule insertar-cliente
	(nuevo-cliente)
	(not (Cliente))
	=>
	(assert (Cliente))
)

(defrule precio-maximo-mensual
	(nuevo-cliente)
	(not (precio-maximo-mensual-done))
	?cliente <- (Cliente)
	=>
	(bind ?precio (pregunta-numerica "Precio máximo ((-1) si es indiferente)" -2 5000))
	(if (> ?precio -1) then
		(bind ?margen (si-o-no-p "Margen estricto"))
		(modify ?cliente (precioMax ?precio) (margenEstrictoPrecioMax ?margen))
	)
	(assert (precio-maximo-mensual-done))
)

(defrule precio-minimo-mensual
	(nuevo-cliente)
	(not (precio-minimo-mensual-done))
	?cliente <- (Cliente)
	=>
	(bind ?precio (pregunta-numerica "Precio mínimo ((-1) si es indiferente)" -2 5000))
	(if (> ?precio -1) then (modify ?cliente (precioMin ?precio)))
	(assert (precio-minimo-mensual-done))
)

(defrule fin-preguntas
	(nuevo-cliente)
	=>
	(printout t "Datos almacenados" crlf)
	(focus inferir-datos)
)

;;;--------------------------------------------------------------------------;;;
;;;---------------------- MODULO DE INFERENCIA DE DATOS ---------------------;;;
;;;--------------------------------------------------------------------------;;;

(defmodule inferir-datos
	(import MAIN ?ALL)
	(import hacer-preguntas ?ALL)
	(export ?ALL)
)

(defrule crear-cliente
	(nuevo-cliente)
	(not (Cliente))
	=>
	(assert (Cliente))
)

(defrule fin-inferir-datos
	(nuevo-cliente)
	=>
	(printout t "Abstracción de datos finalizada" crlf)
	(focus filtrado)
)

;;;--------------------------------------------------------------------------;;;
;;;--------------------------- MODULO DE FILTRADO ---------------------------;;;
;;;--------------------------------------------------------------------------;;;

(defmodule filtrado
	(import MAIN ?ALL)
	(import inferir-datos ?ALL)
	(export ?ALL)
)

