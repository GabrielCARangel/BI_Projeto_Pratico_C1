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

 Inicialmente no projeto integrador a pergunta primária era: 
 - "Houve um crescimento de mulheres nos Jogos Olímpicos durante os anos?"

 Agora estamos analisamento mais profundamente todos os dados de atletas femininas nos jogos. Podemos assim responder questões como:
  - Qual é a distribuição de atletas femininas durante os anos e como ela se compara com atletas masculinos?
  - Qual é a distribuição de altura, peso e idade entre as atletas?
  - Qual esportes são mais práticos pelas atletas durante os anos?
  - Existe uma relação entre idade e quantas medalhas as atletas ganham?
  - Qual é a distribuição feminina entre países?
  - Qual é a relação entre os países e suas conquistas?

## Fontes de dados:

Dataset com 120 anos de informações sobre os jogos olímpicos:
  - athlete_events.csv.
    - [Fonte](https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results)

## Data Lake com os dados:

  - Data Lake com os dados brutos se encontra no arquivo sql:
    - Atletas dos Jogos Olímpicos.sql.

## Operações de limpeza: 

  - Não foi realizado nenhuma limpeza de dados no dataset, porém foi realizado preenchimento para dados ausentes (peso, altura e idade).
  - Esse preenchimento se encontra no arquivo sql:
    - Preenchimentos de Dados.sql.

## Mapeamento de indicadores, dimensões e fatos:

  - Dimensões:
    - Tabela Nomes:
      - id_Nomes
      - desc_Nomes
    - Tabela Sex:
      - idSex
      - descSex
    - Tabela Age:
      - id_ge
      - descAge
    - Tabela Height:
      - idHeight
      - descHeight
    - Tabela Weight:
      - idWeight
      - descWeight
    - Tabela Team:
      - idTeam
      - descTeam
    - Tabela NOC:
      - idNOC
      - descNOC
    - Tabela Season:
      - idSeason
      - descSeason
    - Tabela Year:
      - idYear
      - descYear
    - Tabela City
      - idCity
      - descCity
    - Tabela Sport:
      - idSport
      - descSport
    - Tabela Event:
      - idEvent:
      - descEvent
    - Tabela Medal:
      - idMedal
      - descMedal
  - Fatos:
    - Tabela Fato:
      - idGames
      - descGames

##  Modelo de dados dimensional:

  ![Modelo Estrela](./Modelo%20Dimensional/Atletas%20dos%20Jogos%20Ol%C3%ADmpicos.pdf "Modelo Estrela")

## Transformações do PDI: