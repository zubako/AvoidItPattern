if( ds_exists( global.schedule, ds_type_list ) ) {
	
// ---------------
// ■ 일반 계획
// ---------------
	ds_list_add( global.schedule, [ 30, "Clock_Shoot_1" ] )
	ds_list_add( global.schedule, [ 180, "Line_Left_1" ] )
	ds_list_add( global.schedule, [ 540, "Clock_Shoot_1" ] )
	ds_list_add( global.schedule, [ 720, "Line_Up_1" ] )
	ds_list_add( global.schedule, [ 1440, "Line_Right_1" ] )
	ds_list_add( global.schedule, [ 1600, "Clock_Shoot_1" ] )
	ds_list_add( global.schedule, [ 2160, "Line_Down_1" ] )
	ds_list_add( global.schedule, [ 3000, "Line_Left_2" ] )
	ds_list_add( global.schedule, [ 3360, "Line_Up_2" ] )
	ds_list_add( global.schedule, [ 3720, "Line_Right_2" ] )
	ds_list_add( global.schedule, [ 4080, "Line_Down_2" ] )
	ds_list_add( global.schedule, [ 4440, "Full_Shoot_1" ] )
	ds_list_add( global.schedule, [ 4620, "Full_Shoot_2" ] )
	ds_list_add( global.schedule, [ 4800, "Line_Left_1+sp1" ] )
	ds_list_add( global.schedule, [ 4800, "Line_Up_1+sp1" ] )
	ds_list_add( global.schedule, [ 5100, "Line_Right_1+sp1" ] )
	ds_list_add( global.schedule, [ 5100, "Line_Down_1+sp1" ] )
	ds_list_add( global.schedule, [ 5450, "Full_Shoot_3" ] )
	ds_list_add( global.schedule, [ 5630, "Line_Right_2+sp1" ] )
	ds_list_add( global.schedule, [ 5800, "Clock_Shoot_1+sp1" ] )
	ds_list_add( global.schedule, [ 5840, "Line_Left_2+sp1" ] )
	ds_list_add( global.schedule, [ 6020, "Line_Down_2+sp1" ] )
	ds_list_add( global.schedule, [ 6300, "Clock_Shoot_1+sp1" ] )
	ds_list_add( global.schedule, [ 6500, "Line_Up_2+sp1" ] )
	ds_list_add( global.schedule, [ 6710, "Full_Shoot_3" ] )
	ds_list_add( global.schedule, [ 6920, "Clock_Shoot_1+sp2" ] )
	ds_list_add( global.schedule, [ 7160, "Line_Up_2+sp1" ] )
	ds_list_add( global.schedule, [ 7400, "Full_Shoot_1+sp1" ] )
	ds_list_add( global.schedule, [ 7700, "Line_Down_2+sp1" ] )
	ds_list_add( global.schedule, [ 8000, "Full_Shoot_2+sp1" ] )
	
// ---------------
// ■ 반복 계획
// ---------------
	ds_list_add( global.schedule, [ 0, 3600, 60, "Loop" ] )
	ds_list_add( global.schedule, [ 1800, 3600, 60, "Loop2" ] )
	ds_list_add( global.schedule, [ 2880, 2900, 1, "Loop3" ] )
	ds_list_add( global.schedule, [ 3600, 5400, 30, "Loop2" ] )
	ds_list_add( global.schedule, [ 6200, 432000, 30, "Loop3" ] )
	ds_list_add( global.schedule, [ 6500, 6510, 1, "Loop3" ] )
	ds_list_add( global.schedule, [ 6600, 432000, 30, "Loop4" ] )
	ds_list_add( global.schedule, [ 7750, 7760, 1, "Loop4" ] )
}
