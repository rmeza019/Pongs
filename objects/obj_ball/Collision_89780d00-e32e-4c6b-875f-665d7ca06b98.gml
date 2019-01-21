audio_play_sound(snd_goal,1,false);
if(other.x < x){
	global.redScore += 1;
}else{
	global.blueScore += 1;
}

instance_destroy();
global.ballExists = 0;
