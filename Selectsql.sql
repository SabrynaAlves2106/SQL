
SELECT * FROM POC.FUNCIONARIO F 
INNER JOIN (
SELECT TF1.ID_FUNCIONARIO,TF1.NM_TELEFONE AS TELEFONE1, 
TF2.NM_TELEFONE AS TELEFONE2, TF3.NM_TELEFONE AS TELEFONE3
, ROW_NUMBER() over (partition by tf1.ID_FUNCIONARIO order by tf1.ID_FUNCIONARIO)as Linha
FROM (
SELECT *
FROM POC.TELEFONE_FUNCIONARIO) AS TF1
LEFT JOIN(
SELECT *
FROM POC.TELEFONE_FUNCIONARIO)  AS TF2
ON TF1.ID_FUNCIONARIO = TF2.ID_FUNCIONARIO 
AND TF1.NM_TELEFONE != ISNULL(TF2.NM_TELEFONE,TF1.NM_TELEFONE+'x')
LEFT JOIN(
SELECT *
FROM POC.TELEFONE_FUNCIONARIO)  AS TF3
ON TF1.ID_FUNCIONARIO = TF3.ID_FUNCIONARIO
AND TF1.NM_TELEFONE != ISNULL(TF3.NM_TELEFONE,TF1.NM_TELEFONE+'y')
and ISNULL(TF2.NM_TELEFONE,TF1.NM_TELEFONE+'x') != ISNULL(TF3.NM_TELEFONE,TF1.NM_TELEFONE+'y')) TF ON
TF.ID_FUNCIONARIO = F.ID
where linha = 1