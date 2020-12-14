Select * From "Arriendo_2014"
Select * From "Arriendo_2015"
Select * From "Arriendo_2016"
Select * From "Arriendo_2017"
Select * From "Arriendo_2018"
Select * From "Arriendo_2019"
Select * From "Arriendo_2020"

CREATE TABLE "Arriendo" AS (

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
	a15.pagados AS Pagado2015,
	a16.postulacio AS Postulacion2016, 
	a16.postulante AS Postulante2016, 
	a16.selecciona AS Selecciona2016,
	a16.pagados AS Pagado2016,
	a17.postulacio AS Postulacion2017, 
	a17.postulante AS Postulante2017, 
	a17.selecciona AS Selecciona2017,
	a17.pagados AS Pagado2017,
	a18.postulacio AS Postulacion2018, 
	a18.postulante AS Postulante2018, 
	a18.selecciona AS Selecciona2018,
	a18.pagados AS Pagado2018,
	a19.postulacio AS Postulacion2019, 
	a19.postulante AS Postulante2019, 
	a19.selecciona AS Selecciona2019,
	a19.pagados AS Pagado2019,
	a20.postulacio AS Postulacion2020, 
	a20.postulante AS Postulante2020, 
	a20.selecciona AS Selecciona2020,
	a20.pagados AS Pagado2020
	
From "Arriendo_2014" a14 Inner Join "Arriendo_2015" a15 
On a14.comuna = a15.comuna
Join "Arriendo_2016" a16
On a14.comuna = a16.comuna	
Join "Arriendo_2017" a17
On a14.comuna = a17.comuna	
Join "Arriendo_2018" a18
On a14.comuna = a18.comuna
Join "Arriendo_2019" a19
On a14.comuna = a19.comuna	
Join "Arriendo_2020" a20
On a14.comuna = a20.comuna
	
)

Select * From "Arriendo" Limit 1