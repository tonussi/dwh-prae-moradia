DROP TABLE IF EXISTS vestibular.dim_curso;

CREATE TABLE vestibular.dim_curso AS
SELECT c.id_evento, c.id_candidato, oc.id_opcao, cs.nome_curso FROM candidato c
JOIN vestibular.opcao_candidato oc ON c.id_evento=oc.id_evento AND c.id_candidato=oc.id_candidato
JOIN vestibular.curso cs ON oc.id_evento=cs.id_evento AND oc.codigo_opcao=cs.id_curso;

ALTER TABLE vestibular.dim_curso ADD sk_id_curso INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
