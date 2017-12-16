CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE livros
	(codigo INT(11) NOT NULL,
	 nome VARCHAR(30) NOT NULL,
	 ano INT(10) NOT NULL,
	 qtd INT NOT NULL DEFAULT 0,
	 PRIMARY KEY (codigo));
	 
CREATE TABLE itensCompra 
	(notaFiscal INT NOT NULL,
	 codigo INT(10) NOT NULL,
	 qtd INT NOT NULL,
	 PRIMARY KEY(notaFiscal,codigo),
	 FOREIGN KEY (codigo) REFERENCES livros(codigo));
	 
insert into livros (codigo, nome, ano, qtd) 
values (1515,'Sistemas operacionais',2017,27),(1211,'Python',2011,15),(1110,'Ruby',2010,10),(1970,'BD',2012,7);

commit;
-----------------------------------------------
INSERT INTO itenscompra VALUES (3,1515,4);
