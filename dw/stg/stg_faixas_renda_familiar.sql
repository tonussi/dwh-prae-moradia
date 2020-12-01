DROP TABLE IF EXISTS vestibular.stg_faixas_renda_familiar;

CREATE TABLE vestibular.stg_faixas_renda_familiar (
    id_codigo INT,
    faixa TEXT
);

INSERT INTO vestibular.stg_faixas_renda_familiar (id_codigo, faixa) VALUE (1, 'Até 1 salário mínimo');
INSERT INTO vestibular.stg_faixas_renda_familiar (id_codigo, faixa) VALUE (2, 'Acima de 1 até 3 sal. mín.');
INSERT INTO vestibular.stg_faixas_renda_familiar (id_codigo, faixa) VALUE (3, 'Acima de 3 até 5 sal. mín.');
INSERT INTO vestibular.stg_faixas_renda_familiar (id_codigo, faixa) VALUE (4, 'Acima de 5 até 7 sal. mín.');
INSERT INTO vestibular.stg_faixas_renda_familiar (id_codigo, faixa) VALUE (5, 'Acima de 7 até 10 sal. mín.');
INSERT INTO vestibular.stg_faixas_renda_familiar (id_codigo, faixa) VALUE (6, 'Entre 10 e 20 sal. mín.');
INSERT INTO vestibular.stg_faixas_renda_familiar (id_codigo, faixa) VALUE (7, 'Entre 20 e 30 sal. mín.');
INSERT INTO vestibular.stg_faixas_renda_familiar (id_codigo, faixa) VALUE (8, 'Acima de 30 sal. mín.');

ALTER TABLE vestibular.stg_faixas_renda_familiar ADD sk_id_faixas_renda_familiar INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
