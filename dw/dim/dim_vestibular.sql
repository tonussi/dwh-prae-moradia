DROP TABLE IF EXISTS vestibular.dim_vestibular;

CREATE TABLE vestibular.dim_vestibular AS SELECT
    id_evento,
    descricao_evento,
    ano_evento
FROM vestibular.evento;

ALTER TABLE vestibular.dim_vestibular ADD sk_id_evento INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
