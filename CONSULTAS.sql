#consulta 01

SELECT a.ID_FILIAL, b.NM_FILIAL, a.ID_PRODUTO, c.DS_PRODUTO,a.QT_ESTOQUE_DISPONIVEL FROM tb_estoque a 
INNER JOIN tb_filial b ON (a.ID_FILIAL =b.ID_FILIAL)
INNER JOIN tb_produto c ON (a.ID_PRODUTO =c.ID_PRODUTO)
ORDER BY a.ID_FILIAL ASC

#consulta 02

SELECT a.ID_NF,a.DT_EMISSAO, 
b.id_pedido, c.ID_TIPO_PEDIDO, 
d.DS_TIPO_PEDIDO,a.ID_TIPO_OPERACAO, 
e.DS_TIPO_OPERACAO,
c.ID_FILIAL,
f.DS_TIPO_FILIAL,
g.NM_FILIAL

## Ficou faltando o resto ####
FROM tb_nf  a INNER JOIN tb_pedido_nota b ON (a.ID_NF = b.id_nf)
INNER JOIN tb_pedido c ON (b.id_pedido = c.ID_PEDIDO)
INNER JOIN tb_tipo_pedido d ON (c.ID_TIPO_PEDIDO = d.ID_TIPO_PEDIDO)
INNER JOIN tb_tipo_operacao e ON (a.ID_TIPO_OPERACAO = e.ID_TIPO_OPERACAO)
INNER JOIN tb_tipo_filial f ON (a.ID_FILIAL = f.ID_TIPO_FILIAL)
INNER JOIN tb_filial g ON (f.ID_TIPO_FILIAL = g.ID_TIPO_FILIAL)



