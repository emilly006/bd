create database playFusion;
use playFusion;

create table equipe(
idDaEquipe varchar(15),
nome varchar(100),
primary key(idDaEquipe)
);

create table jogo(
nome varchar(30),
codigo varchar(10) primary key,
categoria varchar(10),
jogosDisponoveis varchar(30)
);

create table premio(
codigo varchar(20)primary key,
descricao varchar (32),
tipo varchar(21)
);

create table competicao(
premiação varchar (20),
codigo varchar (20) primary key,
dataI int,
dataF int,
local varchar (12)
);

create table jogador(
nome varchar (32),
categoria varchar (25),
nivel int,
Id varchar (15) primary key
);

CREATE TABLE PremioJogoEquipeCompetição(
FK_PREMIO_CODIGO VARCHAR(20),
FK_JOGO_CODIGO VARCHAR(10),
FK_EQUIPE_IDDAEQUIPE VARCHAR(15),
FK_COMPETICAO_CODIGO VARCHAR(20),
FOREIGN KEY(FK_PREMIO_CODIGO) REFERENCES PREMIO (CODIGO),
FOREIGN KEY(FK_JOGO_CODIGO) REFERENCES JOGO (CODIGO),
FOREIGN KEY(FK_EQUIPE_IDDAEQUIPE) REFERENCES EQUIPE(IDDAEQUIPE),
FOREIGN KEY(FK_COMPETICAO_CODIGO) REFERENCES COMPETICAO(CODIGO),
PRIMARY KEY(FK_PREMIO_CODIGO,FK_JOGO_CODIGO,FK_EQUIPE_IDDAEQUIPE,FK_COMPETICAO_CODIGO)
);

#tabela de equipe
INSERT INTO equipe(idDaEquipe, nome ) values('5555', 'equipe1');
INSERT INTO equipe(idDaEquipe, nome ) values('5556', 'equipe2');
INSERT INTO equipe(idDaEquipe, nome ) values('5522', 'equipe3');

#tabela jogo

INSERT INTO JOGO(nome,codigo ,categoria,jogosDisponoveis ) VALUES('FREE FIRE','2222','1','FF, VV, LOL');
INSERT INTO JOGO(nome,codigo ,categoria,jogosDisponoveis ) VALUES('FREE FIRE','2262','2','FF, VV, LOL');
INSERT INTO JOGO(nome,codigo ,categoria,jogosDisponoveis ) VALUES('FREE FIRE','2252','3','FF, VV, LOL');

#PREMIO

INSERT INTO PREMIO(codigo,descricao,tipo) VALUES('444B','PIX','1');
INSERT INTO PREMIO(codigo,descricao,tipo) VALUES('494B','MOEDA EM JOGO','2');
INSERT INTO PREMIO(codigo,descricao,tipo) VALUES('444AB','TRANSFERENCIA','1');

#COMPETIÇÃO

INSERT INTO COMPETICAO(premiação,codigo ,dataI,dataF,local)VALUES('2','555', 2023, 2024, 'ENDEREÇO TAL');
INSERT INTO COMPETICAO(premiação,codigo ,dataI,dataF,local)VALUES('6','565', 07, 09, 'ENDEREÇO TAL');
INSERT INTO COMPETICAO(premiação,codigo ,dataI,dataF,local)VALUES('2','557', 2025, 2026, 'ENDEREÇO TAL');

#JOGADOR

INSERT INTO JOGADOR(nome,categoria,Nivel,Id ) VALUES('EMILLY', 'INICIANTE', 3, '66N');










