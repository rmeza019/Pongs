var up1 = 0;
var down1 = 0;

// to move with either W and S or UP and DOWN
if(keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)) down1 = 1;
if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)) up1 = 1;

menuMove = down1 - up1;

//menuMove = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));

if(menuIndex < 0){
	
	menuIndex = array_length_1d(buttons) - 1;
	
}else if(menuIndex > array_length_1d(buttons) -1 ){
	
	menuIndex = 0;
	
}else{
	
	menuIndex += menuMove;
	
}

if(menuIndex != lastSelected) audio_play_sound(snd_menuSwitch,1,false);

lastSelected = menuIndex;
