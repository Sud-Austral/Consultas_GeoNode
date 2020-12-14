Select * From "ICVU_2017"
Select * From "ICVU_2018"

Create Table "ICVU" AS (

Select i17.id,
	i17.geom,
	i17.cut_reg,
	i17.cut_prov,
	i17.cut_com,
	i17.region,
	i17.provincia,
	i17.comuna,
	i17.codcom,
	i17.info AS "Info_2017",
	i17.año AS "Año_2017",
	i17.labor AS "Labor_2017",
	i17.negocios AS "Negocios_2017",
	i17.sociocult AS "SocioCultural_2017",
	i17.conect AS "Connect_2017",
	i17.saludma AS "Salud_Ma_2017",
	i17.vivienda AS "Vivienda_2017",
	i17.icvu AS "ICVU_2017",
	i17.ranking AS "Ranking_2017",
	i18.info AS "Info_2018",
	i18.año AS "Año_2018",
	i18.labor AS "Labor_2018",
	i18.negocios AS "Negocios_2018",
	i18.sociocult AS "SocioCultural_2018",
	i18.conect AS "Connect_2018",
	i18.saludma AS "Salud_Ma_2018",
	i18.vivienda AS "Vivienda_2018",
	i18.icvu AS "ICVU_2018",
	i18.ranking AS "Ranking_2018",
	i19.info AS "Info_2019",
	i19.año AS "Año_2019",
	i19.labor AS "Labor_2019",
	i19.negocios AS "Negocios_2019",
	i19.sociocult AS "SocioCultural_2019",
	i19.conect AS "Connect_2019",
	i19.saludma AS "Salud_Ma_2019",
	i19.vivienda AS "Vivienda_2019",
	i19.icvu AS "ICVU_2019",
	i19.ranking AS "Ranking_2019"

From "ICVU_2017" i17 Inner Join "ICVU_2018" i18
On i17.comuna = i18.comuna
Inner Join "ICVU_2019" i19
On i17.comuna = i19.comuna
)

Select * From "ICVU"