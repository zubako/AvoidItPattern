var spd = argument0
var agl = argument1
var agl_end = argument2
var agl_space = argument3
var agl_real = ( agl % 360 )
var create_x = 0
var create_y = 0
var player = instance_find( ojt_player, 0 )

while( agl < agl_end ) {
	if( agl_real < 90 ) {
		if( point_direction( player.x, player.y, room_width, 0 ) < agl_real ) {
			create_x = ( room_width / 2 ) + lengthdir_x( player.y / sin( agl_real ), agl_real )
			create_y = 0
		} else {
			create_x = room_width
			create_y = ( room_height / 2 ) + ( room_width / 2 ) - ( ( player.x - ( room_width / 2 ) ) * tan( agl_real ) )
		}
	} else if( agl_real < 180 ) {
		if( point_direction( player.x, player.y, 0, 0 ) < agl_real ) {
			create_x = 0
			create_y = ( room_height / 2 ) + ( player.x - ( room_width / 2 ) ) - ( ( -room_width / 2 ) * tan( agl_real ) )
		} else {
			create_x = ( room_width / 2 ) + lengthdir_x( player.y * sin( agl_real ), agl_real )
			create_y = 0
		}
	} else if( agl_real < 270 ) {
		if( point_direction( player.x, player.y, room_width, 0 ) < agl_real ) {
			create_x = room_width
			create_y = ( room_height / 2 ) + lengthdir_y( ( ( room_width / 2 ) - ( room_height / 2 ) - player.y ) / sin( agl_real ), agl_real )
		} else {
			create_x = ( room_width / 2 ) + ( room_height / 2 )
			create_y = ( room_height / 2 ) + ( room_height / 2 ) - ( ( player.x - ( room_width / 2 ) ) * tan( agl_real ) )
		}
	} else {
		if( point_direction( player.x, player.y, 0, 0 ) < agl_real ) {
			create_x = ( room_width / 2 ) + ( room_height / 2 ) - player.y - ( ( -room_height / 2 ) * tan( agl_real ) ) 
			create_y = room_height
		} else {
			create_x = room_width
			create_y = ( room_height / 2 ) + lengthdir_y( ( room_width - player.x ) * sin( agl_real ), agl_real )
		}
	}
	
	var entity = instance_create_layer( create_x, create_y, "Objects", ojt_smallplanet )
	entity.spd = spd
	entity.agl = point_direction( create_x, create_y, player.x, player.y )
	agl += agl_space
	agl_real = ( agl % 360 )
}
