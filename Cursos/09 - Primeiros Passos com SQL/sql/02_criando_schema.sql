CREATE DATABASE IF NOT EXISTS first_example;
USE first_example;

CREATE TABLE person(
	person_id SMALLINT UNSIGNED,
    fname VARCHAR(20),
    lname VARCHAR(20),
    gender ENUM('M','F','Others'),
    birth_date DATE,
    street VARCHAR(20),
    city VARCHAR(20),
    state VARCHAR(20),
    country VARCHAR(20),
    postal_code VARCHAR(20),
    CONSTRAINT pk_person PRIMARY KEY (person_id)
);

DESC person;

-- Criando outra tabela
CREATE TABLE favorite_food(
	person_id SMALLINT UNSIGNED,
    food VARCHAR(20),
    CONSTRAINT pk_favorite_food PRIMARY KEY (person_id, food),
    CONSTRAINT fk_favorite_food_person_id FOREIGN KEY (person_id) REFERENCES person(person_id)
);

DESC favorite_food;

SELECT * FROM information_schema.table_constraints
WHERE CONSTRAINT_SCHEMA = 'first_example';