//Used for drawing the turntimer.
draw_sprite(sprite_get("hud_healthb"), 0, temp_x + 26, temp_y + 6);

if !intermission >= 1{
draw_sprite_part(sprite_get("hud_healthf"), 0, 0, 0, ((turnlimit - turntimer)/turnlimit) * 182, 36, temp_x + 26, temp_y + 6);
}

if intermission >= 1{
draw_sprite_part(sprite_get("hud_healthf"), 0, 0, 0, ((intermissionmax - intermission)/intermissionmax) * 182, 36, temp_x + 26, temp_y + 6);
}


draw_debug_text(temp_x + 6, temp_y - 13, turnindicator);