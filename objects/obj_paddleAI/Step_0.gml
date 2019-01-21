var yDiff =0;

if(instance_exists(obj_ball)){
	
	yDiff = abs(obj_ball.y - y);

	if(yDiff > sprite_height/2 + obj_ball.sprite_height/2){
		
		move_towards_point(885, obj_ball.y, ySpeed);
		
	}else{
		
		speed = 0;
		
	}
		
}else{
		
		speed = 0;
	
}
