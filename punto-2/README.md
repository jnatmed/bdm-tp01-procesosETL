# Resolucion del Punto 2: 
### Pasos para la extraccion: 

    + Primero se tomaron las fuentes de datos: 
        - etl_estudiantes.csv 
        - 01-02-planes.txt

CARGA DE LAS TABLAS: Sedes, Sexo, Cohorte y Ciudad
En este primer archivo (etl_estudiantes.csv), 
    * Se hicieron tranformaciones, sacando columnas no importantes
    * Dividiendo de esta forma en cuatro flujos de tranformacion
[extraccion de datos de las Tablas Sedes, Sexo Cohorte y Ciudad](img/extraccion-tablas-primarias.jpg)

CARGA DE LA TABLA PLANES: 
    * Para la extraccion de informacion del segundo archivo [01-02-planes.txt](data/01-02-planes.txt), fue un poco mas dificultosa, en el sentido que los espacios entre ambas columnas, no permitian de una forma sencilla parsear los datos. 
En este sentido una vez cargado en Spoon y pasado por el "Replace in String" fue exportado al archivo [salida._planes.txt](data/salida_planes.txt) 
[Extraccion en Spoon](img/extraccion-tabla-planes.jpg)

#### Extraccion del archivo [01-02-etl_cursadas.sql](data/01-02-etl_cursadas.sql)

+ En esta ultima etapa de extraccion, se necesita reemplazar los valores de las Columnas Sede, Sexo, Cohorte y Ciudad por sus correspondientes IDs, generados en los pasos anteriormente descriptos, para lograr cargar  

Rendimiento_Academico(id_estudiante, id_plan, id_sede, id_ciudad, id_sexo, id_cohorte, cantidad_cursadas, cantidad_aprobadas, promedio)

+ Este fue un proceso mucho mas complejo y lo tuve que dejar inconcluso, llegando a la ultima parte donde tenia que ir agregando las columnas calculadas de cantidad_cursadas, cantidad_aprobadas, promedio. El problema devino en los merge_join. 



