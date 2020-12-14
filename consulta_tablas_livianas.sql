Select * From "01_Demografia"
--id_mun
Select * From "02_GrupoEdad"

Create Table unificada2 AS (

Select d1.id,
	d1.geom,
	d1.codmuni,
	d1.id_dep,
	d1.id_mun,
	d1.departamen,
	d1.municipio,
	d1.población,
	d1.poblaci_1,
	d1.f__hombres,
	d1.poblaci_12,
	d1.f__mujeres,
	d1.urbana,
	d1.urbana_1,
	d1.rural,
	d1.rural_1,
	d1.pueblo_or,
	d1.pueblos_o,
	g2."0_4",
	g2."5_9",
	g2."10_14",
	g2."15_19",
	g2."20_24",
	g2."25_29",
	g2."30_34",
	g2."35_39",
	g2."40_44",
	g2."45_49",
	g2."50_54",
	g2."55_59",
	g2."60_64",
	g2."65_69",
	g2."70__74" AS "70_74",
	g2."75_79",
	g2."80_84",
	g2."85_89",
	g2."90__94" AS "90_94",
	g2."95_99",
	g2."100_o_más",
	g2."pob_0_19",
	g2."pob_20_39",
	g2."pob_40_59",
	g2."pob_60_79",
	g2."pob_may80"
From "01_Demografia" d1 inner join "02_GrupoEdad" g2
on d1.id_mun = g2.id_mun
)

Select * From unificada2