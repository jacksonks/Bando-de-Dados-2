CREATE VIEW teste AS
SELECT i.notaFiscal, i.codigo,l.nome
FROM itenscompra i INNER join livros l
on i.codigo = l.codigo ;

SELECT * FROM teste ;