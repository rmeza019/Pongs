var i = 0;
draw_set_font(f_Menu);

repeat(array_length_1d(buttons)){
	draw_set_halign(fa_center);
	var c = make_color_rgb(85,85,85);
	draw_set_font(f_Score);
	draw_text_transformed_color(450, 50, "PONGs", 3, 3, 0, c, c, c, c, 1);
	draw_set_font(f_Menu);
	draw_set_color(c_white);
	if(menuIndex == i) draw_set_color(global.colorB);
	
	draw_text(menuX, menuY + buttonH * i, buttons[i]);
	i ++;
	
}
