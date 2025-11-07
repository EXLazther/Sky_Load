draw_healthbar(10, 10, 450, 20, boss_health, c_white, c_red, c_green, 0, true, true);
draw_healthbar(10, 556, 450, 566, player_health, c_white, c_red, c_green, 0, true, true);
draw_text_transformed(20, 900, "100", 5, 5, 0);

if (is_battle_started == false){

	draw_text_transformed_color(80, window_get_height()/2, "Press X to Start!", 2, 2, 0, c_black,c_black,c_black,c_black,255)
}

if (is_battle_defeated == true){
	draw_text_transformed_color(80, window_get_height()/2-100, "Defeat!", 5, 5, 0, c_black,c_black,c_black,c_black,255)
	draw_text_transformed_color(80, window_get_height()/2, "Press X to Retry", 2, 2, 0, c_black,c_black,c_black,c_black,255)
}

if (is_battle_victory == true){
	
}
