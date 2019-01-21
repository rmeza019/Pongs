//Ball Collision with paddle
//

audio_play_sound(snd_bounce,1,false);
if(other.y == y){
	
	hspeed *= -1;

//ball is higher than paddle
}else if(other.y > y){
	
	diff = (other.y - y) / (other.sprite_height/2);
	
	if(other.x > x){
		bounceAng = 180 - (45 * diff);
	}else{
		bounceAng = 0 + (45 * diff);
	}
	
	if(bounceAng >= 30 || bounceAng <= 150){
		speed = topSpeed;
	}else{
		speed = baseSpeed;
	}
	
	motion_set(bounceAng, speed);

//ball is lower than paddle
}else{
	
	diff = (y - other.y) / (other.sprite_height/2);

	if(other.x > x){
		bounceAng = 180 + (45 * diff);
	}else{
		bounceAng = 0 - (45 * diff);
	}
	
	if(bounceAng >= 30 || bounceAng >= 210){
		speed = topSpeed;
	}else{
		speed = baseSpeed;
	}
	
	motion_set(bounceAng, speed);

}
