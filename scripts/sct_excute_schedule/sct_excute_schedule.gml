var pattern = []

if( !global.pause && !global.gameover && ds_exists( global.schedule, ds_type_list ) ) {
	for( var i = 0; i < ds_list_size( global.schedule ); i++ ) {
		pattern = ds_list_find_value( global.schedule, i )
		if( ( ( array_length_1d( pattern ) == 2 ) && ( pattern[ 0 ] == global.frame ) ) || ( ( array_length_1d( pattern ) == 4 ) && ( pattern[ 0 ] <= global.frame ) && ( pattern[ 1 ] >= global.frame ) && ( ( ( global.frame - pattern[ 0 ] ) % pattern[ 2 ] ) == 0 ) ) ) {
			if( array_length_1d( pattern ) == 4 ) {
				pattern[ 1 ] = pattern[ 3 ]
			}
			switch( pattern[ 1 ] ) {
				case "Line_Right_1": {	sct_ptn_move_line( room_width, global.status_bar_height, room_width, room_height, 5, 2, 180 );	break	}
				case "Line_Right_1+sp1": {	sct_ptn_move_line( room_width, global.status_bar_height, room_width, room_height, 5, 4, 180 );	break	}
				case "Line_Right_2": {	sct_ptn_move_line( room_width, global.status_bar_height, room_width, room_height, 8, 4, 180 );	break	}
				case "Line_Right_2+sp1": {	sct_ptn_move_line( room_width, global.status_bar_height, room_width, room_height, 8, 6, 180 );	break	}
				case "Line_Up_1": {	sct_ptn_move_line( 0, 0, room_width, 0, 9, 2, 270 );	break	}
				case "Line_Up_1+sp1": {	sct_ptn_move_line( 0, 0, room_width, 0, 9, 4, 270 );	break	}
				case "Line_Up_2": {	sct_ptn_move_line( 0, 0, room_width, 0, 15, 4, 270 );	break	}
				case "Line_Up_2+sp1": {	sct_ptn_move_line( 0, 0, room_width, 0, 15, 6, 270 );	break	}
				case "Line_Left_1": {	sct_ptn_move_line( 0, global.status_bar_height, 0, room_height, 5, 2, 0 );	break	}
				case "Line_Left_1+sp1": {	sct_ptn_move_line( 0, global.status_bar_height, 0, room_height, 5, 4, 0 );	break	}
				case "Line_Left_2": {	sct_ptn_move_line( 0, global.status_bar_height, 0, room_height, 8, 4, 0 );	break	}
				case "Line_Left_2+sp1": {	sct_ptn_move_line( 0, global.status_bar_height, 0, room_height, 8, 6, 0 );	break	}
				case "Line_Down_1": {	sct_ptn_move_line( 0, room_height, room_width, room_height, 9, 2, 90 );	break	}
				case "Line_Down_1+sp1": {	sct_ptn_move_line( 0, room_height, room_width, room_height, 9, 4, 90 );	break	}
				case "Line_Down_2": {	sct_ptn_move_line( 0, room_height, room_width, room_height, 15, 4, 90 );	break	}
				case "Line_Down_2+sp1": {	sct_ptn_move_line( 0, room_height, room_width, room_height, 15, 6, 90 );	break	}
				case "Clock_Shoot_1": {	sct_ptn_clock_shoot_rect( 2, 0, 360, 45 );	break	}
				case "Clock_Shoot_1+sp1": {	sct_ptn_clock_shoot_rect( 4, 0, 360, 45 );	break	}
				case "Clock_Shoot_1+sp2": {	sct_ptn_clock_shoot_rect( 6, 0, 360, 45 );	break	}
				case "Full_Shoot_1": {	sct_ptn_full_shoot( 6, 0, 180, 5 );	break	}
				case "Full_Shoot_1+sp1": {	sct_ptn_full_shoot( 8, 0, 180, 5 );	break	}
				case "Full_Shoot_2": {	sct_ptn_full_shoot( 6, 180, 360, 5 );	break	}
				case "Full_Shoot_2+sp1": {	sct_ptn_full_shoot( 8, 180, 360, 5 );	break	}
				case "Full_Shoot_3": {	sct_ptn_full_shoot( 6, 0, 360, 5 );	break	}
				case "Full_Shoot_3+sp1": {	sct_ptn_full_shoot( 8, 0, 360, 5 );	break	}
				case "Loop": {	sct_ptn_move_to_player_angle( 2 );	break	}
				case "Loop2": {	sct_ptn_move_to_player_angle( 4 );	break	}
				case "Loop3": {	sct_ptn_move_to_player_angle( 6 );	break	}
				case "Loop4": {	sct_ptn_move_to_player_angle( 8 );	break	}
				default: {	sct_ptn_move_to_player_angle( 1 );	break	}
			}
		}
	}
}

pattern = 0
