x=owner.x
y=owner.y;


if (obj_player.x>x){
	image_xscale=-1;
	image_angle=point_direction(x,y,obj_player.x,obj_player.y);
}
else{
	image_xscale=1;
	image_angle=point_direction(obj_player.x,obj_player.y,x,y);
}

timing--;

if (timing<=0){
	var bullet=instance_create_layer(x,y,"Enemy",obj_enemy_bullet);
	audio_play_sound(Enemy_shoot,1,false);
	bullet.direction=point_direction(x,y,obj_player.x,obj_player.y);
	CD=irandom_range(70,120);
	timing=CD;
}

