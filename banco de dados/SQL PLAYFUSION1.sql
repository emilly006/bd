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
