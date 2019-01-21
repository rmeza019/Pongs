switch(room){
	case rm_start:
		draw_set_halign(fa_center);
		var c = make_color_rgb(85,85,85);
		draw_set_font(f_Score);
		draw_text_transformed_color(450, 50, "PONGs", 3, 3, 0, c, c, c, c, 1);
		draw_set_font(f_Menu);
		draw_text_color(225,300,
		@"Player 1
		UP: w
		DOWN: s
		CONFIRM: enter",global.colorB,global.colorB,global.colorB,global.colorB,1);
		draw_text_color(675,300,
		@"Player 2
		UP: up arrow
		DOWN: down arrow
		CONFIRM: enter",global.colorR,global.colorR,global.colorR,global.colorR,1);
		c = c_white;
		draw_text_color(450,500,">>PRESS ENTER TO START<<",c,c,c,c,1);
		break;
	
	case rm_game:
		draw_set_font(f_Score);
		draw_text_color(220,100,string(global.blueScore),global.colorB,global.colorB,global.colorB,global.colorB,1);
		draw_text_color(675,100,string(global.redScore),global.colorR,global.colorR,global.colorR,global.colorR,1);
		break;
}
