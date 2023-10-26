SELECT * FROM Cidade;

SELECT nome, codigo FROM Cidade;

SELECT * FROM especialidade_medica;

SELECT codigo, nome FROM especialidade_medica
ORDER BY codigo ASC;

SELECT id, sexo, nome FROM pessoa ORDER BY nome ASC;

SELECT id, sexo, nome FROM pessoa ORDER BY
	case sexo
	when 'F' then 1
	when 'M' then 2
	else 3
	end,
nome ASC;

SELECT id, sexo, nome FROM pessoa ORDER BY
	case sexo
	when 'M' then 1
	when 'F' then 2
	else 3
	end,
nome ASC;

SELECT pessoa.id, pessoa.nome, cidade.codigo, cidade.nome FROM pessoa
JOIN cidade ON pessoa.cidade_codigo=cidade.codigo
ORDER BY pessoa.nome ASC;

SELECT pessoa.id, pessoa.nome, funcionario.matricula, funcionario.salario_base FROM funcionario
JOIN pessoa ON funcionario.pessoa_id=pessoa.id
ORDER BY salario_base ASC;

SELECT pessoa.id, pessoa.nome, medico.crm FROM medico
JOIN pessoa ON medico.pessoa_id=pessoa.id
ORDER BY pessoa.id DESC;

SELECT tipo_plano.nome, tipo_plano.valor, pessoa.nome FROM tipo_plano
JOIN pessoa ON tipo_plano.id=pessoa.tipo_plano_id
ORDER BY tipo_plano.nome ASC, pessoa.nome ASC;

SELECT pessoa.nome, cidade.nome, tipo_plano.nome FROM funcionario
JOIN pessoa ON funcionario.pessoa_id=pessoa.id
JOIN cidade ON cidade.codigo=pessoa.cidade_codigo
JOIN tipo_plano ON pessoa.tipo_plano_id=tipo_plano.id
ORDER BY pessoa.nome ASC;

SELECT cartorio.id, cartorio.nome_cartorio, cidade.nome as cidade FROM cartorio
JOIN CIDADE ON cartorio.cidade_id=cidade.codigo;

SELECT cartorio.id, cartorio.nome_cartorio, cidade.nome as cidade FROM cartorio
JOIN CIDADE ON cartorio.cidade_id=cidade.codigo AND cidade.nome='Campo Grande';
