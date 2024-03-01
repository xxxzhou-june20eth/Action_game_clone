if (!enemy_created){
	for (var i=0;i<enemy_number;i++){
		var cx=irandom_range(500,1500);
		var cy=irandom_range(500,1500)
		var enemy=instance_create_layer(cx,cy,"Enemy",obj_enemy);
		var gun=instance_create_layer(cx,cy,"Enemy",obj_enemy_gun);
		enemy.gun=gun;
		gun.owner=enemy;
	}
	enemy_created=true;
}
