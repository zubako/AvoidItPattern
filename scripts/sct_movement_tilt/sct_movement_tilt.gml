var speed_x = argument0
var speed_y = argument1
var tilt_x = ( device_get_tilt_y() - global.tilt_control_x ) * ( ( ( global.tilt_control_z <= 0 ) * 2 ) - 1 )
var tilt_y = ( device_get_tilt_x() - global.tilt_control_y ) * ( ( ( global.tilt_control_z <= 0 ) * 2 ) - 1 )
var tilt_z = ( device_get_tilt_z() - global.tilt_control_z )

if( ( sign( device_get_tilt_z() ) == sign( global.tilt_control_z ) ) ) {
	tilt_x += clamp( ( ( device_get_tilt_y() * sign( -global.tilt_control_x ) ) - ( 1 - abs( global.tilt_control_x ) ) ) * 2, 0, abs( global.tilt_control_x ) * 2 ) * sign( global.tilt_control_x ) * sign( -global.tilt_control_z )
	tilt_y += clamp( ( ( device_get_tilt_x() * sign( -global.tilt_control_y ) ) - ( 1 - abs( global.tilt_control_y ) ) ) * 2, 0, abs( global.tilt_control_y ) * 2 ) * sign( global.tilt_control_y ) * sign( -global.tilt_control_z )
} else {
	tilt_x += clamp( ( ( device_get_tilt_y() * sign( -global.tilt_control_x ) ) + 1 ) * 2, 0, abs( global.tilt_control_x ) * 2 ) * sign( global.tilt_control_x ) * sign( -global.tilt_control_z )
	tilt_y += clamp( ( ( device_get_tilt_x() * sign( -global.tilt_control_y ) ) + 1 ) * 2, 0, abs( global.tilt_control_y ) * 2 ) * sign( global.tilt_control_y ) * sign( -global.tilt_control_z )
}

speed_x *= tilt_x
speed_y *= tilt_y
self.x += ( speed_x * ( ( ( display_get_orientation() == display_landscape ) == ( os_type == os_android ) ) * -2 ) ) + speed_x
self.y += ( speed_y * ( ( ( display_get_orientation() == display_landscape ) == ( os_type == os_android ) ) * -2 ) ) + speed_y
