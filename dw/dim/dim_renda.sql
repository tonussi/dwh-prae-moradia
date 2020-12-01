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
