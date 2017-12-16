USE test;
CREATE TABLE partido
   (sigla                          CHAR(10)      NOT NULL,
    nome                           VARCHAR(50)   NOT NULL)
; #
CREATE TABLE candidato
   (numero                         INT(5)        NOT NULL,
    nome                           VARCHAR(50)   NOT NULL,
    cargo                          VARCHAR(20)   NOT NULL,
    partido                        CHAR(10)      NOT NULL)
; #
CREATE TABLE secao
   (numero                         INT(5)        NOT NULL,
    bairro                         VARCHAR(40)   NOT NULL,
    local                          VARCHAR(100)  NOT NULL)
; #
CREATE TABLE eleitor
   (titulo                         INT(5)       NOT NULL,
    nome                           VARCHAR(50)  NOT NULL,
    data_nascimento                DATE         NOT NULL,
    secao                          INT(5)       NOT NULL)
; #
CREATE TABLE votacao
   (eleitor                        INT(5)       NOT NULL,
    candidato                      INT(5)       NOT NULL,
    ano                            INT(5)       NOT NULL)
; #
ALTER TABLE partido
ADD CONSTRAINT pk_partido PRIMARY KEY (sigla)
; #
ALTER TABLE candidato
ADD CONSTRAINT pk_candidato PRIMARY KEY (numero)
; #
ALTER TABLE secao
ADD CONSTRAINT pk_secao PRIMARY KEY (numero)
; #
ALTER TABLE eleitor
ADD CONSTRAINT pk_eleitor PRIMARY KEY (titulo)
; #
ALTER TABLE votacao
ADD CONSTRAINT pk_votacao PRIMARY KEY (eleitor, candidato, ano)
; #
ALTER TABLE candidato
ADD CONSTRAINT fk_candidato_partido FOREIGN KEY (partido)
REFERENCES partido (sigla)
;#
ALTER TABLE eleitor
ADD CONSTRAINT fk_eleitor_secao FOREIGN KEY (secao)
REFERENCES secao (numero)
; #
ALTER TABLE votacao
ADD CONSTRAINT fk_votacao_eleitor FOREIGN KEY (eleitor)
REFERENCES eleitor (titulo)
; #
ALTER TABLE votacao
ADD CONSTRAINT fk_votacao_candidato FOREIGN KEY (candidato)
REFERENCES candidato (numero)
; #
insert into secao (numero,bairro,local) 
values (1,'Centro','Instituto de Educação do Amazonas');
insert into secao (numero,bairro,local) 
values (2,'Aleixo','Secretaria de Fazenda do Estado do Amazonas');
insert into secao (numero,bairro,local) 
values (10,'Terra Nova','Escola Estadual Marquês de Pombal');
insert into secao (numero,bairro,local) 
values (32,'São Raimundo','Escola Estadual Marquês de Santa Cruz');
insert into secao (numero,bairro,local) 
values (40,'São José','Maternidade Ana Braga');
insert into secao (numero,bairro,local) 
values (66,'Santa Etelvina','Colégio Municipal Amazonino Mendes');
insert into eleitor (titulo,nome,data_nascimento,secao) 
values (1000,'José da Silva','1980-11-15',1);
insert into eleitor (titulo,nome,data_nascimento,secao) 
values (1200,'Maria Bizantina','1975-04-12',1);
insert into eleitor (titulo,nome,data_nascimento,secao) 
values (2100,'Serafina Souza','1960-11-04',2);
insert into eleitor (titulo,nome,data_nascimento,secao) 
values (3100,'Antonia Souza','1985-11-11',10);
insert into eleitor (titulo,nome,data_nascimento,secao) 
values (3200,'José Agripino','1990-01-01',10);
insert into eleitor (titulo,nome,data_nascimento,secao) 
values (3500,'André Soares','1973-02-25',32);
insert into eleitor (titulo,nome,data_nascimento,secao) 
values (4000,'Mariana Lima','1971-11-10',32);
insert into eleitor (titulo,nome,data_nascimento,secao) 
values (4200,'José Brochado Pinto','1981=01-05',40);
insert into eleitor (titulo,nome,data_nascimento,secao) 
values (4500,'Oscar Alho','1989-03-22',40);
insert into eleitor (titulo,nome,data_nascimento,secao) 
values (4800,'Inácio Pinto','1976-04-30',40);
insert into partido (sigla,nome)
values ('PT','Partido dos Trabalhadores');
insert into partido (sigla,nome)
values ('PMDB','Partido do Movimento Democrático Brasileiro');
insert into partido (sigla,nome)
values ('DEM','Democratas');
insert into partido (sigla,nome)
values ('PSDB','Partido Social Democrata Brasileiro');
insert into partido (sigla,nome)
values ('PV','Partido Verde');
insert into partido (sigla,nome)
values ('PSOL','Partido Social e Libertação');
insert into partido (sigla,nome)
values ('PSB','Partido Socialista Brasileiro');
insert into candidato (numero,nome,cargo,partido)
values (13,'Lula','Presidente','PT');
insert into candidato (numero,nome,cargo,partido)
values (40,'Serafim','Prefeito','PSB');
insert into candidato (numero,nome,cargo,partido)
values (25,'Acrenino Mendes','Prefeito','DEM');
insert into candidato (numero,nome,cargo,partido)
values (15,'Eduardo Braga','Governador','PMDB');
insert into candidato (numero,nome,cargo,partido)
values (11,'Alfredo','Governador','DEM');
insert into candidato (numero,nome,cargo,partido)
values (451,'Sabino','Vereador','PSDB');
insert into candidato (numero,nome,cargo,partido)
values (131,'Vanessa','Vereador','PT');
insert into candidato (numero,nome,cargo,partido)
values (132,'Eron','Vereador','PT');
insert into candidato (numero,nome,cargo,partido)
values (133,'João Pedro','Vereador','PT');
insert into candidato (numero,nome,cargo,partido)
values (401,'Barbosão','Vereador','PSB');
insert into candidato (numero,nome,cargo,partido)
values (403,'Aninha','Vereador','PSB');
insert into candidato (numero,nome,cargo,partido)
values (405,'Carrapeta','Vereador','PSB');
insert into candidato (numero,nome,cargo,partido)
values (407,'Tabosa','Vereador','PSB');
insert into candidato (numero,nome,cargo,partido)
values (152,'Gilberto','Vereador','PMDB');
insert into candidato (numero,nome,cargo,partido)
values (154,'Mitoso','Vereador','PMDB');
insert into candidato (numero,nome,cargo,partido)
values (156,'Leonel','Vereador','PMDB');
insert into candidato (numero,nome,cargo,partido)
values (158,'Carrel','Vereador','PMDB');
insert into candidato (numero,nome,cargo,partido)
values (901,'Marina','Deputado Federal','PSOL');
insert into candidato (numero,nome,cargo,partido)
values (905,'Babá','Deputado Federal','PSOL');
insert into candidato (numero,nome,cargo,partido)
values (906,'Garotinho','Deputado Federal','PT');
insert into candidato (numero,nome,cargo,partido)
values (907,'Sarney','Deputado Federal','PMDB');
insert into candidato (numero,nome,cargo,partido)
values (908,'Toninho do Côco','Deputado Federal','DEM');
insert into votacao (eleitor,candidato,ano)
values (1000,13,1998);
insert into votacao (eleitor,candidato,ano)
values (1000,40,1998);
insert into votacao (eleitor,candidato,ano)
values (1200,15,2008);
insert into votacao (eleitor,candidato,ano)
values (3100,132,1996);
insert into votacao (eleitor,candidato,ano)
values (3200,133,1996);
insert into votacao (eleitor,candidato,ano)
values (3100,13,1996);
insert into votacao (eleitor,candidato,ano)
values (3100,15,1996);
insert into votacao (eleitor,candidato,ano)
values (3200,25,1996);
insert into votacao (eleitor,candidato,ano)
values (3100,131,1996);
insert into votacao (eleitor,candidato,ano)
values (3100,133,1996);
insert into votacao (eleitor,candidato,ano)
values (3500,25,2000);
insert into votacao (eleitor,candidato,ano)
values (4000,401,1998);
insert into votacao (eleitor,candidato,ano)
values (4200,403,1998);
insert into votacao (eleitor,candidato,ano)
values (4500,132,1998);
insert into votacao (eleitor,candidato,ano)
values (1200,133,1998);
insert into votacao (eleitor,candidato,ano)
values (3200,451,1998);
insert into votacao (eleitor,candidato,ano)
values (4500,15,2000);
insert into votacao (eleitor,candidato,ano)
values (4800,905,2008);
insert into votacao (eleitor,candidato,ano)
values (1200,908,2006);
insert into votacao (eleitor,candidato,ano)
values (3100,908,2006);
insert into votacao (eleitor,candidato,ano)
values (3200,908,2006);
insert into votacao (eleitor,candidato,ano)
values (3500,908,2006);
insert into votacao (eleitor,candidato,ano)
values (4000,908,2006);
insert into votacao (eleitor,candidato,ano)
values (1200,907,2006);
insert into votacao (eleitor,candidato,ano)
values (3200,907,2006);
insert into votacao (eleitor,candidato,ano)
values (3500,907,2006);
insert into votacao (eleitor,candidato,ano)
values (4800,906,2006);
insert into votacao (eleitor,candidato,ano)
values (4500,906,2006);
commit;