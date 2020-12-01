DROP TABLE IF EXISTS vestibular.stg_respostas_renda_familiar;

CREATE TABLE vestibular.stg_respostas_renda_familiar AS SELECT
    dm.id_candidato, dm.id_evento, substring(dm.grade_socioeconomico, 20, 1) AS resposta_renda_familiar
FROM vestibular.candidato dm;

ALTER TABLE vestibular.stg_respostas_renda_familiar ADD sk_id_respostas_renda_familiar INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
