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

\COPY pokemones FROM 'pokemonesKanto.csv' csv headers;
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

\COPY mis_pokemones FROM 'mis_pokemonesKanto.csv' csv headers;
SELECT * FROM mis_pokemones;