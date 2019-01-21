switch(room){
	case rm_start:
		audio_play_sound(snd_bgMusic,2,true);
		break;
		
	case rm_game:
		if(global.aiOpponent){
			instance_create_layer(885,300,"Instances",obj_paddleAI);
		}else{
			instance_create_layer(885,300,"Instances",obj_paddleR);
		}
		break;
}