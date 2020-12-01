DROP TABLE IF EXISTS vestibular.stg_aprovados;

CREATE TABLE vestibular.stg_aprovados AS SELECT
	IF ((coalesce(cc.id_candidato, 0)) = 0, 0, 1) AS aprovacao_candidato,
	c.id_candidato,
	c.id_evento
FROM candidato c LEFT OUTER JOIN candidato_classificado cc ON c.id_candidato=cc.id_candidato;

ALTER TABLE vestibular.stg_aprovados ADD sk_id_aprovados INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
