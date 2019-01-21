switch(menuIndex){
	case 0:
		global.aiOpponent = true;
		room_goto(rm_game);
		break;
	case 1:
		global.aiOpponent = false;
		room_goto(rm_game);
		break;
	case 2:
		game_end();
		break;
}