switch(menuIndex){
	case 0:
		room_goto(rm_game)
		break;
	case 1:
		room_goto(rm_mainMenu);
		break;
	case 2:
		game_end();
		break;
}