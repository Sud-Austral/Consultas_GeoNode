-- Select * From "SIEDU_Lim_Comunas"
Create Table "Join_SIEDU_Dist_COMUNAS_TEST" As (

Select com.id,
	com.geom,
	com.objectid,
	com.region,
	com.nom_region,
	com.provincia,
	com.nom_provin,
	com.comuna,
	com.nom_comuna,
	com.shape_leng,
	com.shape_area,
	jn.region As "region_manz",
	jn.comuna As "comuna_manz",
	jn.provincia As "provincia_manz",
	jn.distrito,
	jn.total_pers As "TOTAL_PERS",
	jn.total_homb As "TOTAL_HOMB",
	jn.total_muje As "TOTAL_MUJE",
	jn.edad_0_a_5 As "EDAD_0_A_5",
	jn.edad_6_a_1 As "EDAD_6_A_1",
	jn.edad_15_a_ As "EDAD_15_A_",
	jn.edad_65_y_ As "EDAD_65_Y_",
	jn.total_vivi As "TOTAL_VIVI",
	jn.distedui,
	jn.est_edui,
	jn.distedub,
	jn.est_edub,
	jn.distsalud,
	jn.est_salud,
	jn.distplaza,
	jn.est_plaza,
	jn.distparque,
	jn.est_parque,
	jn.distparadero,
	jn.est_paradero

From "SIEDU_Lim_Comunas" com Join "Join_SIEDU_DIST_MANZANAS" jn
On com.comuna = jn.comuna
)