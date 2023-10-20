-- esto esta conectado con algunas tablas de practicando.sql
CREATE TABLE products{
    id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(50) NOT NULL,
    created_by int NOT NULL,
    marca varchar(50) NOT NULL,
    FOREIGN KEY(created_by) REFERENCES user(id)
};

-- cambiar el nombre de las tablas
RENAME TABLE products TO product;

--insertacion de datos
INSERT INTO product (name, created_by, marca)
VALUES
    ('ipad', 1, 'apple'),
    ('iphone', 1, 'apple'),
    ('watch', 2, 'apple'),
    ('mackbook',1, 'apple'),
    ('imac', 3, 'apple'),
    ('ipad', 2, 'apple');

-- mostramos los datos insertados
SELECT * FROM product;

-- busqueda de la tabla de USUARIO a PRODUCTO LEFT JOIN (TABLA PRINCIPAL USER)
SELECT u.id, u.email, p.name FROM user u LEFT JOIN product p ON u.id = p.created_by;

-- busqueda de la tabla de PRODUCTO a USUARIO LEFT JOIN (TABLA PRINCIPAL PRODUCT)
SELECT u.id, u.email, p.name FROM user u RIGHT JOIN product p ON u.id = p.created_by;

-- este no me quedo claro
SELECT u.id, u.email, p.name FROM user u INNER JOIN product p ON u.id = p.created_by;

-- producto cartesiano- no me quedo claro
SELECT u.id, u.name, p.id, p.name FROM user u CROSS JOIN product p;

-- GROUP BY ....................... me quede ahí
https://youtu.be/uUdKAYl-F7g?si=6JFDCBq0GrC43GqB&t=5390

