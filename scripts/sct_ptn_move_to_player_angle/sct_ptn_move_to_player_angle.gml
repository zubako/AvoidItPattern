var spd = argument0
var create_x = 0
var create_y = 0

if( irandom( 1 ) ) {
	var create_x = random( room_width )
	var create_y = irandom( 1 ) * room_height
} else {
	var create_x = irandom( 1 ) * room_width
	var create_y = random( room_height )
}

var entity = instance_create_layer( create_x, create_y, "Objects", ojt_smallplanet )
entity.spd = spd
entity.agl = point_direction( create_x, create_y, instance_find( ojt_player, 0 ).x, instance_find( ojt_player, 0 ).y )
