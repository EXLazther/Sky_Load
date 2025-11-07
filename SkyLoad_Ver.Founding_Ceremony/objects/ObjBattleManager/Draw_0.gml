/*if is_battle_active == false
{
	draw_text_transformed(600, window_get_height()/2, "Press Z", 10, 10, 0);
	//draw_set_halign(fa_left)
	//layer_background_alpha(layer_background_get_id(layer_get_id("Backfround")), 255)
	
}*/

draw_healthbar(70, 40, 520, 50, boss_health, c_white, c_red, c_green, 0, true, true);
draw_healthbar(70, 520, 520, 530, player_health, c_white, c_red, c_green, 0, true, true);
draw_healthbar(20, 1000, 600, 1060, 100, c_white, c_red, c_blue, 0, true, true);
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


