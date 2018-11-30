CREATE DEFINER=`root`@`localhost` TRIGGER `tr_UpdEstoquePedidos` AFTER UPDATE ON `tblpedido` FOR EACH ROW BEGIN
IF strstatus = 'Atendido'
THEN
UPDATE tblproduto SET intestoque = intestoque - 
(SELECT intquantidade from tbldetalhespedido
WHERE tblproduto.intprodutoid = intprodutoid AND
tbldetalhespedido.intprodutoid = tblproduto.intprodutoid
)WHERE intprodutoid in (SELECT intprodutoid from tbldetalhespedido WHERE tbldetalhespedido.intpedidoid = intpedidoid); 
END IF;
END
