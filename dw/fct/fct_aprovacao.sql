DROP TABLE IF EXISTS vestibular.fct_aprovacao;

CREATE TABLE vestibular.fct_aprovacao AS SELECT
    dc.sk_id_candidato,
    dv.sk_id_evento,
    dlc.sk_id_local_candidato,
    dr.sk_id_renda,
    dcs.sk_id_curso,
    sa.aprovacao_candidato

FROM vestibular.dim_candidato dc JOIN vestibular.dim_vestibular dv ON dc.id_evento=dv.id_evento
JOIN vestibular.dim_local_candidato dlc ON dc.id_candidato=dlc.id_candidato
JOIN vestibular.dim_renda dr ON dc.id_candidato=dr.id_candidato
JOIN vestibular.dim_curso dcs on dc.id_candidato=dcs.id_candidato
JOIN vestibular.stg_aprovados sa on dc.id_candidato = sa.id_candidato;

ALTER TABLE vestibular.fct_aprovacao ADD INDEX (sk_id_candidato);
ALTER TABLE vestibular.fct_aprovacao ADD INDEX (sk_id_evento);
ALTER TABLE vestibular.fct_aprovacao ADD INDEX (sk_id_local_candidato);
ALTER TABLE vestibular.fct_aprovacao ADD INDEX (sk_id_renda);
ALTER TABLE vestibular.fct_aprovacao ADD INDEX (sk_id_curso);

ALTER TABLE vestibular.fct_aprovacao ADD FOREIGN KEY (sk_id_candidato) REFERENCES vestibular.dim_candidato(sk_id_candidato);
ALTER TABLE vestibular.fct_aprovacao ADD FOREIGN KEY (sk_id_evento) REFERENCES vestibular.dim_vestibular(sk_id_evento);
ALTER TABLE vestibular.fct_aprovacao ADD FOREIGN KEY (sk_id_local_candidato) REFERENCES vestibular.dim_local_candidato(sk_id_local_candidato);
ALTER TABLE vestibular.fct_aprovacao ADD FOREIGN KEY (sk_id_renda) REFERENCES vestibular.dim_renda(sk_id_renda);
ALTER TABLE vestibular.fct_aprovacao ADD FOREIGN KEY (sk_id_curso) REFERENCES vestibular.dim_curso(sk_id_curso);

ALTER TABLE vestibular.fct_aprovacao ADD PRIMARY KEY (sk_id_candidato, sk_id_evento, sk_id_local_candidato, sk_id_renda, sk_id_curso);
