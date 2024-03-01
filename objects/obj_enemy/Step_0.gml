var dis=point_distance(x,y,obj_player.x,obj_player.y);
var vector_to_player = point_direction(x,y,obj_player.x,obj_player.y);
timing--;
	
switch (state)
{
	case EnemyState.Idle:
		
		//random movement
		if (timing<=30){
			direction=irandom(360);
			if (timing<=0){
				timing=30;
			}
		}
		else if (timing<=60){
			direction=point_direction(x,y,obj_player.x,obj_player.y);
		}
		x+=lengthdir_x(spd,direction);
		y+=lengthdir_y(spd,direction);
		
		//change image_xscale
		if (direction<=90 || direction>=270){
			image_xscale=1;
		}
		else{
			image_xscale=-1;
		}
		
		//change_state
		if (dis<close_distance){
			state=EnemyState.Chasing;
			pass=false;
		}
		else if (dis<=far_distance){
			state=EnemyState.Shooting;
		}
		
	break
	
	case EnemyState.Chasing:
		
		//movement to player;
		if (!pass){
			move_towards_point(obj_player.x,obj_player.y,spd);
			pass=true;
		}
		
		//change image_xscale
		if (vector_to_player<=90 || vector_to_player>=270){
			image_xscale=1;
		}
		else{
			image_xscale=-1;
		}
		
		//change state
		if (dis>far_distance){
			state=EnemyState.Idle;
		}
		else if (dis>close_distance){
			state=EnemyState.Shooting;
		}
		
	break;

	case EnemyState.Shooting:
	
		if (timing<=0){
			direction=vector_to_player-30;
			timing=30;
		}
		x+=lengthdir_x(spd,direction);
		y+=lengthdir_y(spd,direction);
	
		if (dis>=far_distance){
			state=EnemyState.Idle;
		}
	
	break;
}

if (x-sprite_width/2<=0){
	x=sprite_width/2+1;
}
else if (x+sprite_width>room_width){
	x=room_width-sprite_width-1;
}

if (y-sprite_height/2<=0){
	y=sprite_height/2+1;
}
else if (y+sprite_height>room_height){
	x=room_height-sprite_height-1;
}