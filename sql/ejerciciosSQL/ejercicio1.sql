
CREATE SCHEMA ejerciciosql,
/* crear en sql-scrip el diagrama de carlos , 3 tablas , con un unique , y primary keys, y alter table*/
CREATE TABLE ejerciciosql.usuarios(
    id        INT AUTO_INCREMENT NOT NULL,
    nombre    VARCHAR(100) NOT NULL UNIQUE, 
    apellidos VARCHAR(100) NOT NULL UNIQUE,
    email     VARCHAR(100) NOT NULL UNIQUE,
    password  VARCHAR(100) NOT NULL UNIQUE,
    fecha     date         NOT NULL UNIQUE,
    CONSTRAINT pk_usuarios PRIMARY KEY(id)
    );

/*creamos tabla de categorias*/
CREATE TABLE ejerciciosql.categorias(
    id        INT AUTO_INCREMENT NOT NULL,
    nombre    VARCHAR(100) NOT NULL,
    CONSTRAINT pk_categorias PRIMARY KEY (id),
    );
/*Creamos tabla de entradas con 2 foreing keys*/
CREATE TABLE ejerciciosql.entradas(
    id            INT AUTO_INCREMENT NOT NULL,
    usuario_id    INT      NOT NULL,
    categoria_id  INT      NOT NULL,
    titulo    VARCHAR(200) NOT NULL,
    descripcion text,
    fecha         DATE     NOT NULL,
    CONSTRAINT pk_entradas  PRIMARY KEY(id),
    /*modificando la tabla generas las foreing key una por cada categoria*/
    ALTER TABLE entrada ADD CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id)
    ALTER TABLE entrada ADD CONSTRAINT fk_entrada_categoria FOREIGN KEY(caegoria_id) REFERENCES categorias(id)
);
