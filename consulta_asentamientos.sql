Select * From "Asentamientos_Humanos_2002"

Create Table "Asentamientos_Humanos" AS (

Select ah2.id,
	ah2.geom,
	ah2.objectid,
	ah2.region,
	ah2.nombre,
	ah2.superficie,
	ah2.peso_admin,
	ah2.tipo,
	ah2.id_u_2002,
	ah2.superficie AS "Superficie_2002",
	ah2.peso_admin AS "Peso_admin_2002",
	ah2.tipo AS "Tipo_2002",
	ah2.id_u_2002 AS "Id_u2002",
	ah2.shape_leng AS "Shape_leng_2002",
	ah2.shape_le_1 AS "Shape_le1_2002",
	ah2.shape_area AS "Shape_area_2002",

	ah6.superficie AS "Superficie_2006",
	ah6.peso_admin AS "Peso_admin_2006",
	ah6.tipo AS "Tipo_2006",
	ah6.id_u_2006 AS "Id_u2006",
	ah6.shape_leng AS "Shape_leng_2006",
	ah6.shape_le_1 AS "Shape_le1_2006",
	ah6.shape_area AS "Shape_area_2006",

	ah11.superficie AS "Superficie_2011",
	ah11.peso_admin AS "Peso_admin_2011",
	ah11.tipo AS "Tipo_2011",
	ah11.id_u_2011 AS "Id_u2011",
	ah11.shape_leng AS "Shape_leng_2011",
	ah11.shape_le_1 AS "Shape_le1_2011",
	ah11.shape_area AS "Shape_area_2011",

	ah17.superficie AS "Superficie_2017",
	ah17.peso_admin AS "Peso_admin_2017",
	ah17.tipo AS "Tipo_2017",
	ah17.id_u_2017 AS "Id_u2017",
	ah17.shape_leng AS "Shape_leng_2017",
	ah17.shape_le_1 AS "Shape_le1_2017",
	ah17.shape_area AS "Shape_area_2017"
	
From "Asentamientos_Humanos_2002" ah2 Inner Join "Asentamientos_Humanos_2006" ah6
On ah2.nombre = ah6.nombre

Inner Join "Asentamientos_Humanos_2011" ah11
On ah2.nombre = ah11.nombre

Inner Join "Asentamientos_Humanos_2017" ah17
On ah2.nombre = ah17.nombre
)