//Call Upon Boss Sprite
if boss = 1 {
	draw_debug_text (x+40, y-193, "Slime");
	if intermission = 0 && !attacked {
		draw_sprite (sprite_get("slime"), 0, x, y);
		}
	else if attacked{
		draw_sprite (sprite_get("slime_attack"), 0, x, y);
	}
	else if intermission > 0{
		draw_sprite (sprite_get("slime_defeated"), 0, x, y);
	}
}

if boss = 2 {
	draw_debug_text (x+40, y-193, "Puppet");
	if intermission = 0 && !attacked {
		draw_sprite (sprite_get("puppet"), 0, x, y);
		}
	else if attacked{
		draw_sprite (sprite_get("puppet_attack"), 0, x, y);
	}
	else if intermission > 0{
		draw_sprite (sprite_get("puppet_defeated"), 0, x, y);
	}
}

if boss = 3 {
    draw_debug_text (x+40, y-193, "Magician");
	if intermission = 0 && !attacked {
		draw_sprite (sprite_get("wizard"), 0, x, y);
		}
	else if attacked{
		draw_sprite (sprite_get("wizard_attack"), 0, x, y);
	}
	else if intermission > 0{
		draw_sprite (sprite_get("wizard_defeated"), 0, x, y);
	}
}

if boss = 4 {
   	draw_debug_text (x+40, y-193, "Evil Knight");
	if intermission = 0 && !attacked {
		draw_sprite (sprite_get("knight"), 0, x, y);
		}
	else if attacked{
		draw_sprite (sprite_get("knight_attack"), 0, x, y);
	}
	else if intermission > 0{
		draw_sprite (sprite_get("knight_defeated"), 0, x, y);
	}
}

if boss = 5 {
	draw_debug_text (x+40, y-193, "Great Dragon");
	if intermission = 0 && !attacked {
		draw_sprite (sprite_get("dragon"), 0, x, y);
		}
	else if attacked{
		draw_sprite (sprite_get("dragon_attack"), 0, x, y);
	}
	else if intermission > 0{
		draw_sprite (sprite_get("dragon_defeated"), 0, x, y);
	}
}

//Sans
if boss = 6 {
    if intermission = 0 && boss_idle {
		draw_sprite (sprite_get("sans_idle"), get_gameplay_time()/8, x-25, y-300);
		}
	else if intermission > 0{
		draw_sprite (sprite_get("dragon_defeated"), 0, x, y);
	}
}

//Display the HP
if (boss != 0 && boss!= 6){
draw_text_color (x-165, y-115, "HP: ", 0, 0, 0, 0, 255);
draw_debug_text( x-135, y - 115, string(( max_hitpoints - get_player_damage(player))));
draw_debug_text( x-135, y - 100, string(intermission));
}

//Turn timer
//draw_debug_text( x-135, y - 130, string(turntimer));

//Message Boxes
if (boss != 6 && boss != 0){
draw_debug_text(x-175, y-285, messagebox1);
draw_debug_text(x-175, y-265, messagebox2);
draw_debug_text(x-175, y-245, messagebox3);
draw_debug_text(x-175, y-225, messagebox4);
}

if boss = 6{
draw_debug_text(x-80, y-100, messagebox1);
draw_debug_text(x-80, y-80, messagebox2);
draw_debug_text(x-80, y-60, messagebox3);
draw_debug_text(x, y-225, messagebox4);
}