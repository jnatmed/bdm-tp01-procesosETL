CREATE TABLE provincias(
    id_provincia SERIAL,
    nombre_provincia VARCHAR(20),
    PRIMARY KEY (id_provincia)
);
CREATE TABLE tipos_medio(
    id_tipo_medio SERIAL,
    descripcion VARCHAR(20),
    PRIMARY KEY (id_tipo_medio)
);
CREATE TABLE especialidades(
    id_especialidad SERIAL,
    descripcion_especialidad VARCHAR(20),
    PRIMARY KEY(id_especialidad)
);
CREATE TABLE ciudades(
    id_ciudad SERIAL,
    nombre_ciudad VARCHAR(20),
    id_provincia SMALLINT,
    PRIMARY KEY(id_ciudad)
);
CREATE TABLE medios(
    id_medio SERIAL,
    descripcion_medio VARCHAR(20),
    id_especialidad SMALLINT,
    id_tipo_medio SMALLINT,
    direccion VARCHAR(20),
    id_ciudad SMALLINT,
    PRIMARY KEY(id_medio)
);
ALTER TABLE ciudades
    ADD CONSTRAINT fk_ciudades_id_provincia
    FOREIGN KEY (id_provincia)
    REFERENCES provincias(id_provincia);
ALTER TABLE medios
    ADD CONSTRAINT fk_medios_id_especialidad
    FOREIGN KEY (id_especialidad)
    REFERENCES especialidades(id_especialidad);
ALTER TABLE medios
    ADD CONSTRAINT fk_medios_id_tipo_medio
    FOREIGN KEY (id_tipo_medio)
    REFERENCES tipos_medio(id_tipo_medio);
ALTER TABLE medios
    ADD CONSTRAINT fk_medios_id_ciudad
    FOREIGN KEY (id_ciudad)
    REFERENCES ciudades(id_ciudad);
