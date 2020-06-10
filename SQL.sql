create database db2020;

create table db2020.imovel (
  id BIGINT NOT NULL AUTO_INCREMENT,
  endereco VARCHAR(255),
  proprietario VARCHAR(255),
  valorAluguel double,
  primary key (id)
  );

create table db2020.inquilino(
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  primary key (id)
  );

create table db2020.iq_imovel_inquilino(
	iq_id BIGINT NOT NULL AUTO_INCREMENT,
	iq_idImovel BIGINT,
    iq_idInquilino BIGINT,
    iq_obs VARCHAR(255),
    primary key(iq_id)
);

create table db2020.usuarios (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  login VARCHAR(255),
  senha VARCHAR(255),
  status VARCHAR(255),
  tipo VARCHAR(255),
  primary key (id));

create table db2020.pe_pessoas (
  pe_id BIGINT NOT NULL AUTO_INCREMENT,
  pe_nome VARCHAR(255),
  pe_cpf VARCHAR(255),
  pe_tipo VARCHAR(255),
  pe_email VARCHAR(255),
  primary key (pe_id));

create table db2020.usuarios_pessoas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  idPessoa BIGINT,
  idUsuario BIGINT, 
  observacao VARCHAR(255),
  primary key (id));

ALTER TABLE db2020.iq_imovel_inquilino ADD CONSTRAINT FK_IMO_INQ_ID FOREIGN KEY (iq_idImovel) REFERENCES db2020.IMOVEL (ID);
ALTER TABLE db2020.iq_imovel_inquilino ADD CONSTRAINT FK_INQ_IMO_ID FOREIGN KEY (iq_idInquilino) REFERENCES db2020.INQUILINO (ID);

INSERT INTO `db2020`.`imovel` (`id`, `endereco`, `proprietario`, `valorAluguel`) VALUES ('1', 'Rua Generica 2', 'José', 600);
INSERT INTO `db2020`.`inquilino` (`id`, `nome`) VALUES ('1', 'João');

ALTER TABLE db2020.usuarios_pessoas ADD CONSTRAINT FK_PES_USU_ID FOREIGN KEY (IDPESSOA) REFERENCES db2020.PE_PESSOAS (PE_ID);
ALTER TABLE db2020.usuarios_pessoas ADD CONSTRAINT FK_USU_PES_ID FOREIGN KEY (IDUSUARIO) REFERENCES db2020.USUARIOS (ID); 

INSERT INTO `db2020`.`pe_pessoas` (`pe_nome`, `pe_cpf`, `pe_tipo`, `pe_email`) VALUES ('Alexandre Bittencourt Faria', '13508122859', 'Prof', 'abittencourtfaria@gmail.com');
INSERT INTO `db2020`.`pe_pessoas` (`pe_nome`, `pe_cpf`, `pe_tipo`, `pe_email`) VALUES ('Lais Helena Scuracchio Bittencourt Faria', '123456789', 'Func', 'lais.scuracchio@gmail.com');

INSERT INTO `db2020`.`usuarios` (`id`, `nome`, `login`, `senha`, `status`, `tipo`) VALUES ('1', 'Adriel', 'Adriel', '1234', 'ATIVO', 'ADM');
INSERT INTO `db2020`.`usuarios` (`id`, `nome`, `login`, `senha`, `status`, `tipo`) VALUES ('2', 'LAIS', 'SCURACCHIO', 'ABFABF010101', 'ATIVO', 'VISITANTE');

INSERT INTO `db2020`.`usuarios_pessoas` (`id`, `idPessoa`, `idUsuario`, `observacao`) VALUES ('1', '1', '1', 'TESTE BITTENCOURT');
INSERT INTO `db2020`.`usuarios_pessoas` (`id`, `idPessoa`, `idUsuario`, `observacao`) VALUES ('2', '2', '2', 'TESTE LAIS');

INSERT INTO `db2020`.`iq_imovel_inquilino` (`iq_id`,`iq_idImovel`,`iq_idInquilino`,`iq_obs`) VALUES ('1','1','1','TESTE DE RELACAO IMOVEL_INQUILINO');

SELECT
	im.id "ID_IMV",
    im.endereco "ENDERECO_IMV",
    im.proprietario "PROPRIETARIO_IMV",
    im.valorAluguel "VALOR-ALUGUEL_IMV",
    i.id "ID_INQ",
    i.nome "NOME_INQ",
    iq.iq_id "ID_RELACAO",
    iq.iq_obs "OBS_RELACAO"
FROM
	db2020.imovel im,
    db2020.inquilino i,
    db2020.iq_imovel_inquilino iq
WHERE
	im.id = iq.iq_idImovel
AND
    i.id = iq.iq_idInquilino;
    
SELECT * from db2020.inquilino;