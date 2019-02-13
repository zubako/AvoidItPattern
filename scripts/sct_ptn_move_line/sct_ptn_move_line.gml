var line_start_x = argument0
var line_start_y = argument1
var line_end_x = argument2
var line_end_y = argument3
var line_number = argument4
var spd = argument5
var agl = argument6

if( line_number > 1 ) {
	var space_x = ( line_end_x - line_start_x ) / ( line_number - 1 )
	var space_y = ( line_end_y - line_start_y ) / ( line_number - 1 )
	
	while( line_number > 0 ) {
		var entity = instance_create_layer( line_start_x, line_start_y, "Objects", ojt_smallplanet )
		entity.spd = spd
		entity.agl = agl
		line_start_x += space_x
		line_start_y += space_y
		line_number--
	}
	
} else if( line_number == 1 ) {
	var entity = instance_create_layer( line_start_x + ( ( line_end_x - line_start_x ) / 2 ), line_start_y + ( ( line_end_y - line_start_y ) / 2 ), "Objects", ojt_smallplanet )
	entity.spd = spd
	entity.agl = agl
}
