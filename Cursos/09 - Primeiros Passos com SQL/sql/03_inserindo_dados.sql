use first_example;

INSERT INTO person VALUES ('1', 'Marcos', 'Carreiro', 'M', '1996-10-10', 'Rua A', 'Uberlândia', 'MG', 'Brasil', '12345-010');
INSERT INTO person VALUES ('2', 'Thais', 'Carreiro', 'F', '1997-12-01', 'Rua DEF', 'Itumbiara', 'GO', 'Brasil', '34589-024');
INSERT INTO person VALUES ('3', 'Luana', 'Trindade', 'F', '1991-07-14', 'Rua Lua', 'Patos de Minas', 'MG', 'Brasil', '78512-060');

-- Outra forma de inserir mais dados
INSERT INTO person VALUES ('4', 'Celia', 'Carreiro', 'F', '1969-12-08', 'Rua B', 'Itumbiara', 'GO', 'Brasil', '12345-074'),
						 ('5', 'Levi', 'Trindade', 'M', '2022-12-09', 'Rua Lua', 'Patos de Minas', 'MG', 'Brasil', '78512-060');

SELECT * FROM person;

INSERT INTO favorite_food VALUES ('1', 'lasanha'),
						         ('2', 'coxinha'),
								('3', 'pizza'),
                                ('4', 'pastel'),
                                ('5', 'pizza');

SELECT * FROM favorite_food;