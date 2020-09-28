#### 1. Se cuenta con el dataset Medios que cuenta con 7000 medios nacionales. Se desea normalizar esta información en una Base de Datos transaccional teniendo en cuenta que cada medio posee atributos correspondientes a su nombre, ubicación, tipo de medio y especialidad. Migre la información del archivo a una Base de Datos PostgreSQL con la siguiente estructura:

    a. Medios(id, nombre, id_especialidad, id_tipo_medio, dirección, id_ciudad),
    b. Especialidades(id, descripción),
    c. Tipos_medio(id, descripción),
    d. Ciudades(id, nombre, id_provincia).
    e. Provincias(id, nombre).

Explique someramente la metodología utilizada y estime el tiempo que le demandó la actividad.

[Respuesta al punto 1](punto-1/README.md)

#### 2. Se cuenta con los orígenes de datos etl_cursadas, etl_estudiantes y planes con información de los estudiantes de la Universidad y sus cursadas durante el 1er Cuatrimestre 2003. Se solicita que genere una nueva DB con la siguiente estructura:
    a. Rendimiento_Academico(id_estudiante, id_plan, id_sede, id_ciudad, id_sexo, id_cohorte, cantidad_cursadas, cantidad_aprobadas, promedio),
    b. Planes(id_plan, codigo_plan, código_carrera, nombre_carrera),
    c. Ciudades(id_ciudad, código_postal, nombre_ciudad, provincia),
    d. Sedes(id_sede, sede),
    e. Sexo(id_sexo, sexo),
    f. Cohortes(id_cohortes, cohorte).
    Utilice el software PDI y estime el tiempo que le demandó la actividad.

[Respuesta al Punto 2](punto-2/README.md)

#### 3. Ahora, resuelva la consigna 1) con la herramienta PDI de la suite Pentaho, a través de las transformations y Jobs necesarias para llevar adelante la solución. Tome el tiempo que demora en resolver este ejercicio con PDI.

[Respuesta al Punto 3](punto-3/README.md)

#### 4. Cree un Job que verifique todos los días a las 14 hs si existe el archivo 01-01-medios.csv, trabajado en el punto 1), en un directorio determinado y en caso afirmativo ejecute el Job para actualizar la DB generada antes.

[Respuesta al Punto 4](punto-4/README.md)