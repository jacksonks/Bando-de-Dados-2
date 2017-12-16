DELIMITER $
CREATE TRIGGER Tgr_itenscompra_insert AFTER INSERT ON itenscompra
FOR EACH ROW BEGIN
UPDATE livros SET qtd = qtd - NEW.qtd WHERE codigo = NEW.codigo; 
END $
DELIMITER ;
-----------------
CREATE TRIGGER Tgr_itenscompra_delete AFTER DELETE ON itenscompra
FOR EACH ROW BEGIN
UPDATE livros SET qtd = qtd + OLD.qtd WHERE codigo = OLD.codigo; 
END

DELETE FROM itenscompra WHERE notaFiscal = 3;