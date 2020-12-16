CREATE TABLE "Join_SIEDU_DIST_MANZANAS" AS (

Select mpob.id,
	mpob.geom,
	mpob.objectid,
	mpob.cut,
	mpob.region,
	mpob.provincia,
	mpob.comuna,
	mpob.area_c,
	mpob.manzent,
	mpob.distrito,
	mpob.cod_distri,
	mpob.cod_locali,
	mpob.cod_entida,
	mpob.categoria,
	mpob.cod_catego,
	mpob.mz_base_ce,
	mpob.total_pers,
	mpob.total_homb,
	mpob.total_muje,
	mpob.edad_0_a_5,
	mpob.edad_6_a_1,
	mpob.edad_15_a_,
	mpob.edad_65_y_,
	mpob.total_vivi,
	mpob.manzent_t,
	mpob.objectid_1,
	mpob.name,
	mpob.originid,
	mpob.destinatio,
	mpob.destinat_1, 
	mpob.total_long,
	mpob.shape_leng,
	mpob.origen,
	mpob.objectid_2,
	mpob.cut_1,
	mpob.cnt_cut,
	mpob.sum_edad_6,
	mpob.por_pob,
	mpob.ind_dist_m,
	mpob.shape_le_1,
	mpob.shape_area,
	m1.total_long as distedui,
	m1.estandar_c as est_est_edui,
	m3.total_long as distedub,
	m3.estandar_c as est_edub,
	m7.total_long as distsalud,
	m7.estandar_c as est_salud,
	m20.total_long as distplaza,
	m20.estandar_c as est_plaza,
	m22.total_long as distparque,
	m22.estandar_c as est_parque,
	m25.total_long as distparadero,
	m25.estandar_c as est_paradero
	
From "SIEDU_BPU3_Manzana_Por_Pob" mpob Inner Join "SIEDU_BPU1_Manzana_Dist_Ind" m1
On mpob.manzent::varchar = m1.manzent_t::varchar
Join "SIEDU_BPU3_Manzana_Dist_Ind" m3
On mpob.manzent::varchar = m3.manzent_t::varchar
Join "SIEDU_BPU7_Manzana_Dist_Ind" m7
On mpob.manzent::varchar = m7.manzent_t::varchar
Join "SIEDU_BPU20_Manzana_Dist_Ind" m20
On mpob.manzent::varchar = m20.manzent_t::varchar
Join "SIEDU_BPU1_BPU22_Manzana_Dist_Ind" m22
On mpob.manzent::varchar = m22.manzent_t::varchar
Join "SIEDU_BPU25_Manzana_Dist_Ind" m25
On mpob.manzent::varchar = m25.manzent_t::varchar
)

Select * From "Join_SIEDU_DIST_MANZANAS" limit 6