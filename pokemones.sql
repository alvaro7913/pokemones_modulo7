\c alvaro
DROP DATABASE pokemones;
CREATE DATABASE pokemones;
\c pokemones

CREATE TABLE pokemones(
    pokedex SERIAL,
    nombre VARCHAR(30),
    tipo1 VARCHAR(20),
    tipo1 VARCHAR(20),
    PRIMARY KEY pokedex
);
SELECT * FROM pokemones;

\copy pokemones FROM 'pokemonesKanto.csv' csv headers;
SELECT * FROM pokemones LIMIT 10;

CREATE TABLE mis_pokemones(
    pokedex INT,
    fecha_captura DATE,
    lugar VARCHAR(30),
    huevo BOOLEAN,
    peso FLOAT,
    estature FLOAT,
    FOREIGN KEY (pokedex) REFERENCES pokemones(pokedex)
);
SELECT * FROM mis_pokemones;

\copy mis_pokemones FROM 'mis_pokemonesKanto.csv' csv headers;
SELECT * FROM mis_pokemones LIMIT 5;

-- consulta con alias
SELECT pokedex AS número FROM pokemones WHERE nombre = 'Eevee';

NSERT INTO mis_pokemones (pokedex, fecha_captura, lugar, huevo, peso, estatura)
VALUES (133, '2021-04-12', 'Puente Asalto', false, 15.6, 0.3);
NSERT INTO mis_pokemones (pokedex, fecha_captura, lugar, huevo, peso, estatura)
VALUES (134, '2021-04-12', 'La loma del toro', false, 25.6, 0.8);

SELECT * FROM mis_pokemones ORDER BY fecha_captura DESC LIMIT 3;
SELECT * FROM mis_pokemones WHERE EXTRACT (YEAR FROM fecha_captura) = 2021;
SELECT SUM(peso) AS total FROM mis_pokemones;