# Bussiness Inteligence - Projeto Prático C1

## Objetivos:

 - A descrição do problema que vocês estão estudando;
 - As fontes de dados que utilizarão para a resolução dos problemas;
 - Um modelo para a Staging Area / Data Lake com as fontes de dados selecionadas;
 - As possíveis operações de limpeza / tratamento de dados necessárias para a modelagem do problema;
 - O mapeamento de indicadores (KPIs), dimensões e fatos do problema;
 - O modelo de dados dimensional (estrela ou floco de neve) para o Data Warehouse (DW) do problema;
 - Transformações do PDI que esbocem o carregamento dos dados no DW;

 ## Descrição:

 Houve um crescimento de mulheres nos Jogos Olímpicos durante os anos?

## Fontes de dados:

Dataset com 120 anos de informações sobre os jogos olímpicos:
 - athlete_events.csv
 - Fonte: https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results

## Data Lake com os dados:

Data Lake com os dados brutos se encontra no arquivo sql:
  - Atletas dos Jogos Olímpicos.sql

## Operações de limpeza: 

- Não foi realizado nenhuma limpeza de dados no dataset, porém foi realizado preenchimento para dados ausentes (peso, altura e idade).

## Mapeamento de indicadores:

Fato: fkNome | fkSex |  | id_Games | desc_Games
Dimensão: Event | Sport | City | NOC (Países) | Nome | Sex | Age | Height | Weight | Team | Medal | Season

##  Modelo de dados dimensional: (Em produção)

          Table dim_NOC(
            id_NOC int not null auto_increment primary key,
            desc_NOC varchar(max) not null -->> isso é o NOC da table mytable
          )

          Table dim_City(
            id_City int not null auto_increment primary key,
            desc_City varchar(max) not null -->> isso é o City da table mytable
          )

          Table fato_Jogos(
            id int not null auto_increment primary key,
            id_NOC int not null auto_increment (fk),
            id_City int not null auto_increment (fk)
            Games varchar not null
          )

## Transformações do PDI: