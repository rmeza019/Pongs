var i = 0;
var winner,winColor;
draw_set_font(f_Menu);

draw_text_color(450, 220, "GAME PAUSED", c_white, c_white, c_white , c_white, 1);

repeat(array_length_1d(buttons)){
	draw_set_halign(fa_center);	
	draw_set_font(f_Menu);
	draw_set_color(c_white);
	if(menuIndex == i) draw_set_color(global.colorB);
	draw_text(menuX, menuY + buttonH * i, buttons[i]);
	i ++;
	
}
