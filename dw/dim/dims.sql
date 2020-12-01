DROP TABLE IF EXISTS vestibular.dim_candidato;

CREATE TABLE vestibular.dim_candidato AS SELECT
	id_evento,
	id_candidato,
	-- nome_candidato,
	data_nascimento,
	sexo,
	raca,
	por_experiencia
FROM vestibular.candidato;

ALTER TABLE vestibular.dim_candidato ADD sk_id_candidato INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
DROP TABLE IF EXISTS vestibular.dim_curso;

CREATE TABLE vestibular.dim_curso AS
SELECT c.id_evento, c.id_candidato, oc.id_opcao, cs.nome_curso FROM candidato c
JOIN vestibular.opcao_candidato oc ON c.id_evento=oc.id_evento AND c.id_candidato=oc.id_candidato
JOIN vestibular.curso cs ON oc.id_evento=cs.id_evento AND oc.codigo_opcao=cs.id_curso;

ALTER TABLE vestibular.dim_curso ADD sk_id_curso INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
DROP TABLE IF EXISTS vestibular.dim_local_candidato;

CREATE TABLE vestibular.dim_local_candidato AS SELECT
    c.id_candidato,
    c.id_evento,
    c.cidade as nome_municipio,
    c.unidade_federativa
FROM vestibular.candidato c;

ALTER TABLE vestibular.dim_local_candidato ADD sk_id_local_candidato INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
DROP TABLE IF EXISTS vestibular.dim_renda;

CREATE TABLE
    vestibular.dim_renda
AS SELECT
    srrf.id_candidato, srrf.id_evento, sfrf.faixa as renda
FROM
    vestibular.stg_respostas_renda_familiar srrf
JOIN
    vestibular.stg_faixas_renda_familiar sfrf
ON
    srrf.resposta_renda_familiar = sfrf.id_codigo;

ALTER TABLE vestibular.dim_renda ADD sk_id_renda INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
DROP TABLE IF EXISTS vestibular.dim_vestibular;

CREATE TABLE vestibular.dim_vestibular AS SELECT
    id_evento,
    descricao_evento,
    ano_evento
FROM vestibular.evento;

ALTER TABLE vestibular.dim_vestibular ADD sk_id_evento INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
