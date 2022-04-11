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