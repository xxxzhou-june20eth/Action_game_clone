x=obj_player.x
y=obj_player.y;


if (mouse_x>x){
	image_xscale=-1;
	image_angle=point_direction(x,y,mouse_x,mouse_y);
}
else{
	image_xscale=1;
	image_angle=point_direction(mouse_x,mouse_y,x,y);
}

timing--;

if (mouse_check_button_pressed(1) && timing<=0){
	var bullet=instance_create_layer(x,y,"Instances",obj_player_bullet);
	audio_play_sound(Player_shoot,1,false);
	bullet.direction=point_direction(x,y,mouse_x,mouse_y);
	timing=CD;
}

