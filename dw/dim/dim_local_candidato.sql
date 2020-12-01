DROP TABLE IF EXISTS vestibular.dim_local_candidato;

CREATE TABLE vestibular.dim_local_candidato AS SELECT
    c.id_candidato,
    c.id_evento,
    c.cidade as nome_municipio,
    c.unidade_federativa
FROM vestibular.candidato c;

ALTER TABLE vestibular.dim_local_candidato ADD sk_id_local_candidato INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
