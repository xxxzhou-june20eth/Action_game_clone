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
	var bullet=instance_create_layer(x,y,"Instances",obj_player_bullet);
	bullet.direction=point_direction(x,y,obj_player.x,obj_player.y);
	timing=CD;
}

