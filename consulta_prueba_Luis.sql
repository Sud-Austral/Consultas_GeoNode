Select * From "Arriendo_2014"
Select * From "Arriendo_2015"

CREATE TABLE Unificada AS (

Select a14.id, 
	a14.geom, 
	a14.cut_reg, 
	a14.cut_prov, 
	a14.cut_com, 
	a14.region, 
	a14.provincia, 
	a14.comuna, 
	a14.codreg, 
	a14.codprov, 
	a14.codcom, 
	a14.comuna_1,
	a14.región, 
	a14.año, 
	a14.postulacio AS Postulacion2014, 
	a14.postulante AS Postulante2014, 
	a14.selecciona AS Selecciona2014,
	a14.pagados AS Pagado2014,
	a15.postulacio AS Postulacion2015, 
	a15.postulante AS Postulante2015, 
	a15.selecciona AS Selecciona2015,
	a15.pagados AS Pagado2015
From "Arriendo_2014" a14 inner join "Arriendo_2015" a15 
on a14.codcom = a15.codcom
)

Select * From Unificada Limit 1