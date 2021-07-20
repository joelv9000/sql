CREATE TABLE ejerciciosql.usuarios(
    id        INT AUTO_INCREMENT NOT NULL,
    nombre    VARCHAR(100) NOT NULL UNIQUE, 
    apellidos VARCHAR(100) NOT NULL UNIQUE,
    email     VARCHAR(100) NOT NULL UNIQUE,
    password  VARCHAR(100) NOT NULL UNIQUE,
    fecha     date         NOT NULL UNIQUE,
    CONSTRAINT pk_usuarios PRIMARY KEY(id)
    );
CREATE TABLE ejerciciosql.categorias(
    id        INT AUTO_INCREMENT NOT NULL,
    nombre    VARCHAR(100) NOT NULL,
    CONSTRAINT pk_categorias PRIMARY KEY (id)
    );

CREATE TABLE ejerciciosql.entradas(
    id            INT AUTO_INCREMENT NOT NULL,
    usuario_id    INT      NOT NULL,
    categoria_id  INT      NOT NULL,
    titulo    VARCHAR(200) NOT NULL,
    descripcion text,
    fecha         DATE     NOT NULL,
    CONSTRAINT pk_entradas  PRIMARY KEY(id)
    
);
ALTER TABLE entradas ADD CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id)
;
ALTER TABLE entradas ADD CONSTRAINT fk_entrada_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id)
;