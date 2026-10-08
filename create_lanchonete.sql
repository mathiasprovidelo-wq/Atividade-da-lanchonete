-- ============================================================
-- BANCO DE DADOS: LANCHONETE
-- Este script cria um banco de dados para armazenar os produtos
-- comercializados por uma lanchonete.
-- ============================================================


-- Apaga o banco de dados chamado "lanchonete", caso ele já exista.
-- ATENÇÃO: esse comando também apaga todas as tabelas e todos os
-- dados armazenados anteriormente.
DROP DATABASE IF EXISTS lanchonete;


-- Cria um novo banco de dados chamado "lanchonete".
CREATE DATABASE lanchonete

-- Define o conjunto de caracteres utilizado pelo banco.
-- O utf8mb4 permite armazenar acentos, caracteres especiais
-- e também emojis.
CHARACTER SET utf8mb4

-- Define as regras utilizadas para comparar e ordenar textos.
-- O utf8mb4_unicode_ci não diferencia letras maiúsculas de
-- minúsculas durante as comparações.
COLLATE utf8mb4_unicode_ci;


-- Seleciona o banco de dados "lanchonete".
-- Os próximos comandos serão executados dentro desse banco.
USE lanchonete;


-- Cria uma tabela chamada "produto".
-- Essa tabela será utilizada para armazenar os lanches
-- comercializados pela lanchonete.
CREATE TABLE produto (

    -- Código identificador do lanche.
    -- INT: armazena um número inteiro.
    -- NOT NULL: obriga o preenchimento do campo.
    -- AUTO_INCREMENT: gera automaticamente um novo número
    -- para cada lanche cadastrado.
    id_lanche INT NOT NULL AUTO_INCREMENT,


    -- Preço pelo qual o lanche será vendido ao cliente.
    -- DECIMAL(10,2): permite armazenar até 10 dígitos,
    -- sendo 2 deles depois da vírgula.
    -- Exemplo: 25.90
    preco_cliente DECIMAL(10,2),


    -- Descrição dos ingredientes utilizados no lanche.
    -- VARCHAR(200): permite armazenar um texto com até
    -- 200 caracteres.
    ingredientes VARCHAR(200),


    -- Valor gasto pela lanchonete para produzir o lanche.
    -- DECIMAL(10,2): permite armazenar valores monetários
    -- com duas casas decimais.
    -- Exemplo: 12.50
    custo DECIMAL(10,2),


    -- Tempo necessário para preparar o lanche.
    -- TIME: armazena um valor no formato hora, minuto e segundo.
    -- Exemplo: 00:15:00 representa 15 minutos.
    tempo_preparo TIME,


    -- Nome do lanche ou produto.
    -- VARCHAR(200): permite armazenar até 200 caracteres.
    -- Exemplo: X-Bacon.
    nome VARCHAR(200),


    -- Tamanho do lanche.
    -- VARCHAR(10): permite armazenar até 10 caracteres.
    -- Exemplos: Pequeno, Médio ou Grande.
    tamanho VARCHAR(10),


    -- Indica se o produto está disponível para venda.
    -- BOOLEAN armazena um valor verdadeiro ou falso.
    -- No MySQL:
    -- 1 representa verdadeiro, ou seja, produto ativo.
    -- 0 representa falso, ou seja, produto inativo.
    ativo BOOLEAN,
    
	imagem_url VARCHAR(2048),


    -- Define o campo "id_lanche" como chave primária.
    -- A chave primária identifica cada produto de forma única.
    -- Portanto, não podem existir dois produtos com o mesmo ID.
    PRIMARY KEY (id_lanche)
);