/*renombrar la tabla SQL*/
ALTER TABLE usuarios RENAME TO usuarios_renom;

/*Renombrar una columna SQL*/
ALTER TABLE usuarios_renom CHANGE apellidos apellido VARCHAR(100) NULL;

/*Modificar la columna sin cambiar el nombre*/
ALTER TABLE usuarios_renom MODIFY apellido CHAR (50) NOT NULL;

/*Añdir columna*/
ALTER TABLE usuarios_renom ADD website VARCHAR(50);

/* Añadir una restriccion a una columna */
ALTER TABLE usuarios_renom ADD CONSTRAINT   uq_email UNIQUE (email);

/*Borrar columna*/
ALTER TABLE  usuarios_renom DROP website;
