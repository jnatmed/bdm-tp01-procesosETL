    CREATE TABLE Sedes(
        id_sede SERIAL,
        sede VARCHAR(40),
        PRIMARY KEY (id_sede)
    );
    CREATE TABLE Sexo(
        id_sexo SERIAL,
        Sexo VARCHAR(40),
        PRIMARY KEY (id_sexo)
    );
    CREATE TABLE Cohortes(
        id_cohorte SERIAL,
        cohorte SMALLINT,
        PRIMARY KEY (id_cohorte)
    );
    CREATE TABLE Ciudades(
        id_ciudad SERIAL,
        codigo_postal SMALLINT,
        nombre_ciudad VARCHAR(20),
        provincia VARCHAR(40),
        PRIMARY KEY (id_ciudad)
    );
    CREATE TABLE Planes(
        id_plan SERIAL,
        codigo_plan SMALLINT,
        codigo_carrera SMALLINT,
        nombre_carrera VARCHAR(50),
        PRIMARY KEY (id_plan)
    );
    CREATE TABLE Rendimiento_Academico(
        id_estudiante INTEGER,
        id_plan SMALLINT,
        id_sede SMALLINT,
        id_ciudad SMALLINT,
        id_sexo SMALLINT,
        id_cohorte SMALLINT,
        cantidad_cursadas INTEGER,
        cantidad_aprobadas INTEGER,
        promedio DOUBLE PRECISION,
        PRIMARY KEY (id_estudiante)
    );

    ALTER TABLE Rendimiento_Academico
        ADD CONSTRAINT fk_id_plan
        FOREIGN KEY (id_plan)
        REFERENCES Planes(id_plan);
    ALTER TABLE Rendimiento_Academico
        ADD CONSTRAINT fk_id_sexo
        FOREIGN KEY (id_sexo)
        REFERENCES Sexo(id_sexo);
    ALTER TABLE Rendimiento_Academico
        ADD CONSTRAINT fk_id_ciudad
        FOREIGN KEY (id_ciudad)
        REFERENCES Ciudades(id_ciudad);
    ALTER TABLE Rendimiento_Academico
        ADD CONSTRAINT fk_id_sede
        FOREIGN KEY (id_sede)
        REFERENCES Sedes(id_sede);
    ALTER TABLE Rendimiento_Academico
        ADD CONSTRAINT fk_id_cohorte
        FOREIGN KEY (id_cohorte)
        REFERENCES Cohortes(id_cohorte);