/// @description Insert description here
// You can write your code in this editor

yDir = keyboard_check(downKey) - keyboard_check(upKey);

if(yDir != 0){
	y += yDir * ySpeed;

}
