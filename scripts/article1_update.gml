//

//I took this from Targma cause it seemed like a good base
with (asset_get("pHitBox")){
    if (place_meeting(x, y, other)
	&& player_id != other.player_id){
    // if the hitbox is a physical attack
        if (type == 1 ){
			with other{
				switchhit = true;
			}
		}
    }
}


if switchhit{
	set_player_damage( player, 0 );
	invincible = true;
	player_id.boss = 1;
	player.turntimer = 499;
	player.base_hitpoints = 75;
    player.max_hitpoints = 75;
	player.hurtbox_spr = sprite_get("hurt_box");
	instance_destroy()
}