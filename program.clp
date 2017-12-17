;;;--------------------------------------------------------------------------;;;
;;;--------------------------- ONTOLOGIA: CLASES ----------------------------;;;
;;;--------------------------------------------------------------------------;;;

(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
        (is-a USER)
        (role abstract)
        (single-slot conElectrodomesticos
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot tipoVivienda
                (type SYMBOL)
                (allowed-values PISO UNIFAMILIAR)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot ubicacionServicio
                (type INSTANCE)
;+              (allowed-classes Ubicacion)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (multislot criteriosCumplidos
                (type STRING)
                (create-accessor read-write))
        (single-slot calefaccion
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot soleada
                (type SYMBOL)
                (allowed-values MANANA TARDE TODO-EL-DIA NO)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (multislot criteriosNoCumplidos
                (type STRING)
                (create-accessor read-write))
        (single-slot clase
                (type SYMBOL)
                (allowed-values ALTA MEDIA BAJA)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot piscina
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot ubicacionBarrio
                (type INSTANCE)
;+              (allowed-classes Ubicacion)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot KB_055321_Class20
                (type STRING)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot vivienda
                (type INSTANCE)
;+              (allowed-classes ViviendaAlquiler)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot balcon
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot situacion
                (type SYMBOL)
                (allowed-values MONTANA PLAYA CENTRO-HISTORICO BARRIO-MODERNO PERIFERIA)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot precioMensual
                (type FLOAT)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot terraza
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot barrioVivienda
                (type INSTANCE)
;+              (allowed-classes Barrio)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (multislot criteriosExtra
                (type STRING)
                (create-accessor read-write))
        (single-slot mascotasProhibidas
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot banos
                (type INTEGER)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (multislot dormitorios
                (type SYMBOL)
                (allowed-values INDIVIDUAL DOBLE)
                (cardinality 1 ?VARIABLE)
                (create-accessor read-write))
        (single-slot superficie
                (type FLOAT)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot garaje
                (type INTEGER)
                (default 0)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot aireAcondicionado
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot vistas
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot grado
                (type INTEGER)
                (default 0)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot coordX
                (type FLOAT)
                (range 0.0 100.0)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot coordY
                (type FLOAT)
                (range 0.0 100.0)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot amueblada
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot ubicacionVivienda
                (type INSTANCE)
;+              (allowed-classes Ubicacion)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot tipoServicio
                (type SYMBOL)
                (allowed-values COLEGIO HOSPITAL ZONA-OCIO TRANSPORTE-PUBLICO ZONA-COMERCIAL SUPERMERCADO CENTRO-DE-SALUD ZONA-VERDE)
;+              (cardinality 1 1)
                (create-accessor read-write)))

(defclass Ubicacion
        (is-a USER)
        (role concrete)
        (single-slot coordX
                (type FLOAT)
                (range 0.0 100.0)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot coordY
                (type FLOAT)
                (range 0.0 100.0)
;+              (cardinality 1 1)
                (create-accessor read-write)))

(defclass ViviendaAlquiler
        (is-a USER)
        (role concrete)
        (single-slot garaje
                (type INTEGER)
                (default 0)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot aireAcondicionado
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot conElectrodomesticos
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot soleada
                (type SYMBOL)
                (allowed-values MANANA TARDE TODO-EL-DIA NO)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot precioMensual
                (type FLOAT)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot terraza
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot vistas
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot tipoVivienda
                (type SYMBOL)
                (allowed-values PISO UNIFAMILIAR)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot barrioVivienda
                (type INSTANCE)
;+              (allowed-classes Barrio)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot mascotasProhibidas
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot banos
                (type INTEGER)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot piscina
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot amueblada
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (multislot dormitorios
                (type SYMBOL)
                (allowed-values INDIVIDUAL DOBLE)
                (cardinality 1 ?VARIABLE)
                (create-accessor read-write))
        (single-slot balcon
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot ubicacionVivienda
                (type INSTANCE)
;+              (allowed-classes Ubicacion)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot calefaccion
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot superficie
                (type FLOAT)
;+              (cardinality 1 1)
                (create-accessor read-write)))

(defclass Servicio
        (is-a USER)
        (role concrete)
        (single-slot tipoServicio
                (type SYMBOL)
                (allowed-values COLEGIO HOSPITAL ZONA-OCIO TRANSPORTE-PUBLICO ZONA-COMERCIAL SUPERMERCADO CENTRO-DE-SALUD ZONA-VERDE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot ubicacionServicio
                (type INSTANCE)
;+              (allowed-classes Ubicacion)
;+              (cardinality 1 1)
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
;+              (allowed-classes ViviendaAlquiler)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot grado
                (type INTEGER)
                (default 0)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (multislot criteriosExtra
                (type STRING)
                (create-accessor read-write)))

(defclass Barrio
        (is-a USER)
        (role concrete)
        (single-slot situacion
                (type SYMBOL)
                (allowed-values MONTANA PLAYA CENTRO-HISTORICO BARRIO-MODERNO PERIFERIA)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot clase
                (type SYMBOL)
                (allowed-values ALTA MEDIA BAJA)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot ubicacionBarrio
                (type INSTANCE)
;+              (allowed-classes Ubicacion)
;+              (cardinality 1 1)
                (create-accessor read-write)))

;;;--------------------------------------------------------------------------;;;
;;;------------------------- ONTOLOGIA: INSTANCIAS --------------------------;;;
;;;--------------------------------------------------------------------------;;;

(definstances instancias
        ([ontologia_Class0] of  Servicio

                (tipoServicio TRANSPORTE-PUBLICO)
                (ubicacionServicio [ontologia_Class1]))

        ([ontologia_Class1] of  Ubicacion

                (coordX 2.0)
                (coordY 11.0))

        ([ontologia_Class10] of  Servicio

                (tipoServicio ZONA-COMERCIAL)
                (ubicacionServicio [ontologia_Class11]))

        ([ontologia_Class10015] of  Ubicacion

                (coordX 15.0)
                (coordY 13.0))

        ([ontologia_Class10016] of  Servicio

                (tipoServicio CENTRO-DE-SALUD)
                (ubicacionServicio [ontologia_Class10017]))

        ([ontologia_Class10017] of  Ubicacion

                (coordX 34.0)
                (coordY 89.0))

        ([ontologia_Class10018] of  Servicio

                (tipoServicio CENTRO-DE-SALUD)
                (ubicacionServicio [ontologia_Class10019]))

        ([ontologia_Class10019] of  Ubicacion

                (coordX 78.0)
                (coordY 9.0))

        ([ontologia_Class10020] of  Servicio

                (tipoServicio ZONA-VERDE)
                (ubicacionServicio [ontologia_Class10021]))

        ([ontologia_Class10021] of  Ubicacion

                (coordX 50.0)
                (coordY 67.0))

        ([ontologia_Class10022] of  Ubicacion

                (coordX 12.0)
                (coordY 9.0))

        ([ontologia_Class10023] of  Barrio

                (clase ALTA)
                (situacion MONTANA)
                (ubicacionBarrio [ontologia_Class10025]))

        ([ontologia_Class10024] of  Ubicacion

                (coordX 16.0)
                (coordY 63.0))

        ([ontologia_Class10025] of  Ubicacion

                (coordX 17.0)
                (coordY 80.0))

        ([ontologia_Class10026] of  Barrio

                (clase ALTA)
                (situacion CENTRO-HISTORICO)
                (ubicacionBarrio [ontologia_Class10027]))

        ([ontologia_Class10027] of  Ubicacion

                (coordX 50.0)
                (coordY 71.0))

        ([ontologia_Class10028] of  Barrio

                (clase MEDIA)
                (situacion BARRIO-MODERNO)
                (ubicacionBarrio [ontologia_Class10029]))

        ([ontologia_Class10029] of  Ubicacion

                (coordX 16.0)
                (coordY 63.0))

        ([ontologia_Class11] of  Ubicacion

                (coordX 60.0)
                (coordY 12.0))

        ([ontologia_Class12] of  Servicio

                (tipoServicio SUPERMERCADO)
                (ubicacionServicio [ontologia_Class13]))

        ([ontologia_Class13] of  Ubicacion

                (coordX 33.0)
                (coordY 87.0))

        ([ontologia_Class14] of  Servicio

                (tipoServicio SUPERMERCADO)
                (ubicacionServicio [ontologia_Class10015]))

        ([ontologia_Class15] of  Barrio

                (clase BAJA)
                (situacion PERIFERIA)
                (ubicacionBarrio [ontologia_Class16]))

        ([ontologia_Class16] of  Ubicacion

                (coordX 91.0)
                (coordY 95.0))

        ([ontologia_Class17] of  Barrio

                (clase BAJA)
                (situacion PLAYA)
                (ubicacionBarrio [ontologia_Class18]))

        ([ontologia_Class18] of  Ubicacion

                (coordX 90.0)
                (coordY 30.0))

        ([ontologia_Class19] of  Barrio

                (clase BAJA)
                (situacion PERIFERIA)
                (ubicacionBarrio [ontologia_Class20]))

        ([ontologia_Class2] of  Servicio

                (tipoServicio TRANSPORTE-PUBLICO)
                (ubicacionServicio [ontologia_Class3]))

        ([ontologia_Class20] of  Ubicacion

                (coordX 50.0)
                (coordY 37.0))

        ([ontologia_Class21] of  Barrio

                (clase MEDIA)
                (situacion CENTRO-HISTORICO)
                (ubicacionBarrio [ontologia_Class10022]))

        ([ontologia_Class22] of  ViviendaAlquiler

                (aireAcondicionado TRUE)
                (amueblada TRUE)
                (balcon TRUE)
                (banos 1)
                (calefaccion TRUE)
                (conElectrodomesticos TRUE)
                (dormitorios DOBLE INDIVIDUAL INDIVIDUAL)
                (garaje 0)
                (mascotasProhibidas FALSE)
                (piscina FALSE)
                (precioMensual 850.0)
                (soleada MANANA)
                (superficie 75.0)
                (terraza FALSE)
                (tipoVivienda PISO)
                (ubicacionVivienda [ontologia_Class24])
                (vistas FALSE))

        ([ontologia_Class24] of  Ubicacion

                (coordX 3.0)
                (coordY 2.0))

        ([ontologia_Class25] of  ViviendaAlquiler

                (aireAcondicionado TRUE)
                (amueblada FALSE)
                (balcon FALSE)
                (banos 2)
                (calefaccion TRUE)
                (conElectrodomesticos FALSE)
                (dormitorios INDIVIDUAL DOBLE DOBLE)
                (garaje 1)
                (mascotasProhibidas TRUE)
                (piscina FALSE)
                (precioMensual 810.0)
                (soleada TODO-EL-DIA)
                (superficie 83.0)
                (terraza TRUE)
                (tipoVivienda UNIFAMILIAR)
                (ubicacionVivienda [ontologia_Class26])
                (vistas TRUE))

        ([ontologia_Class26] of  Ubicacion

                (coordX 10.0)
                (coordY 68.0))

        ([ontologia_Class27] of  ViviendaAlquiler

                (aireAcondicionado FALSE)
                (amueblada TRUE)
                (balcon FALSE)
                (banos 1)
                (calefaccion FALSE)
                (conElectrodomesticos FALSE)
                (dormitorios DOBLE)
                (garaje 0)
                (mascotasProhibidas FALSE)
                (piscina FALSE)
                (precioMensual 330.0)
                (soleada NO)
                (superficie 55.0)
                (terraza FALSE)
                (tipoVivienda PISO)
                (ubicacionVivienda [ontologia_Class30])
                (vistas FALSE))

        ([ontologia_Class3] of  Ubicacion

                (coordX 10.0)
                (coordY 25.0))

        ([ontologia_Class30] of  Ubicacion

                (coordX 91.0)
                (coordY 28.0))

        ([ontologia_Class31] of  ViviendaAlquiler

                (aireAcondicionado TRUE)
                (amueblada FALSE)
                (balcon FALSE)
                (banos 1)
                (calefaccion FALSE)
                (conElectrodomesticos FALSE)
                (dormitorios INDIVIDUAL DOBLE)
                (garaje 0)
                (mascotasProhibidas FALSE)
                (piscina FALSE)
                (precioMensual 550.0)
                (soleada MANANA)
                (superficie 61.0)
                (terraza FALSE)
                (tipoVivienda PISO)
                (ubicacionVivienda [ontologia_Class32])
                (vistas FALSE))

        ([ontologia_Class32] of  Ubicacion

                (coordX 48.0)
                (coordY 39.0))

        ([ontologia_Class33] of  ViviendaAlquiler

                (aireAcondicionado TRUE)
                (amueblada FALSE)
                (balcon FALSE)
                (banos 1)
                (calefaccion FALSE)
                (conElectrodomesticos FALSE)
                (dormitorios DOBLE INDIVIDUAL)
                (garaje 0)
                (mascotasProhibidas FALSE)
                (piscina FALSE)
                (precioMensual 415.0)
                (soleada TODO-EL-DIA)
                (superficie 75.0)
                (terraza FALSE)
                (tipoVivienda PISO)
                (ubicacionVivienda [ontologia_Class34])
                (vistas FALSE))

        ([ontologia_Class34] of  Ubicacion

                (coordX 94.0)
                (coordY 91.0))

        ([ontologia_Class35] of  ViviendaAlquiler

                (aireAcondicionado TRUE)
                (amueblada TRUE)
                (balcon FALSE)
                (banos 3)
                (calefaccion TRUE)
                (conElectrodomesticos TRUE)
                (dormitorios DOBLE DOBLE INDIVIDUAL INDIVIDUAL)
                (garaje 2)
                (mascotasProhibidas TRUE)
                (piscina TRUE)
                (precioMensual 1450.0)
                (soleada TODO-EL-DIA)
                (superficie 130.0)
                (terraza FALSE)
                (tipoVivienda UNIFAMILIAR)
                (ubicacionVivienda [ontologia_Class36])
                (vistas FALSE))

        ([ontologia_Class36] of  Ubicacion

                (coordX 50.0)
                (coordY 76.0))

        ([ontologia_Class37] of  ViviendaAlquiler

                (aireAcondicionado TRUE)
                (amueblada TRUE)
                (balcon TRUE)
                (banos 3)
                (calefaccion TRUE)
                (conElectrodomesticos TRUE)
                (dormitorios INDIVIDUAL DOBLE DOBLE)
                (garaje 2)
                (mascotasProhibidas FALSE)
                (piscina FALSE)
                (precioMensual 1600.0)
                (soleada TARDE)
                (superficie 120.0)
                (terraza TRUE)
                (tipoVivienda PISO)
                (ubicacionVivienda [ontologia_Class38])
                (vistas TRUE))

        ([ontologia_Class38] of  Ubicacion

                (coordX 55.0)
                (coordY 70.0))

        ([ontologia_Class39] of  ViviendaAlquiler

                (aireAcondicionado TRUE)
                (amueblada TRUE)
                (balcon FALSE)
                (banos 2)
                (calefaccion TRUE)
                (conElectrodomesticos TRUE)
                (dormitorios DOBLE INDIVIDUAL)
                (garaje 1)
                (mascotasProhibidas TRUE)
                (piscina FALSE)
                (precioMensual 900.0)
                (soleada MANANA)
                (superficie 65.0)
                (terraza FALSE)
                (tipoVivienda PISO)
                (ubicacionVivienda [ontologia_Class40])
                (vistas FALSE))

        ([ontologia_Class4] of  Servicio

                (tipoServicio TRANSPORTE-PUBLICO)
                (ubicacionServicio [ontologia_Class5]))

        ([ontologia_Class40] of  Ubicacion

                (coordX 12.0)
                (coordY 87.0))

        ([ontologia_Class41] of  ViviendaAlquiler

                (aireAcondicionado FALSE)
                (amueblada TRUE)
                (balcon TRUE)
                (banos 1)
                (calefaccion FALSE)
                (conElectrodomesticos FALSE)
                (dormitorios DOBLE)
                (garaje 0)
                (mascotasProhibidas FALSE)
                (piscina FALSE)
                (precioMensual 660.0)
                (soleada TODO-EL-DIA)
                (superficie 60.0)
                (terraza FALSE)
                (tipoVivienda PISO)
                (ubicacionVivienda [ontologia_Class42])
                (vistas FALSE))

        ([ontologia_Class42] of  Ubicacion

                (coordX 20.0)
                (coordY 15.0))

        ([ontologia_Class43] of  ViviendaAlquiler

                (aireAcondicionado FALSE)
                (amueblada FALSE)
                (balcon FALSE)
                (banos 1)
                (calefaccion TRUE)
                (conElectrodomesticos FALSE)
                (dormitorios DOBLE INDIVIDUAL INDIVIDUAL)
                (garaje 0)
                (mascotasProhibidas FALSE)
                (piscina FALSE)
                (precioMensual 620.0)
                (soleada MANANA)
                (superficie 72.0)
                (terraza FALSE)
                (tipoVivienda UNIFAMILIAR)
                (ubicacionVivienda [ontologia_Class44])
                (vistas TRUE))

        ([ontologia_Class44] of  Ubicacion

                (coordX 23.0)
                (coordY 58.0))

        ([ontologia_Class45] of  ViviendaAlquiler

                (aireAcondicionado TRUE)
                (amueblada TRUE)
                (balcon FALSE)
                (banos 2)
                (calefaccion FALSE)
                (conElectrodomesticos TRUE)
                (dormitorios INDIVIDUAL INDIVIDUAL INDIVIDUAL INDIVIDUAL)
                (garaje 0)
                (mascotasProhibidas FALSE)
                (piscina FALSE)
                (precioMensual 1000.0)
                (soleada MANANA)
                (superficie 90.0)
                (terraza FALSE)
                (tipoVivienda PISO)
                (ubicacionVivienda [ontologia_Class46])
                (vistas FALSE))

        ([ontologia_Class46] of  Ubicacion

                (coordX 60.0)
                (coordY 87.0))

        ([ontologia_Class47] of  ViviendaAlquiler

                (aireAcondicionado TRUE)
                (amueblada TRUE)
                (balcon FALSE)
                (banos 1)
                (calefaccion FALSE)
                (conElectrodomesticos TRUE)
                (dormitorios INDIVIDUAL INDIVIDUAL INDIVIDUAL)
                (garaje 0)
                (mascotasProhibidas FALSE)
                (piscina FALSE)
                (precioMensual 750.0)
                (soleada TARDE)
                (superficie 81.0)
                (terraza FALSE)
                (tipoVivienda PISO)
                (ubicacionVivienda [ontologia_Class48])
                (vistas FALSE))

        ([ontologia_Class48] of  Ubicacion

                (coordX 44.0)
                (coordY 10.0))

        ([ontologia_Class49] of  Servicio

                (tipoServicio COLEGIO)
                (ubicacionServicio [ontologia_Class50]))

        ([ontologia_Class5] of  Ubicacion

                (coordX 70.0)
                (coordY 17.0))

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

        ([ontologia_Class6] of  Servicio

                (tipoServicio TRANSPORTE-PUBLICO)
                (ubicacionServicio [ontologia_Class7]))

        ([ontologia_Class7] of  Ubicacion

                (coordX 45.0)
                (coordY 67.0))

        ([ontologia_Class8] of  Servicio

                (tipoServicio ZONA-COMERCIAL)
                (ubicacionServicio [ontologia_Class9]))

        ([ontologia_Class9] of  Ubicacion

                (coordX 15.0)
                (coordY 70.0))
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

	(multislot serviciosCercanos (type SYMBOL) 
                (allowed-values 
                        COLEGIO
                        UNIVERSIDAD
                        HOSPITAL
                        ZONA-OCIO
                        TRANSPORTE-PUBLICO
                        ZONA-COMERCIAL
                        SUPERMERCADO
                        CENTRO-DE-SALUD
                        ZONA-VERDE)
        )
	(slot prefiereTransPublico (type SYMBOL) (allowed-values FALSE TRUE INDEF) (default INDEF))

	(multislot edadSolicitantes (type INTEGER))
	(slot tipologiaSolicitantes 
		(type SYMBOL)
		(allowed-values PAREJA-SIN-HIJOS PAREJA-HIJOS-FUTURO FAMILIA ESTUDIANTES INDIVIDUO INDEF)
		(default INDEF)
	)

	(slot soleada
		(type SYMBOL)
		(allowed-values MANANA TARDE TODO-EL-DIA NO INDEF)
		(default INDEF)
	)

	(slot amueblada
		(type SYMBOL)
		(allowed-values TRUE FALSE INDEF)
		(default INDEF)
	)
)

;;;--------------------------------------------------------------------------;;;
;;;----------------------- TEMPLATES: DATOS INFERIDOS -----------------------;;;
;;;--------------------------------------------------------------------------;;;

(deftemplate RestriccionPrecio
	(slot precioMax (type FLOAT))
	(slot margenEstrictoPrecioMax (type SYMBOL) (allowed-values FALSE TRUE INDEF) (default INDEF))
	(slot precioMin (type FLOAT))
)

(deftemplate RestriccionDormitorios
	(slot numeroDormitorios (type INTEGER))
	(slot margenEstrictoDormitorios (type SYMBOL) (allowed-values FALSE TRUE INDEF) (default INDEF))
	(slot numeroDormitoriosDobles (type INTEGER))
)

(deftemplate RestriccionServiciosCercanos
        ; Servicios cercanos indicados por el usuario
	(multislot serviciosCercanos (type SYMBOL)
                (allowed-values 
                        COLEGIO
                        HOSPITAL
                        ZONA-OCIO
                        TRANSPORTE-PUBLICO
                        ZONA-COMERCIAL
                        SUPERMERCADO
                        CENTRO-DE-SALUD
                        ZONA-VERDE)
        )
)

(deftemplate PreferenciaServiciosCercanos
        ; Servicios cercanos no indicados explícitamente, pero que dan más 
        ; puntos a una vivienda según la edad y tipología de los solicitantes
        (multislot serviciosCercanos (type SYMBOL)
                (allowed-values 
                        COLEGIO
                        HOSPITAL
                        ZONA-OCIO
                        TRANSPORTE-PUBLICO
                        ZONA-COMERCIAL
                        SUPERMERCADO
                        CENTRO-DE-SALUD
                        ZONA-VERDE)
        )
)

(deftemplate RestriccionSoleada
	(slot soleada (type SYMBOL) (allowed-values MANANA TARDE TODO-EL-DIA NO INDEF) (default INDEF))
)

(deftemplate RestriccionAmueblada
	(slot amueblada (type SYMBOL) (allowed-values TRUE FALSE INDEF) (default INDEF))
)

;;;--------------------------------------------------------------------------;;;
;;;-------------------------- VARIABLES GLOBALES ----------------------------;;;
;;;--------------------------------------------------------------------------;;;

; Criterios

(defglobal ?*crit-precio-max* = "Precio máximo")
(defglobal ?*crit-precio-min* = "Precio mínimo")

(defglobal ?*crit-num-dorm* = "Número de dormitorios")
(defglobal ?*crit-num-dorm-dobles* = "Número de dormitorios dobles")

(defglobal ?*crit-soleada* = "Soleada")

(defglobal ?*crit-amueblada* = "Amueblada")

(defglobal ?*crit-serv-cerc* = "Servicio cercano")

; Distancias

(defglobal ?*dist-corta* = 15)
(defglobal ?*dist-media* = 25)
(defglobal ?*dist-larga* = 50)

;;;--------------------------------------------------------------------------;;;
;;;------------------------- FUNCIONES AUXILIARES ---------------------------;;;
;;;--------------------------------------------------------------------------;;;

; Preguntas

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

(deffunction pregunta-numerica (?pregunta)
	(format t "¿%s? " ?pregunta)
	(bind ?respuesta (read))
	(while (not (or (eq (class ?respuesta) INTEGER) (eq (class ?respuesta) FLOAT))) do
		(format t "¿%s? " ?pregunta)
		(bind ?respuesta (read))
	)
	?respuesta
)

(deffunction pregunta-numerica-rango (?pregunta ?rangini ?rangfi)
	(format t "¿%s? [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
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

(deffunction si-o-no-p-indef (?pregunta)
	(bind ?respuesta (pregunta ?pregunta si no indef s n i))
	(if (or (eq (lowcase ?respuesta) si) (eq (lowcase ?respuesta) s))
		then TRUE
		else (if (or (eq (lowcase ?respuesta) no) (eq (lowcase ?respuesta) n))
			then FALSE
			else INDEF
		)
	)
)

(deffunction pregunta-lista (?pregunta) 
	(format t "%s" ?pregunta)  
	(bind ?resposta (readline))  
	(bind ?res (str-explode ?resposta))   
	?res
)

; Cálculos

(deffunction precio-max-flexible (?precio)
	(* ?precio 1.1) ; Margen del 10%
)

(deffunction distancia (?ubA ?ubB)
	; ?ubA y ?ubB son instancias de la clase Ubicacion
	(bind ?ax (send ?ubA get-coordX))
	(bind ?ay (send ?ubA get-coordY))
	(bind ?bx (send ?ubB get-coordX))
	(bind ?by (send ?ubB get-coordY))
	(bind ?distancia (sqrt (+ (** (- ?bx ?ax) 2) (** (- ?by ?ay) 2))))
	(bind ?d (
			if (> ?distancia ?*dist-corta*) 
			then (
					if (< ?distancia ?*dist-larga*)
					then MEDIA
					else LARGA
			) 
			else CERCA
	))
)

; Listas

(deffunction num-apariciones-lista (?x ?lista)
	; Devuelve el número de veces que ?x aparece en ?lista
	(bind ?count 0)
	(progn$ (?elem ?lista) (if (eq ?x ?elem) then (bind ?count (+ ?count 1))))
	?count
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
	(bind ?precio (pregunta-numerica "Precio máximo ((-1) si es indiferente)"))
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
	(bind ?precio (pregunta-numerica "Precio mínimo ((-1) si es indiferente)"))
	(if (> ?precio -1) then (modify ?cliente (precioMin ?precio)))
	(assert (precio-minimo-mensual-done))
)

(defrule dormitorios
	(nuevo-cliente)
	(not (dormitorios-done))
	?cliente <- (Cliente)
	=>
	(bind ?dorm (pregunta-numerica "Número de dormitorios ((-1) si es indiferente)"))
	(if (> ?dorm -1) then 
		(bind ?dobles (pregunta-numerica "Número de dormitorios dobles ((-1) si es indiferente)"))
		(bind ?estricto (si-o-no-p "Margen estricto"))
		then (modify ?cliente (numeroDormitorios ?dorm) 
			(numeroDormitoriosDobles ?dobles) 
			(margenEstrictoDormitorios ?estricto))
	)
	(assert (dormitorios-done))
)

(defrule servicios-cercanos
	(nuevo-cliente)
	(not (servicios-cercanos-done))
	?cliente <- (Cliente)
	=>
	(printout t "Servicios cercanos:" crlf)
	(printout t "0 - Colegio" crlf)
	(printout t "1 - Hospital" crlf)
	(printout t "2 - Zona de ocio" crlf)
	(bind $?servicios (pregunta-lista "Escribe los identificadores separados por espacios: "))
	(bind $?lista (create$))
	(progn$ (?s ?servicios)
		(switch ?s
			(case 0 then (bind ?lista (insert$ ?lista 1 COLEGIO)))
			(case 1 then (bind ?lista (insert$ ?lista 1 HOSPITAL)))
			(case 2 then (bind ?lista (insert$ ?lista 1 ZONA-OCIO)))
		)
	)
	(modify ?cliente (serviciosCercanos ?lista))
	(assert (servicios-cercanos-done))
)

(defrule edad-solicitantes
	(nuevo-cliente)
	(not (edad-solicitantes-done))
	?cliente <- (Cliente)
	=>
	(bind $?edades (pregunta-lista "Escribe las edades de los solicitantes separadas por espacios: "))
	(modify ?cliente (edadSolicitantes ?edades))
	(assert (edad-solicitantes-done))
)

(defrule tipologia-solicitantes
	(nuevo-cliente)
	(not (tipologia-solicitantes-done))
	?cliente <- (Cliente)
	=>
	(printout t "Tipologías:" crlf)
	(printout t "0 - Pareja sin hijos" crlf)
	(printout t "1 - Pareja con previsiones de hijos en un futuro" crlf)
	(printout t "2 - Familia" crlf)
	(printout t "3 - Estudiantes" crlf)
	(printout t "4 - Individuo" crlf)
	(bind ?tipologia (pregunta-numerica "Tipología de los solicitantes ((-1) si es indiferente)"))
	(switch ?tipologia
		(case 0 then (modify ?cliente (tipologiaSolicitantes PAREJA-SIN-HIJOS)))
		(case 1 then (modify ?cliente (tipologiaSolicitantes PAREJA-HIJOS-FUTURO)))
		(case 2 then (modify ?cliente (tipologiaSolicitantes FAMILIA)))
		(case 3 then (modify ?cliente (tipologiaSolicitantes ESTUDIANTES)))
		(case 4 then (modify ?cliente (tipologiaSolicitantes INDIVIDUO)))
	)
	(assert (tipologia-solicitantes-done))
)

(defrule tipo-soleado
	(nuevo-cliente)
	(not (tipo-soleado-done))
	?cliente <- (Cliente)
	=>
	(printout t "Vivienda soleada:" crlf)
	(printout t "0 - Mañana" crlf)
	(printout t "1 - Tarde" crlf)
	(printout t "2 - Todo el día" crlf)
	(printout t "3 - No" crlf)
	(bind ?soleado (pregunta-numerica "La vivienda tiene que tener sol ((-1) si es indiferente)"))
	(switch ?soleado
		(case 0 then (modify ?cliente (soleada MANANA)))
		(case 1 then (modify ?cliente (soleada TARDE)))
		(case 2 then (modify ?cliente (soleada TODO-EL-DIA)))
		(case 3 then (modify ?cliente (soleada NO)))
	)
	(assert (tipo-soleado-done))
)

(defrule vivienda-amueblada
	(nuevo-cliente)
	(not (vivienda-amueblada-done))
	?cliente <- (Cliente)
	=>
	(bind ?amueblada (si-o-no-p-indef "La casa tiene que estar amueblada ((-1) si es indiferente)"))
	(modify ?cliente (amueblada ?amueblada))
	(assert (vivienda-amueblada-done))
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

(defrule crear-restricciones
	(nuevo-cliente)
	(not (RestriccionPrecio))
	(not (RestriccionDormitorios))
	(not (RestriccionServiciosCercanos))
    (not (PreferenciaServiciosCercanos))
	(not (RestriccionSoleada))
	(not (RestriccionAmueblada))
	=>
	(assert (RestriccionPrecio))
	(assert (RestriccionDormitorios))
	(assert (RestriccionServiciosCercanos))
    (assert (PreferenciaServiciosCercanos))
	(assert (RestriccionSoleada))
	(assert (RestriccionAmueblada))
)

(defrule restriccion-precio
	(nuevo-cliente)
	(not (restriccion-precio-done))
	?cliente <- (Cliente (precioMax ?precioMax) (margenEstrictoPrecioMax ?estricto) (precioMin ?precioMin))
	?restriccion <- (RestriccionPrecio)
	=>
	(modify ?restriccion (precioMax ?precioMax) (margenEstrictoPrecioMax ?estricto) (precioMin ?precioMin))
	(assert (restriccion-precio-done))
)

(defrule restriccion-dormitorios
	(nuevo-cliente)
	(not (restriccion-dormitorios-done))
	?cliente <- (Cliente (numeroDormitorios ?dorm) (margenEstrictoDormitorios ?estricto) (numeroDormitoriosDobles ?dobles))
	?restriccion <- (RestriccionDormitorios)
	=>
	(modify ?restriccion (numeroDormitorios ?dorm) (margenEstrictoDormitorios ?estricto) (numeroDormitoriosDobles ?dobles))
	(assert (restriccion-dormitorios-done))
)

(defrule restriccion-servicios-cercanos
	(nuevo-cliente)
	(not (restriccion-servicios-cercanos-done))
	?cliente <- (Cliente (serviciosCercanos $?sc))
	?restriccion <- (RestriccionServiciosCercanos)
	(test (> (length$ ?sc) 0))
	=>
	(modify ?restriccion (serviciosCercanos ?sc))
	(assert (restriccion-servicios-cercanos-done))
)

(defrule preferencia-servicios-cercanos-edad-solicitantes
	(nuevo-cliente)
	(not (preferencia-servicios-cercanos-edad-solicitantes-done))
	?cliente <- (Cliente (edadSolicitantes $?es))
	?preferencia <- (PreferenciaServiciosCercanos (serviciosCercanos $?sc))
	(test (> (length$ ?es) 0))
	=>
	(printout t "PREFERENCIA EDAD SOLICITANTES" crlf)
	(bind $?lista (create$))
	(progn$ (?edad ?es)
			(if (< ?edad 18) then (bind ?lista (insert$ ?lista 1 COLEGIO))
			else (if (<= ?edad 25) then (bind ?lista (insert$ ?lista 1 ZONA-OCIO))))
			(if (> ?edad 65) then (bind ?lista (insert$ ?lista 1 CENTRO-DE-SALUD)))
			(if (> ?edad 50) then (bind ?lista (insert$ ?lista 1 ZONA-VERDE)))
	)
	(modify ?preferencia (serviciosCercanos (insert$ ?sc 1 ?lista)))
	(assert (preferencia-servicios-cercanos-edad-solicitantes-done))
)

(defrule preferencia-servicios-cercanos-tipologia-solicitantes
	(nuevo-cliente)
	(not (preferencia-servicios-cercanos-tipologia-solicitantes-done))
	?cliente <- (Cliente (tipologiaSolicitantes ?ts))
	?preferencia <- (PreferenciaServiciosCercanos (serviciosCercanos $?sc))
	(test (neq ?ts INDEF))
	=>
	(printout t "PREFERENCIA TIPOLOGIA SOLICITANTES" crlf)
	(switch ?ts
			(case PAREJA-SIN-HIJOS then (modify ?preferencia (serviciosCercanos (insert$ ?sc 1 ZONA-OCIO))))
			(case PAREJA-HIJOS-FUTURO then (modify ?preferencia (serviciosCercanos (insert$ ?sc 1 COLEGIO))))
			;(case FAMILIA then (modify ?preferencia (serviciosCercanos (insert$ ?sc 1 COLEGIO))))
			(case ESTUDIANTES then (modify ?preferencia (serviciosCercanos (insert$ ?sc 1 ZONA-OCIO))))
			;(case INDIVIDUO then (modify ?preferencia (serviciosCercanos (insert$ ?sc 1 ZONA-OCIO))))
	)
	(assert (preferencia-servicios-cercanos-tipologia-solicitantes-done))
)

(defrule restriccion-soleada
	(nuevo-cliente)
	(not (restriccion-soleada-done))
	?cliente <- (Cliente (soleada ?s))
	?restriccion <- (RestriccionSoleada)
	=>
	(modify ?restriccion (soleada ?s))
	(assert (restriccion-soleada-done))
)

(defrule restriccion-amueblada
	(nuevo-cliente)
	(not (restriccion-amueblada-done))
	?cliente <- (Cliente (amueblada ?a))
	?restriccion <- (RestriccionAmueblada)
	=>
	(modify ?restriccion (amueblada ?a))
	(assert (restriccion-amueblada-done))
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

(defrule obtener-viviendas
	(nuevo-cliente)
	=>
	(bind $?all (find-all-instances ((?inst ViviendaAlquiler)) TRUE))
	(loop-for-count (?i 1 (length$ ?all)) do
		(bind ?vivienda (nth$ ?i ?all))
		(bind ?nombreInst (sym-cat vivienda ?i))
		(bind ?inst (make-instance ?nombreInst of Recomendacion))
		(send ?inst put-vivienda (instance-address (nth$ ?i ?all)))
	)
	(printout t "Instancias de Recomendacion creadas" crlf)
)

; Criterios sobre el precio

(defrule criterio-precio-max
	?recomendacion <- (object (is-a Recomendacion) (vivienda ?viviendaR))
	?vivienda <- (object (is-a ViviendaAlquiler) (precioMensual ?precioMensual))
	(RestriccionPrecio (precioMax ?precioMax) (margenEstrictoPrecioMax ?estricto))
	(test (and (eq ?vivienda ?viviendaR) (neq ?precioMax -1.0)))
	=>
	(if (not ?estricto) then (bind ?precioMax (precio-max-flexible ?precioMax)))
	(if (<= ?precioMensual ?precioMax) then
		(slot-insert$ ?recomendacion criteriosCumplidos 1 ?*crit-precio-max*)
	else (slot-insert$ ?recomendacion criteriosNoCumplidos 1 ?*crit-precio-max*))
)

(defrule criterio-precio-min
	?recomendacion <- (object (is-a Recomendacion) (vivienda ?viviendaR))
	?vivienda <- (object (is-a ViviendaAlquiler) (precioMensual ?precioMensual))
	(RestriccionPrecio (precioMin ?precioMin))
	(test (and (eq ?vivienda ?viviendaR) (neq ?precioMin -1.0)))
	=>
	(if (>= ?precioMensual ?precioMin) then
		(slot-insert$ ?recomendacion criteriosCumplidos 1 ?*crit-precio-min*)
	else (slot-insert$ ?recomendacion criteriosNoCumplidos 1 ?*crit-precio-min*))
)

; Criterios sobre el número y tipo de dormitorios

(defrule criterio-dormitorios-estricto
	?recomendacion <- (object (is-a Recomendacion) (vivienda ?viviendaR))
	?vivienda <- (object (is-a ViviendaAlquiler) (dormitorios $?dormitorios))
	(RestriccionDormitorios (numeroDormitorios ?num) (margenEstrictoDormitorios ?estricto))
	(test (and (eq ?vivienda ?viviendaR) (neq ?num -1) (eq ?estricto TRUE)))
	=>
	(if (eq (length$ ?dormitorios) ?num) then
		(slot-insert$ ?recomendacion criteriosCumplidos 1 ?*crit-num-dorm*)
	else (slot-insert$ ?recomendacion criteriosNoCumplidos 1 ?*crit-num-dorm*))
)

(defrule criterio-dormitorios-no-estricto
	?recomendacion <- (object (is-a Recomendacion) (vivienda ?viviendaR))
	?vivienda <- (object (is-a ViviendaAlquiler) (dormitorios $?dormitorios))
	(RestriccionDormitorios (numeroDormitorios ?num) (margenEstrictoDormitorios ?estricto))
	(test (and (eq ?vivienda ?viviendaR) (neq ?num -1) (eq ?estricto FALSE)))
	=>
	(if (>= (length$ ?dormitorios) ?num) then
		(slot-insert$ ?recomendacion criteriosCumplidos 1 ?*crit-num-dorm*)
	else (slot-insert$ ?recomendacion criteriosNoCumplidos 1 ?*crit-num-dorm*))
)

(defrule criterio-dormitorios-dobles-estricto
	?recomendacion <- (object (is-a Recomendacion) (vivienda ?viviendaR))
	?vivienda <- (object (is-a ViviendaAlquiler) (dormitorios $?dormitorios))
	(RestriccionDormitorios (numeroDormitoriosDobles ?num) (margenEstrictoDormitorios ?estricto))
	(test (and (eq ?vivienda ?viviendaR) (neq ?num -1) (eq ?estricto TRUE)))
	=>
	(if (eq (num-apariciones-lista DOBLE ?dormitorios) ?num) then
		(slot-insert$ ?recomendacion criteriosCumplidos 1 ?*crit-num-dorm-dobles*)
	else (slot-insert$ ?recomendacion criteriosNoCumplidos 1 ?*crit-num-dorm-dobles*))
)

(defrule criterio-dormitorios-dobles-no-estricto
	?recomendacion <- (object (is-a Recomendacion) (vivienda ?viviendaR))
	?vivienda <- (object (is-a ViviendaAlquiler) (dormitorios $?dormitorios))
	(RestriccionDormitorios (numeroDormitoriosDobles ?num) (margenEstrictoDormitorios ?estricto))
	(test (and (eq ?vivienda ?viviendaR) (neq ?num -1) (eq ?estricto FALSE)))
	=>
	(if (>= (num-apariciones-lista DOBLE ?dormitorios) ?num) then
		(slot-insert$ ?recomendacion criteriosCumplidos 1 ?*crit-num-dorm-dobles*)
	else (slot-insert$ ?recomendacion criteriosNoCumplidos 1 ?*crit-num-dorm-dobles*))
)

; Criterios sobre los servicios cercanos

(defrule criterio-servicios-cercanos
	?recomendacion <- (object (is-a Recomendacion) (vivienda ?viviendaR))
	?vivienda <- (object (is-a ViviendaAlquiler) (ubicacionVivienda ?ubicacionV))
	?servicio <- (object (is-a Servicio) (tipoServicio ?tipoS) (ubicacionServicio ?ubicacionS))
	(RestriccionServiciosCercanos (serviciosCercanos $?sc))
	(test (and (eq ?vivienda ?viviendaR) (member ?tipoS ?sc)))
	=>
	(if (eq (distancia ?ubicacionV ?ubicacionS) CERCA) then 
		(slot-insert$ ?recomendacion criteriosCumplidos 1 (str-cat ?*crit-serv-cerc* " - " ?tipoS))
	else (slot-insert$ ?recomendacion criteriosNoCumplidos 1 (str-cat ?*crit-serv-cerc* " - " ?tipoS)))
)

(defrule criterio-extra-servicios-cercanos
	?recomendacion <- (object (is-a Recomendacion) (vivienda ?viviendaR))
	?vivienda <- (object (is-a ViviendaAlquiler) (ubicacionVivienda ?ubicacionV))
	?servicio <- (object (is-a Servicio) (tipoServicio ?tipoS) (ubicacionServicio ?ubicacionS))
	(PreferenciaServiciosCercanos (serviciosCercanos $?sc))
	(test (and (eq ?vivienda ?viviendaR) (member ?tipoS ?sc)))
	=>
	(if (eq (distancia ?ubicacionV ?ubicacionS) CERCA) then 
			(slot-insert$ ?recomendacion criteriosExtra 1 (str-cat ?*crit-serv-cerc* " - " ?tipoS)))
)

; Criterios sobre la vivienda soleada

(defrule criterio-soleada
	?recomendacion <- (object (is-a Recomendacion) (vivienda ?viviendaR))
	?vivienda <- (object (is-a ViviendaAlquiler) (soleada ?soleada))
	(RestriccionSoleada (soleada ?sol))
	(test (and (eq ?vivienda ?viviendaR) (neq ?sol INDEF)))
	=>
	(if (eq ?soleada ?sol) then
		(slot-insert$ ?recomendacion criteriosCumplidos 1 ?*crit-soleada*)
	else (slot-insert$ ?recomendacion criteriosNoCumplidos 1 ?*crit-soleada*))
)

; Criterios sobre la vivienda amueblada

(defrule criterio-amueblada
	?recomendacion <- (object (is-a Recomendacion) (vivienda ?viviendaR))
	?vivienda <- (object (is-a ViviendaAlquiler) (amueblada ?amueblada))
	(RestriccionAmueblada (amueblada ?am))
	(test (and (eq ?vivienda ?viviendaR) (neq ?am INDEF)))
	=>
	(if (eq ?amueblada ?am) then
		(slot-insert$ ?recomendacion criteriosCumplidos 1 ?*crit-amueblada*)
	else (slot-insert$ ?recomendacion criteriosNoCumplidos 1 ?*crit-amueblada*))
)

(defrule fin-filtrado
	(nuevo-cliente)
	=>
	(printout t "Filtrado finalizado" crlf)
	(focus resultados)
)

;;;--------------------------------------------------------------------------;;;
;;;--------------------------- MODULO DE RESULTADOS -------------------------;;;
;;;--------------------------------------------------------------------------;;;

(defmodule resultados
	(import MAIN ?ALL)
	(import filtrado ?ALL)
	(export ?ALL)
)

(defrule generacion-puntuacion
	(nuevo-cliente)
	(not (generacion-puntuacion-done))
	?recomendacion <- (object
		(is-a Recomendacion)
		(vivienda ?viviendaR)
		(criteriosCumplidos $?criteriosCumplidos)
		(criteriosNoCumplidos $?criteriosNoCumplidos)
	)
	=>
	(bind ?puntuacion 0)

	(loop-for-count (?i 1 (length$ ?criteriosCumplidos)) do
		(bind ?criterio (nth$ ?i ?criteriosCumplidos))
		(bind ?puntuacion (+ ?puntuacion 1))
	) 

	(loop-for-count (?i 1 (length$ ?criteriosNoCumplidos)) do
		(bind ?criterio (nth$ ?i ?criteriosNoCumplidos))
		(bind ?puntuacion (- ?puntuacion 1))
	)

	(send ?recomendacion put-grado ?puntuacion)
	(assert (generacion-puntuacion-done))
)

(defrule generacion-resultados
	(generacion-puntuacion-done)
	?recomendacion <- (object
		(is-a Recomendacion)
		(vivienda ?viviendaR)
		(criteriosCumplidos ?criteriosCumplidos)
		(criteriosNoCumplidos ?criteriosNoCumplidos)
		(grado ?grado)
	)
	=>
	(printout t "Recomendacion: " ?viviendaR ", Grado: " ?grado crlf)
)