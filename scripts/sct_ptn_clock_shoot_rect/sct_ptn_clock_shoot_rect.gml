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
			create_x = player.x + ( player.y / tan( agl_real * pi / 180 ) )
			create_y = 0
		} else {
			create_x = room_width
			create_y = player.y - ( ( room_width - player.x ) * ( tan( agl_real * pi / 180 ) ) )
		}
	} else if( agl_real < 180 ) {
		if( point_direction( player.x, player.y, 0, 0 ) < agl_real ) {
			create_x = 0
			create_y = player.y + ( player.x * tan( agl_real * pi / 180 ) )
		} else {
			create_x = player.x + ( player.y / tan( agl_real * pi / 180 ) )
			create_y = 0
		}
	} else if( agl_real < 270 ) {
		if( point_direction( player.x, player.y, 0, room_height ) < agl_real ) {
			create_x = player.x - ( ( room_height - player.y ) / tan( agl_real * pi / 180 ) )
			create_y = room_height
		} else {
			create_x = 0
			create_y = player.y + ( player.x * tan( agl_real * pi / 180 ) )
		}
	} else {
		if( point_direction( player.x, player.y, room_width, room_height ) < agl_real ) {
			create_x = room_width
			create_y = player.y - ( ( room_width - player.x ) * tan( agl_real * pi / 180 ) )
		} else {
			create_x = player.x - ( ( room_height - player.y ) / tan( agl_real * pi / 180 ) )
			create_y = room_height
		}
	}
	
	var entity = instance_create_layer( create_x, create_y, "Objects", ojt_smallplanet )
	entity.spd = spd
	entity.agl = point_direction( create_x, create_y, player.x, player.y )
	agl += agl_space
	agl_real = ( agl % 360 )
}
