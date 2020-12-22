-- EJEMPLOS
SELECT j1.id, SUM(j1."TOTAL_PERS") From "Join_SIEDU_Dist_COMUNAS_TEST" j1 Group By j1.id Limit 1 --Inner Join "Join_SIEDU_Dist_COMUNAS_TEST" j2 On j1.id = j2.id Group By j1.id Limit 1

CREATE TABLE "TEST2" AS (
SELECT j1.id, SUM(j1."TOTAL_PERS") From "Join_SIEDU_Dist_COMUNAS_TEST" j1 Group By j1.id Limit 10
)

SELECT DISTINCT t2.id, t2.sum, j1.geom FROM "TEST2" t2 INNER JOIN "Join_SIEDU_Dist_COMUNAS_TEST" j1 ON t2.id = j1.id