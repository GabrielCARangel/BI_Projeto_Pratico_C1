/* Fazendo a copia da table com os dados originais */
use pi_3;
CREATE TABLE dados SELECT * FROM pi_3.mytable;

SELECT * FROM pi_3.dados;

/* Calculando a media dos valores que tem 'NA' */

set @meanAge = (select CEILING(avg(tb.Age)) from pi_3.dados tb where tb.Age <> 'NA');
set @meanHeight = (select CEILING(avg(tb.Height)) from pi_3.dados tb where tb.Age <> 'NA');
set @meanWeight = (select CEILING(avg(tb.Weight)) from pi_3.dados tb where tb.Age <> 'NA');

select @meanAge, @meanHeight, @meanWeight;

/* Comando para desabilitar SAFE_UPDATE */
SET SQL_SAFE_UPDATES=0;

/* Atualizando os valores com a media */
UPDATE dados set Age = @meanAge where Age = 'NA';
UPDATE dados set Height = @meanHeight where Height = 'NA';
UPDATE dados set Weight = @meanWeight where Weight = 'NA';

