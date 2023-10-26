-- primeiro exemplo de swich case
SELECT
    P.id,
    P.nome as nome_pessoa,
    P.sexo,
    CASE
        WHEN P.sexo ILIKE 'M' THEN 'Masculino'
        ELSE 'Feminino'
    END AS sexo
FROM
    Pessoa as P
LIMIT
    5;

-- idade
SELECT
    Pessoa.nome,
    CASE
        WHEN DATE_PART ('years', AGE (Pessoa.data_nasc)) = 1 THEN CONCAT (
            '0',
            DATE_PART ('years', AGE (Pessoa.data_nasc)),
            ' year'
        )
        WHEN DATE_PART ('years', AGE (Pessoa.data_nasc)) < 10 THEN CONCAT (
            '0',
            DATE_PART ('years', AGE (Pessoa.data_nasc)),
            ' years'
        )
        ELSE CONCAT (
            DATE_PART ('years', AGE (Pessoa.data_nasc)),
            ' years'
        )
    END AS idade
FROM
    Pessoa;

-- mesmo script anterior, usando variáveis
SELECT
    nome,
    CASE
        WHEN age_in_years = 1 THEN CONCAT('0', age_in_years, ' year')
        WHEN age_in_years < 10 THEN CONCAT('0', age_in_years, ' years')
        ELSE CONCAT(age_in_years, ' years')
    END AS idade
FROM 
    (
    SELECT
        Pessoa.nome as nome,
        EXTRACT(YEAR FROM AGE(Pessoa.data_nasc)) AS age_in_years
    FROM
        Pessoa
) AS Subquery;