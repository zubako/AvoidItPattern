var speed_x = argument0
var speed_y = argument1

var point_x = global.tilt_control_x * ( ( ( global.tilt_control_z >= 0 ) * 2 ) - 1 )
var point_y = global.tilt_control_y * ( ( ( global.tilt_control_z >= 0 ) * 2 ) - 1 )
var point_z = global.tilt_control_z
var tilt_x = device_get_tilt_y() * ( ( ( global.tilt_control_z >= 0 ) * 2 ) - 1 )
var tilt_y = device_get_tilt_x() * ( ( ( global.tilt_control_z >= 0 ) * 2 ) - 1 )
var tilt_z = device_get_tilt_z()

if( point_z == 0 ) {	point_z = 1;	}	if( tilt_z == 0 ) {	tilt_z = 1;	}
if( point_z > 0 ) {
	if( tilt_z >= 0 ) {
		tilt_x -= ( point_x - ( ( frac( point_x - tilt_x ) * 2 ) * ( abs( point_x - tilt_x ) > 1 ) ) )
		tilt_y -= ( point_y - ( ( frac( point_y - tilt_y ) * 2 ) * ( abs( point_y - tilt_y ) > 1 ) ) )
	} else {
		tilt_x += ( point_x - ( ( frac( point_x + tilt_x ) * 2 ) * ( abs( point_x + tilt_x ) > 1 ) ) )
		tilt_y += ( point_y - ( ( frac( point_y + tilt_y ) * 2 ) * ( abs( point_y + tilt_y ) > 1 ) ) )
	}
	self.x += tilt_x * speed_x
	self.y += tilt_y * speed_y
} else {
	if( tilt_z >= 0 ) {
		tilt_x += ( sign( point_x ) * -2 ) + point_x + ( ( sign( point_x ) - point_x - tilt_x ) * 2 * ( abs( point_x + tilt_x ) < 1 ) )
		tilt_y += ( sign( point_y ) * -2 ) + point_y + ( ( sign( point_y ) - point_y - tilt_y ) * 2 * ( abs( point_y + tilt_y ) < 1 ) )
	} else {
		tilt_x -= ( sign( point_x ) * -2 ) + point_x + ( ( sign( point_x ) - point_x + tilt_x ) * 2 * ( abs( point_x - tilt_x ) < 1 ) )
		tilt_y -= ( sign( point_y ) * -2 ) + point_y + ( ( sign( point_y ) - point_y + tilt_y ) * 2 * ( abs( point_y - tilt_y ) < 1 ) )
	}
	self.x -= tilt_x * speed_x
	self.y -= tilt_y * speed_y
}
