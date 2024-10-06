// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_over(){
	global.gamestate = "game_over"
	room_goto(rm_main_menu)
}