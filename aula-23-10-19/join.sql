SELECT
    pessoa.nome,
    cidade.nome,
    tipo_plano.nome
FROM
    pessoa,
    cidade,
    tipo_plano,
    funcionario
WHERE
    funcionario.pessoa_id = pessoa.id
    AND cidade.codigo = pessoa.cidade_codigo
    AND pessoa.tipo_plano_id = tipo_plano.id
ORDER BY
    pessoa.nome ASC;

-- transformando o comando acima, substituindo o WHERE por JOIN
SELECT
    pessoa.nome AS pessoa,
    cidade.nome AS cidade,
    tipo_plano.nome AS plano
FROM
    funcionario
    JOIN pessoa ON funcionario.pessoa_id = pessoa.id
    JOIN cidade ON cidade.codigo = pessoa.cidade_codigo
    JOIN tipo_plano ON pessoa.tipo_plano_id = tipo_plano.id
ORDER BY
    pessoa.nome ASC;

-- mostrando o nome da pessoa e o nome da cidade onde ela mora, mesmo se ela não tiver cidade
SELECT
    pessoa.nome AS pessoa,
    cidade.nome AS cidade
FROM
    pessoa
    LEFT JOIN cidade ON pessoa.cidade_codigo = cidade.codigo
ORDER BY
    pessoa.nome;

-- nome, matrícula, salário base e cidade de moradia de tods os funcionários que ganham menos que 8000
SELECT
    pessoa.nome AS pessoa,
    funcionario.matricula,
    funcionario.salario_base,
    cidade.nome as cidade
FROM
    pessoa
    JOIN funcionario ON funcionario.pessoa_id = pessoa.id
    LEFT JOIN cidade ON cidade.codigo = pessoa.cidade_codigo
WHERE
    funcionario.salario_base > 8000
ORDER BY
    pessoa.nome;

-- inserindo Felipe Flamarini em funcionários
INSERT INTO
    funcionario
VALUES
    (9, 010101, 28000);