CREATE DATABASE holamundo;
USE holamundo;

CREATE TABLE animales{
    id int PRIMARY KEY AUTO_INCREMENT,
    tipo varchar(255) DEFAULT NULL,
    estado varchar(255) DEFAULT NULL
};

-- insertacion de datos omitir este ejemplo si estas apurado
                            INSERT INTO animales (tipo,estado) VALUES ('chanchito','feliz');
                            INSERT INTO animales (tipo,estado) VALUES ('dragon','feliz');
                            INSERT INTO animales (tipo,estado) VALUES ('felipe','triste');
                            
                            -- mostrar toda la tabla animales 
                            SELECT * FROM animales;

                            -- mostrar un registro(columna) o varios registros
                            SELECT * FROM animales WHERE id=1;  
                            SELECT * FROM animales WHERE estado='feliz';                       
                            SELECT * FROM animales WHERE estado='feliz' AND tipo='chanchito';

                            -- actualizar los registro(columnas)
                            UPDATE animales SET estado='feliz' WHERE id=3;

                            -- eliminar una fila 
                            DELETE FROM animales WHERE id=3;
                            
                            -- actualizar
                            --UPDATE animales SET estado='triste' WHERE id=2;

-- Lectura y muestro de datos mas profunda READ (GRUD)                            

CREATE TABLE user{
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    edad int NOT NULL,
    email varchar(100) NOT NULL
};

INSERT INTO user (name, edad, email) VALUES ('Oscar', 25,'oscar@gmail.com');
INSERT INTO user (name, edad, email) VALUES ('Layla', 15,'layla@gmail.com');
INSERT INTO user (name, edad, email) VALUES ('Nicolas', 36,'nico@gmail.com');
INSERT INTO user (name, edad, email) VALUES ('Chanchito', 7,'chanchito@gmail.com');

SELECT * FROM user;

-- nos mostrara el primer registro que encuentre
SELECT * FROM user LIMIT 1;

-- muestra los datos de la tabla user y de los registros necesarios
SELECT * FROM user WHERE edad>15;
SELECT * FROM user WHERE edad>=15;

-- Busca obligatoriamente ambos datos y los muestra
SELECT * FROM user WHERE edad>20 AND email='nico@gmail.com';

-- Busca opcionalmente ambos datos y los muestra si encuentra uno de ellos
SELECT * FROM user WHERE edad>20 OR email='laylaqgmail.com';

-- buscar el dato y nos muestra todos los datos menos ese digitado
SELECT * FROM user WHERE email != 'laylaqgmail.com';

-- busca todos lo datos de edan que esten en ese rango
SELECT * FROM user WHERE edad BETWEEN 15 and 20;

-- busca una cadena de texto en el registro email y nos muestra los resultados
-- el % = da igual que haya ahí 
SELECT * FROM user WHERE email LIKE '%gmail%';
SELECT * FROM user WHERE email LIKE '%gmail';
SELECT * FROM user WHERE email LIKE 'oscar%';

-- Busca y muestra ordena de forma ascendente los datos de edad
SELECT * FROM user ORDER BY edad ASC;
SELECT * FROM user ORDER BY edad DESC;

-- la edad maxima y lo muestra en una columna con el nombre digitado='mayor'
SELECT max(edad) AS mayor from user;
SELECT min(edad) AS menor from user;


-- Seleccionare y mostraremos solo las columnas de interes
SELECT id, name from user;

-- cambiar el nombre por encima
SELECT id, name AS nombre123 FROM user;  









