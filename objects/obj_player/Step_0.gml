var hmove=keyboard_check(ord("D"))-keyboard_check(ord("A"));
var vmove=keyboard_check(ord("S"))-keyboard_check(ord("W"));
var px=x;
var py=y;

x+=hmove*spd;
y+=vmove*spd;

if (place_meeting(x+2,y,obj_rock)){
	x=px;
}
if (place_meeting(x,y+2,obj_rock)){
	y=py;
}

if (x<obj_camera.w/2 || x>room_width-obj_camera.w/2){
	x=px;
}

if (y<obj_camera.h/2 || y>room_height-obj_camera.h/2){
	y=py;
}
