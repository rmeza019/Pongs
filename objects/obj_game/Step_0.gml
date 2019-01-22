if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_mainMenu)
			break;
	 
		case rm_results:
			//game_restart();
			break;
	}
}

switch(room){
	case rm_game:
		if(global.ballExists == false){
			
			if(global.blueScore < 10 && global.redScore < 10){
				if(alarm[0] < 0){
					alarm[0] = room_speed;
				}
			}else{
				if(alarm[1] < 0){
					alarm[1] = room_speed;
				}
				
			}
			
		}
		
		if (keyboard_check_pressed(vk_escape)) {
			paused = !paused;
			if (!sprite_exists(screenShot)) {
				screenShot = sprite_create_from_surface(application_surface, 0, 0, view_wport, view_hport, 0, 0, 0, 0);
			}
		}

		if (paused) {
			instance_deactivate_all(true);
		} else {
			if (sprite_exists(screenShot)) {
				sprite_delete(screenShot);
			}
			
			instance_activate_all();
		}
		break;
}
