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
