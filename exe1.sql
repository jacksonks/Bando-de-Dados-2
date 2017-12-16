USE empresa;
CREATE TABLE departamento
   (codigo            			   INT(10)       NOT NULL,
    nome                           VARCHAR(50)   NOT NULL,
	PRIMARY KEY (codigo))
;
insert into departamento (codigo,nome)
values (27,'industrial');
insert into departamento (codigo,nome)
values (15,'almocharifado');
insert into departamento (codigo,nome)
values (30,'prevencao');
insert into departamento (codigo,nome)
values (17,'manutencao');
insert into departamento (codigo,nome)
values (60,'distribuicao');
CREATE TABLE empregado
   (matricula                      INT(10)       NOT NULL,
    admissao 					   DATE          NOT NULL,
    nome                           VARCHAR(50)   NOT NULL,
	nacionalidade                  VARCHAR(30)   NOT NULL,
	telefone                  	   VARCHAR(15)   NOT NULL,
	sexo                  	   	   CHAR(10)   	 NOT NULL,
	endereco                  	   VARCHAR(50)   NOT NULL,
	codigo		            	   INT(10)       NOT NULL,
	PRIMARY KEY (matricula),
	FOREIGN KEY (codigo) REFERENCES departamento(codigo))
;
insert into empregado (matricula,admissao,nome,nacionalidade,telefone,sexo,endereco,codigo) 
values (1515,'2017/01/25','jackson kelvin','japao','993084281','masculino','rua 28 Nº157 nova cidade',27);
insert into empregado (matricula,admissao,nome,nacionalidade,telefone,sexo,endereco,codigo)
values (1111,'2011/03/17','jeff souza','brasil','993084480','masculino','rua 28 Nº157 nova cidade',15);
insert into empregado (matricula,admissao,nome,nacionalidade,telefone,sexo,endereco,codigo)
values (1212,'2013/05/25','zeneuda souza','brasil','994257421','feminino','rua 28 Nº157 nova cidade',17);
insert into empregado (matricula,admissao,nome,nacionalidade,telefone,sexo,endereco,codigo)
values (5050,'2002/03/22','ademir lopes','brasil','993035547','masculino','rua 28 Nº157 nova cidade',17);
insert into empregado (matricula,admissao,nome,nacionalidade,telefone,sexo,endereco,codigo)
values (5555,'2007/07/11','deth soares','brasil','991113629','masculino','rua 28 Nº157 nova cidade',60);
CREATE TABLE ramais
   (ramal				   		   INT(10)       NOT NULL,
    codigo                   	   INT(10)   	 NOT NULL,
	PRIMARY KEY (ramal),
	FOREIGN KEY (codigo) REFERENCES departamento(codigo))
;
insert into ramais (ramal,codigo)
values (61,27);
insert into ramais (ramal,codigo)
values (51,17);
insert into ramais (ramal,codigo)
values (91,30);
insert into ramais (ramal,codigo)
values (69,60);
insert into ramais (ramal,codigo)
values (89,15);
commit;