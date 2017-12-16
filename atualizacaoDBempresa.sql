USE empresa;
ALTER TABLE empregado ADD COLUMN salario DECIMAL(11,2);

UPDATE `empregado` SET `salario`= 20358.36 WHERE matricula=1111;
UPDATE `empregado` SET `salario`= 4000.23 WHERE matricula=1515;
UPDATE `empregado` SET `salario`= 5050.45 WHERE matricula=1212;
UPDATE `empregado` SET `salario`= 3776.68 WHERE matricula=5050;
UPDATE `empregado` SET `salario`= 4358.36 WHERE matricula=5555;

CREATE TABLE engenheiro
   (matricula                      INT(10)       NOT NULL,
    especialiade                   VARCHAR(50)   NOT NULL,
	CREA		            	   INT(10)       NOT NULL,
	PRIMARY KEY (matricula),
	FOREIGN KEY (matricula) REFERENCES empregado(matricula))
;
insert into engenheiro (matricula,especialiade,CREA) 
values (1515,'Redes',27),(1111,'programacao',27),(1212,'IA',27),(5050,'hardware',27),(5555,'software',27);
CREATE TABLE secretaria
   (matricula                      INT(10)       NOT NULL,
    qualificacao                   VARCHAR(50)   NOT NULL,
	PRIMARY KEY (matricula),
	FOREIGN KEY (matricula) REFERENCES empregado(matricula))
;
insert into secretaria (matricula,qualificacao) 
values (1515,'tecnico'),(1111,'bacharel'),(1212,'mestre'),(5050,'doutor'),(5555,'phd');
CREATE TABLE secretaria_idiomas
   (matricula                      INT(10)       NOT NULL,
    idiomas                   	   VARCHAR(50)   NOT NULL,
	PRIMARY KEY (idiomas,matricula),
	FOREIGN KEY (matricula) REFERENCES secretaria(matricula))
;
insert into secretaria_idiomas (matricula,idiomas) 
values (1515,'ingles'),(1111,'espanhol'),(1212,'japones'),(5050,'portugues'),(5555,'mandarim');