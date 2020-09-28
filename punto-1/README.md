#### Respuesta: Para obtener una base de datos normalizada, se realizaron los siguientes pasos sobre el archivo "01-01-Medios.xls"

- Se realizaron todos los pasos de depuracion con funciones en Excel. 
- Eliminar columnas no importantes: telefono, Web 1, Web 2, Area, Email 1, Email 2, Nombre Cargo, email personal 1, email personal 2, telefono personal, Actualizacion. 
- Tomo las columnas CIUDAD, TIPO MEDIO, ESPECIALIDAD, y:
    1. Paso a minusculas: funcion "=MINUSC()"
    2. Saco Acentos: funcion "=SUSTITUIR()"
    3. Quito espacios al final: "=RECORTAR()"
    4. Creo las hojas: 
        + tabla_medios, 
        + tabla_tipo_medio, 
        + tabla_ciudades, 
        + tabla_provincias y 
        + tabla_especialidad 
        donde copio los datos correspondientes a cada columna. 
    5. Quito duplicados: opciones Selecciono rango de datos y "Datos/Quitar Duplicados" en cada hoja creada
    6. Con valores unicos en cada "hoja de calculo/tabla" agrego una columna secuenciada "1..n(cant. valores de cada tabla)"
    7. En las tablas tabla_medio y tabla_ciudades, se uso la funcion "=BUSCAR()" para asignar id correspondiente a cada id_provincia (en el caso de tabla_ciudades) y a los id_ciudad, id_tipo_medio y id_especialidad. 
    8. Creadas las tablas depuradas, las guardo cada una en formato CSV, luego se copio en un archivo de texto (TXT), con codificacion LATIN9
        + [tabla_medios (CSV)](extraccion/tabla_medios_resultado.csv) / [tabla_medios (TXT)](extraccion/tabla_medios_resultado.txt), 
        + [tabla_tipo_medio (CSV)](extraccion/tabla_tipo_medio.csv) / [tabla_tipo_medio (TXT)](extraccion/tabla_tipo_medio.txt), 
        + [tabla_ciudades (CSV)](extraccion/tabla_ciudades.csv) / [tabla_ciudades (TXT)](extraccion/tabla_ciudades.txt), 
        + [tabla_provincias (CSV)](extraccion/tabla_provincias.csv) / [tabla_provincias (TXT)](extraccion/tabla_provincias.txt), 
        + [tabla_especialidad (CSV)](extraccion/tabla_especialidad.csv) / [tabla_especialidad (TXT)](extraccion/tabla_especialidad.txt)
- Creacion de tablas en PosgreSql: se creo el archivo [creacion_tabla.sql](carga/creacion_tablas.sql), donde se crearon las tablas correspondientes. Se copio y ejecuto en Pgadmin. 
- Se importo cada uno de los archivos de texto. Finalizando con la normalizacion solicitada. 