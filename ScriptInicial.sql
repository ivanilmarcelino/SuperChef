--Definido atendentes c�digo auto-incremento e primary key
--Executado
Create Table atendentes(
   codigo COUNTER  primary key,
   nome Varchar(20),
   comissao Decimal(10,2)
   );
---------------------------------------------------------
--Definido atendentes c�digo auto-incremento e primary key
--Executado
Create Table bancos(
   codigo COUNTER primary key,
   nome Varchar(20),
   banco Varchar(10),
   agencia Varchar(10),
   conta_c Varchar(10),
   limite Decimal(12,2),
   titular Varchar(20),
   gerente Varchar(20),
   telefone Varchar(10)
   );
---------------------------------------------------------
--Definido atendentes c�digo auto-incremento e primary key
--Executado
Create Table clientes(
   codigo Counter primary key,
   nome Varchar(40),
   fixo Varchar(10),
   celular Varchar(10),
   endereco Varchar(40),
   numero Varchar(6),
   complem Varchar(20),
   bairro Varchar(20),
   cidade Varchar(20),
   uf Varchar(2),
   cep Varchar(8),
   email Varchar(50),
   aniv_dia INTEGER,
   aniv_mes INTEGER
   );
---------------------------------------------------------
--incluido campo forma de pagamento para substituir a tabela config
Create Table empresa(
   nome Varchar(40),
   fixo_1 Varchar(10),
   fixo_2 Varchar(10),
   endereco Varchar(40),
   numero Varchar(6),
   complem Varchar(20),
   bairro Varchar(20),
   cidade Varchar(20),
   uf Varchar(2),
   cep Varchar(8),
   email Varchar(50),
   site Varchar(50),
   forma_pagamento int,
   );

Insert into empresa (nome,fixo_1,endereco,numero,bairro,cidade,site,forma_pagamento) values ('Empresa Demonstra��o','99999999','Rua vazia','','Bairro','Cidade','wwww.empresademo.com.br',1);
---------------------------------------------------------
--config eliminada, 
--Create Table config(
--   tipo INTEGER
--   );

---------------------------------------------------------
--tabela 1.categoria de produtos
--tabela 2.subcategoria de produtos
--tabela 3.Unidade de Medida
--tabela 4.Grupo de Fornecedores
--tabela 5.Cadastro de Mesas

Create Table grupo_apoio(
   codigo COUNTER primary key,
   tabela integer not null,
   categoria integer,
   nome Varchar(20)
   );


Insert into grupo_apoio (tabela,nome) values (1,'BEBIDA');
Insert into grupo_apoio (tabela,nome) values (1,'MASSAS');

Insert into grupo_apoio (tabela,categoria,nome) values (2,1,'CERVEJAS');
Insert into grupo_apoio (tabela,categoria,nome) values (2,1,'REFRIGERANTES');
Insert into grupo_apoio (tabela,categoria,nome) values (2,1,'SUCOS');
Insert into grupo_apoio (tabela,categoria,nome) values (2,2,'PIZZAS');
Insert into grupo_apoio (tabela,categoria,nome) values (2,2,'LANCHES');
Insert into grupo_apoio (tabela,categoria,nome) values (2,2,'PORCOES');

Insert into grupo_apoio (tabela,nome) values (3,'KILO');
Insert into grupo_apoio (tabela,nome) values (3,'LITRO');
Insert into grupo_apoio (tabela,nome) values (3,'PE�A');
Insert into grupo_apoio (tabela,nome) values (3,'GRAMAS');

Insert into grupo_apoio (tabela,nome) values (4,'SUPERMERCADO');
Insert into grupo_apoio (tabela,nome) values (4,'HIPERMERCADO');
Insert into grupo_apoio (tabela,nome) values (4,'ATACADISTA');

Insert into grupo_apoio (tabela,nome) values (5,'MESA 01');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 02');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 03');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 04');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 05');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 06');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 07');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 08');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 09');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 10');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 11');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 12');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 13');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 14');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 15');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 16');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 17');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 18');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 19');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 20');
Insert into grupo_apoio (tabela,nome) values (5,'MESA 21');


--Create Table categoria_produtos(
--   codigo INTEGER,
--   nome Varchar(20)
--   );

--Create Table subcategoria_produtos(
--   codigo INTEGER,
--   nome Varchar(20)
--   );

--Create Table unidade_medida(
--   codigo INTEGER,
--   nome Varchar(10)
--   );

--Create Table grupo_fornecedores(
--   codigo INTEGER,
--   nome Varchar(20)
--   );
 
--Create Table mesas(
--   codigo COUNTER primary key,
--   nome Varchar(20),
--   hora Varchar(10),
--   id Varchar(18)
--   );
---------------------------------------------------------
--Definido atendentes c�digo auto-incremento e primary key
--Executado
Create Table fornecedores(
   codigo COUNTER primary key,
   nome Varchar(40),
   fixo Varchar(10),
   celular Varchar(10),
   endereco Varchar(40),
   numero Varchar(6),
   complem Varchar(20),
   bairro Varchar(20),
   cidade Varchar(20),
   uf Varchar(2),
   cep Varchar(8),
   email Varchar(50),
   grupo INTEGER,
   CONSTRAINT FKfornecedores_grupo_apoio FOREIGN KEY (grupo) REFERENCES grupo_apoio
   );
---------------------------------------------------------
--Definido atendentes c�digo auto-incremento e primary key
--Executado
Create Table motoboys(
   codigo COUNTER Primary key,
   nome Varchar(20),
   comissao Decimal(10,2),
   diaria Decimal(10,2),
   fixo Varchar(10),
   celular Varchar(10),
   endereco Varchar(40),
   numero Varchar(10),
   complem Varchar(20),
   bairro Varchar(20),
   cidade Varchar(20),
   uf Varchar(2),
   cep Varchar(8),
   email Varchar(40),
   ativo BIT
   );
 ---------------------------------------------------------
--Definido operadores c�digo auto-incremento e primary key
--Eliminado a tabela acesso, campo incluido acesso substitui a tabela.
--Executado
Create Table operadores(
   codigo COUNTER Primary key,
   nome Varchar(10),
   senha Varchar(10),
   acesso varchar(43) 
   );   
 
 CREATE UNIQUE INDEX IDXOperadoresNome ON operadores (nome) ;
Insert into operadores (nome,senha,acesso) values ('SChef','9999','1111111111111111111111111111111111111111111');
---------------------------------------------------------
--Eliminado a tabela acesso, campo incluido em operadores acesso substitui a tabela.
--Create Table acesso(
--   operador INTEGER,
--   acesso_001 BIT,
--   acesso_002 BIT,
--   acesso_003 BIT,
--   acesso_004 BIT,
--   acesso_005 BIT,
--   acesso_006 BIT,
--   acesso_007 BIT,
--   acesso_008 BIT,
--   acesso_009 BIT,
--   acesso_010 BIT,
--   acesso_011 BIT,
--   acesso_012 BIT,
--   acesso_013 BIT,
--   acesso_014 BIT,
--   acesso_015 BIT,
--   acesso_016 BIT,
--   acesso_017 BIT,
--   acesso_018 BIT,
--   acesso_019 BIT,
--   acesso_020 BIT,
--   acesso_021 BIT,
--   acesso_022 BIT,
--   acesso_023 BIT,
--   acesso_024 BIT,
--   acesso_025 BIT,
--   acesso_026 BIT,
--   acesso_027 BIT,
--   acesso_028 BIT,
--   acesso_029 BIT,
--   acesso_030 BIT,
--   acesso_031 BIT,
--   acesso_032 BIT,
--   acesso_033 BIT,
--   acesso_034 BIT,
--   acesso_035 BIT,
--   acesso_036 BIT,
--   acesso_037 BIT,
--   acesso_038 BIT,
--   acesso_039 BIT,
--   acesso_040 BIT,
--   acesso_041 BIT,
--   acesso_042 BIT,
--   acesso_043 BIT,
--   acesso_044 BIT,
--   acesso_045 BIT,
--   acesso_046 BIT,
--   acesso_047 BIT,
--   acesso_048 BIT,
--   acesso_049 BIT,
--   acesso_050 BIT,
--   acesso_051 BIT,
--   acesso_052 BIT,
--   acesso_053 BIT,
--   acesso_054 BIT,
--   acesso_055 BIT,
--   acesso_056 BIT,
--   acesso_057 BIT,
--   acesso_058 BIT,
--   acesso_059 BIT,
--   acesso_060 BIT,
--   acesso_061 BIT,
--   acesso_062 BIT,
--   acesso_063 BIT,
--   acesso_064 BIT,
--   acesso_065 BIT,
--   acesso_066 BIT,
--   acesso_067 BIT,
--   acesso_068 BIT,
--   acesso_069 BIT,
--   acesso_070 BIT,
--   acesso_071 BIT,
--   acesso_072 BIT,
--   acesso_073 BIT,
--   acesso_074 BIT,
--   acesso_075 BIT,
--   acesso_076 BIT,
--   acesso_077 BIT,
--   acesso_078 BIT,
--   acesso_079 BIT,
--   acesso_080 BIT,
--   acesso_081 BIT,
--   acesso_082 BIT,
--   acesso_083 BIT,
--   acesso_084 BIT,
--   acesso_085 BIT,
--   acesso_086 BIT,
--   acesso_087 BIT,
--   acesso_088 BIT,
--   acesso_089 BIT,
--   acesso_090 BIT,
--   acesso_091 BIT,
--   acesso_092 BIT,
--   acesso_093 BIT,
--   acesso_094 BIT,
--   acesso_095 BIT,
--   acesso_096 BIT,
--   acesso_097 BIT,
--   acesso_098 BIT,
--   acesso_099 BIT,
--   acesso_100 BIT
--   );
---------------------------------------------------------
--Definido forma_paga_rec c�digo auto-incremento e primary key
--tipo P.Pagamentos
--tipo R.Recebimentos
--Executado

Create Table forma_pag_rec(
   codigo COUNTER primary key,
   tipo char(1),
   nome Varchar(20),
   banco INTEGER,
   dias_paga INTEGER,
   CONSTRAINT FKforma_pag_rec_bancos FOREIGN KEY (banco) REFERENCES bancos
   );
--eliminadas
--Tabela eliminada dando origem a forma_pag_rec
--Create Table forma_pagamento(
--   codigo INTEGER,
--   nome Varchar(20),
--   banco INTEGER,
--   dias_paga INTEGER
--   );
--Create Table formas_recebimento(
--   codigo INTEGER,
--   nome Varchar(20),
--   banco INTEGER,
--   dias_receb INTEGER
--   );
---------------------------------------------------------
--Definido impostos c�digo auto-incremento e primary key
--Executado
Create Table impostos(
   codigo COUNTER primary key,
   nome Varchar(20),
   aliquota Decimal(10,2)
   );
--Definido materia_prima c�digo auto-incremento e primary key
--Executado
Create Table materia_prima(
   codigo COUNTER primary key,
   nome Varchar(20),
   medida decimal(10,6),
   unidade INTEGER,
   preco Decimal(10,2),
   qtd_estoque integer,
   CONSTRAINT FKmateriaprima_grupo_apoio FOREIGN KEY (unidade) REFERENCES grupo_apoio
   );   

Insert into materia_prima (nome,medida,unidade) values ('Mussarela', 1,1);
Insert into materia_prima (nome,medida,unidade) values ('Presunto', 1,1);
Insert into materia_prima (nome,medida,unidade) values ('Calabresa', 1,1);
Insert into materia_prima (nome,medida,unidade) values ('Tomate', 1,1);
Insert into materia_prima (nome,medida,unidade) values ('Cebola', 1,1);
Insert into materia_prima (nome,medida,unidade) values ('Azeitona verde', 1,1);
Insert into materia_prima (nome,medida,unidade) values ('Azeitona preta', 1,1);
Insert into materia_prima (nome,medida,unidade) values ('Atum', 1,1);
Insert into materia_prima (nome,medida,unidade) values ('Peito de frango', 1,1);
Insert into materia_prima (nome,medida,unidade) values ('Bacon', 1,1);
Insert into materia_prima (nome,medida,unidade) values ('Molho Hassin', 1,1);
Insert into materia_prima (nome,medida,unidade) values ('Milho', 1,1);
Insert into materia_prima (nome,medida,unidade) values ('Ervilha', 1,1);
Insert into materia_prima (nome,medida,unidade) values ('Parmes�o', 1,1);
Insert into materia_prima (nome,medida,unidade) values ('Requeij�o cremoso', 1,1);


--Inclus�o da coluna codigo tipo autoincremento e primary key
--a ideia inicial era deixar pedacos como chave, mas brotinho e pequena tem 2 pedacos.
Create Table tamanhos(
   codigo COUNTER primary key,
   nome Varchar(15),
   pedacos INTEGER,
   sabores integer
   );

Insert into tamanhos (nome,pedacos,sabores) values ('Broto 18cm'   , 2,2);
Insert into tamanhos (nome,pedacos,sabores) values ('Pequena 25cm' , 4,2);
Insert into tamanhos (nome,pedacos,sabores) values ('M�dia 30cm'   , 6,3);
Insert into tamanhos (nome,pedacos,sabores) values ('Grande 35cm'  , 8,3);
Insert into tamanhos (nome,pedacos,sabores) values ('Fam�lia 40cm' ,10,4);
 ---------------------------------------------------------     
---------------------------------------------------------
--Definido produtos c�digo de varchar(10) para auto-incremento e primary key
--Executado
Create Table produtos(
   codigo COUNTER primary key,
   cbarra Varchar(15),
   nome_longo Varchar(40),
   nome_cupom Varchar(15),
   categoria INTEGER,
   scategoria INTEGER,
   imposto INTEGER,
   baixa BIT,
   qtd_estoque INTEGER,
   qtd_min INTEGER,
   qtd_max INTEGER,
   vlr_custo Decimal(12,2),
   vlr_venda Decimal(12,2),
   promocao BIT,
   pizza BIT,
   medida decimal(10,2),
   unidade INTEGER,   
   pedacos integer,
   CONSTRAINT FKprodutos_grupo_apoio1 FOREIGN KEY (categoria)  REFERENCES grupo_apoio,
   CONSTRAINT FKprodutos_grupo_apoio2 FOREIGN KEY (scategoria) REFERENCES grupo_apoio,
   CONSTRAINT FKprodutos_grupo_apoio3 FOREIGN KEY (unidade)    REFERENCES grupo_apoio,
   CONSTRAINT FKprodutos_impostos     FOREIGN KEY (imposto)    REFERENCES impostos,
   CONSTRAINT FKprodutos_tamanhos     FOREIGN KEY (pedacos)    REFERENCES tamanhos
   );
---------------------------------------------------------
--Ajuste de produto de varchar para integer
--ajuste de mprima para materia_prima
Create Table produto_composto(
   produto integer,
   materia_prima INTEGER,
   quantidade Decimal(12,6),
   Primary key (produto,materia_prima),
   CONSTRAINT FKproduto_composto_produtos FOREIGN KEY (produto) REFERENCES produtos,
   CONSTRAINT FKproduto_composto_materia_prima FOREIGN KEY (materia_prima) REFERENCES materia_prima
   );
---------------------------------------------------------
--Criado tabela compras da jun��o de tCompra1+tCompra2
--adicionado campo tipo onde:
--tipo P.Produto
--tipo M.Materia Prima
Create Table compras(
   codigo COUNTER primary key,
   fornecedor INTEGER,
   forma_pag INTEGER,
   num_parc INTEGER,
   data_venc DateTime,
   dias_parc INTEGER,
   tipo char(1),
   num_doc Varchar(15),
   valor_doc decimal(12,2),
   CONSTRAINT FKcompras_fornecedores FOREIGN KEY (fornecedor) REFERENCES fornecedores  , 
   CONSTRAINT FKcompras_forma_pag_rec FOREIGN KEY (forma_pag) REFERENCES forma_pag_rec
   );
--desdobramento tabela para evitar redundancia
Create Table compras_detalhe(
   codigo integer,
   ordem integer,
   produto integer,
   qtd INTEGER,
   vlr_unit Decimal(12,2),
   primary key (codigo,ordem),
   CONSTRAINT fkcompras_detalhe_compras FOREIGN KEY (codigo) REFERENCES compras
   );

--eliminadas   
--Create Table tcompra1(
--   fornecedor INTEGER,
--   forma_pag INTEGER,
--   num_parc INTEGER,
--   data_venc DateTime,
--   dias_parc INTEGER,
--   produto Varchar(10),
--   qtd INTEGER,
--   vlr_unit Decimal(12,2),
--   num_doc Varchar(15)
--   );

--Create Table tcompra2(
--   fornecedor INTEGER,
--   forma_pag INTEGER,
--   num_parc INTEGER,
--   data_venc DateTime,
--   dias_parc INTEGER,
--   mat_prima INTEGER,
--   qtd Decimal(12,3),
--   vlr_unit Decimal(12,2),
--   num_doc Varchar(15)
--   );   
---------------------------------------------------------
--Criado tabela contas da jun��o de contas_pagar+contas_receber
--adicionado campo tipo onde:
--tipo P.contas a pagar
--tipo R.contas a receber

Create Table contas(
   codigo COUNTER primary key,
   cod_origem integer,
   tipo char(1),
   num_doc varchar(15),
   vencimento DateTime,
   pagamento datetime,
   valor Decimal(12,2),
   multa decimal(12,2),
   juros decimal(12,2),
   desconto decimal(12,2),
   forma INTEGER,
   fornecliente INTEGER,
   obs Varchar(30),
   CONSTRAINT FKcontas_forma_pag_rec FOREIGN KEY (forma) REFERENCES forma_pag_rec
);

--eliminadas  
--Create Table contas_pagar(
--   id Varchar(10),
--   data DateTime,
--   valor Decimal(12,2),
--   forma INTEGER,
--   fornec INTEGER,
--   numero Varchar(15),
--   obs Varchar(30),
--   baixa BIT
--   );

--Create Table contas_receber(
--   id Varchar(10),
--   data DateTime,
--   valor Decimal(12,2),
--   forma INTEGER,
--   cliente INTEGER,
--   numero Varchar(15),
--   obs Varchar(30),
--   baixa BIT
--   );

--Rever a tabela Conta, os campos serao substituidos por COUNTER (autoincremento)
--Create Table conta(
--   c_clientes INTEGER,
--   c_fornec INTEGER,
--   c_gfornec INTEGER,
--   c_mprima INTEGER,
--   c_catprod INTEGER,
--   c_scatprod INTEGER,
--   c_mesas INTEGER,
--   c_frecebe INTEGER,
--   c_fpaga INTEGER,
--   c_umedida INTEGER,
--   c_bancos INTEGER,
--   c_impostos INTEGER,
--   c_atende INTEGER,
--   c_motent INTEGER,
--   c_operador INTEGER
--   );

---------------------------------------------------------   
--Altera��o da coluna ID para codigo, tipo autoincremento e primary key
--data alterado para dtmovimento, data=reservado.
Create Table caixa(
   codigo COUNTER primary key,
   usuario integer,
   dtmovimento DateTime,
   editable bit,
   forma integer,
   historico Varchar(30),
   entrada Decimal(12,2),
   saida Decimal(12,2)
   );
---------------------------------------------------------   
--Altera��o da coluna ID para codigo, tipo autoincremento e primary key
--data alterado para dtmovimento, data=reservado.
Create Table movimento_bancario(
   codigo COUNTER primary key,
   banco INTEGER,
   dtMovimento DateTime,
   historico Varchar(30),
   entrada Decimal(12,2),
   saida Decimal(12,2),
   CONSTRAINT FKmovimento_bancario_bancos FOREIGN KEY (banco) REFERENCES bancos
   );
 ---------------------------------------------------------  
--Altera��o da coluna ID para codigo, tipo autoincremento e primary key
Create Table bordas(
   codigo COUNTER primary key,
   nome Varchar(15),
   preco Decimal(10,2)
   );
Insert into bordas (nome,preco) values ("Nenhuma",0);

 ---------------------------------------------------------  
--Altera��o de tabela ultimas_compras
--renomeada para Vendas
--inclus�o de codigo para chave primaria
--id_cliente renomeada para cliente
--inclusao taxaentrega/desconto
--campo hora eliminado
--campo data renomeado para datahora tipo datetime
--onde = //1=delivery 2=mesa 3=balc�o
Create Table vendas(
   codigo COUNTER primary key,
   cliente INTEGER,
   datahora DateTime,
   onde INTEGER,
   valor Decimal(12,2),
   taxaentrega decimal(12,2),
   desconto decimal(12,2),
   motoboy integer,
   CONSTRAINT FKvendas_motoboys FOREIGN KEY (motoboy) REFERENCES motoboys,
   CONSTRAINT FKvendas_clientes FOREIGN KEY (cliente) REFERENCES clientes
   );
 ---------------------------------------------------------  
--Altera��o de tabela detalhamento_compras
--inclusao venda=codigo da venda
--inclusao ordem
--eliminado id_cliente/data/hora/subtotal
--alterado id_prod para produto e varchar(10) para integer
--alterado de qtd para qtde
Create Table vendas_detalhe(
   venda INTEGER,
   ordem int,
   produto integer,
   qtde INTEGER,
   valor Decimal(10,2),
   primary key (venda,ordem),
   CONSTRAINT FKvendas_vendas_detalhe FOREIGN KEY (venda) REFERENCES vendas,
   CONSTRAINT FKvendas_produtos FOREIGN KEY (produto) REFERENCES produtos
   );
 ---------------------------------------------------------  
--Inclusao tabela vendas_detalhe_pizza=
Create Table vendas_detalhe_pizza(
   venda INTEGER,
   ordem int,
   produto integer,
   fator int,
   valor Decimal(10,2),
   primary key (venda,ordem,produto),
   CONSTRAINT FKvendas_vendas_detalhe_pizza FOREIGN KEY (venda,ordem) REFERENCES vendas_detalhe,
   CONSTRAINT FKvendas_detalhe_pizza_produtos FOREIGN KEY (produto) REFERENCES produtos
   );
--Inclusao tabela vendas_detalhe_borda
Create Table vendas_detalhe_borda(
   venda INTEGER,
   ordem int,
   borda integer,
   valor Decimal(10,2),
   primary key (venda,ordem,borda),
   CONSTRAINT FKvendas_detalhe_borda_vendas_detalhe FOREIGN KEY (venda,ordem) REFERENCES vendas_detalhe,
   CONSTRAINT FKvendas_detalhe_borda_bordas FOREIGN KEY (borda) REFERENCES bordas
   );
 ---------------------------------------------------------  
Create Table comissao_mesa(
   id INTEGER,
   data DateTime,
   hora Varchar(8),
   valor Decimal(12,2)
   );

Create Table comissao(
   id INTEGER,
   data DateTime,
   hora Varchar(8),
   valor Decimal(12,2)
   );






Create Table entrega(
   cliente Varchar(30),
   endereco Varchar(30),
   hora Varchar(8),
   origem Varchar(10),
   telefone Varchar(10),
   cod_moto INTEGER,
   motoboy Varchar(15),
   situacao Varchar(15),
   vlr_taxa Decimal(10,2)
   );



Create Table montagem(
   id Varchar(10),
   nome Varchar(30)
   );






Create Table temp_cpz(
   preco Decimal(10,2)
   );

Create Table temp_produtos(
   id_mesa Varchar(18),
   produto Varchar(10),
   nome Varchar(30),
   qtd INTEGER,
   unitario Decimal(10,2),
   subtotal Decimal(12,2)
   );

Create Table temp_pizzas(
   id_mesa Varchar(18),
   id_produto Varchar(10),
   sequencia Varchar(10),
   nome Varchar(20),
   tamanho Varchar(10),
   preco Decimal(10,2)
   );

Create Table tmp_tela(
   seq INTEGER,
   item Varchar(40),
   qtd INTEGER,
   unitario Decimal(10,2),
   subtotal Decimal(12,2)
   );

Create Table temp_vendas(
   seq INTEGER,
   id Varchar(15),
   tipo INTEGER,
   produto Varchar(10),
   preco Decimal(10,2),
   sequencia Varchar(10),
   nome Varchar(30),
   qtd INTEGER,
   unitario Decimal(10,2),
   subtotal Decimal(12,2)
   );



