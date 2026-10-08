-- SELECIONA O BANCO DE DADOS
USE lanchonete;

-- INSERE 10 LANCHES NA TABELA PRODUTO
INSERT INTO produto (
    preco_cliente,
    ingredientes,
    custo,
    tempo_preparo,
    nome,
    tamanho,
    ativo
)
VALUES
(
    27.90,
    'Pão, hambúrguer, queijo cheddar e Doritos',
    20.00,
    '00:15:00',
    'X-Doritos',
    'Grande',
    TRUE
),
(
    38.00,
    'Pão, hambúrguer, bacon, queijo, alface e tomate',
    25.00,
    '00:20:00',
    'X-Bacon',
    'Médio',
    TRUE
),
(
    25.00,
    'Pão, hambúrguer, queijo, presunto, alface e tomate',
    16.00,
    '00:15:00',
    'X-Salada',
    'Médio',
    TRUE
),
(
    22.00,
    'Pão, hambúrguer, queijo e presunto',
    14.00,
    '00:12:00',
    'X-Burguer',
    'Médio',
    TRUE
),
(
    32.00,
    'Pão, dois hambúrgueres, queijo cheddar e molho especial',
    21.00,
    '00:18:00',
    'X-Duplo',
    'Grande',
    TRUE
),
(
    35.00,
    'Pão, hambúrguer, ovo, bacon, queijo, alface e tomate',
    23.00,
    '00:20:00',
    'X-Tudo',
    'Grande',
    TRUE
),
(
    24.00,
    'Pão, filé de frango, queijo, alface e tomate',
    15.00,
    '00:15:00',
    'X-Frango',
    'Médio',
    TRUE
),
(
    29.00,
    'Pão, linguiça, queijo, cebola e molho especial',
    18.00,
    '00:17:00',
    'X-Calabresa',
    'Grande',
    TRUE
),
(
    20.00,
    'Pão, queijo, alface, tomate, milho e ervilha',
    12.00,
    '00:10:00',
    'X-Vegetariano',
    'Médio',
    TRUE
),
(
    18.00,
    'Pão, hambúrguer, queijo e molho especial',
    11.00,
    '00:10:00',
    'X-Simples',
    'Pequeno',
    TRUE
);