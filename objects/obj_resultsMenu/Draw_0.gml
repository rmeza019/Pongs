var i = 0;
var winner,winColor;
draw_set_font(f_Menu);

if(global.lastBlueScore > global.lastRedScore){
	winner = "BLUE";
	winColor = global.colorB;
}else{
	winner = "RED";
	winColor = global.colorR;
}

draw_text_color(450, 180, winner + " WINS!",winColor,winColor,winColor,winColor,1);
draw_text_color(425, 220, global.lastBlueScore, global.colorB, global.colorB, global.colorB, global.colorB, 1);
draw_text_color(450, 220, " - ", c_white, c_white, c_white , c_white, 1);
draw_text_color(475, 220, global.lastRedScore, global.colorR, global.colorR, global.colorR, global.colorR,1);

repeat(array_length_1d(buttons)){
	draw_set_halign(fa_center);	
	draw_set_font(f_Menu);
	draw_set_color(c_white);
	if(menuIndex == i) draw_set_color(global.colorB);
	draw_text(menuX, menuY + buttonH * i, buttons[i]);
	i ++;
	
}
