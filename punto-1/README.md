### Punto 1) Se cuenta con el dataset Medios que cuenta con 7000 medios nacionales. Se desea normalizar esta información en una Base de Datos transaccional teniendo en cuenta que cada medio posee atributos correspondientes a su nombre, ubicación, tipo de medio y especialidad. Migre la información del archivo a una Base de Datos PostgreSQL con la siguiente estructura:

    a. Medios(id, nombre, id_especialidad, id_tipo_medio, dirección, id_ciudad),
    b. Especialidades(id, descripción),
    c. Tipos_medio(id, descripción),
    d. Ciudades(id, nombre, id_provincia).
    e. Provincias(id, nombre).

Explique someramente la metodología utilizada y estime el tiempo que le demandó la actividad.

#### Respuesta: Para obtener una base de datos normalizada, se realizaron estos pasos sobre el archivo 01-01-Medios.xls

- Se realizaron todos los pasos de depuracion con funciones en Excel. 
- Eliminar columnas no importantes: telefono, Web 1, Web 2, Area, Email 1, Email 2, Nombre Cargo, email personal 1, email personal 2, telefono personal, Actualizacion. 
- Tomo las columnas CIUDAD, TIPO MEDIO, ESPECIALIDAD, y:
    1. Paso a minusculas: funcion "=MINUSC()"
    2. Saco Acentos: funcion "=SUSTITUIR()"
    3. Quito espacios al final: "=RECORTAR()"
    4. Creo las hojas tabla_medios, tabla_tipo_medio, tabla_ciudades, tabla_provincias, tabla_especialidad, donde copio los datos correspondientes a cada columna. 
    5. Quito duplicados: opciones Selecciono rango de datos y "Datos/Quitar Duplicados" en cada hoja creada
    6. Con valores unicos en cada "hoja de calculo/tabla" agrego una columna secuenciada "1..n(cant. valores de cada tabla)"
    7. En las tablas tabla_medio y tabla_ciudades, se uso la funcion "=BUSCAR()" para asignar id correspondiente a cada id_provincia (en el caso de tabla_ciudades) y a los id_ciudad, id_tipo_medio y id_especialidad. 
    8. Creadas las tablas depuradas, se guardo cada una en formato CSV, luego se copio en un archivo de texto, con codificacion "LATIN9"
- Creacion de tablas en PosgreSql: se creo el archivo creacion_tabla.sql, donde se crearon las tablas correspondientes. Se copio y ejecuto en Pgadmin. 
- Se importo cada uno de los archivos de texto. Finalizando con la normalizacion solicitada. 