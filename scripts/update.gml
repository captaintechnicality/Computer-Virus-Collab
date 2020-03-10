spr_dir = 1
soft_armor = 999

//Bosses are immune to these.
marked = false;
wrapped = false;
bubbled = false;
bubbled_id = noone;
bubble_time = 0;
stuck = false;
grabbed = false;
swallowed = false;
burned = false;
burnt_id = noone;
burn_timer = 0;

//Other boss variables.
draw_indicator = false;
was_parried = false;

if (hitpause || hitstop > 0 || grabbed) {
    x = last_x;
    y = last_y;
    visible = true;
    old_hsp = last_hsp;
    old_vsp = last_vsp;
    hsp = last_hsp;
    vsp = last_vsp;
}
else {
    last_x = x;
    last_y = y;
    last_hsp = hsp;
    last_vsp = vsp;
    prev_damage = get_player_damage(player);
}

//Bosses cannot fall off of ledges.
var edge_cushion = 192; //Bosses also can't cheese people off the ledge
var center_stage_x = (room_width / 2);

if (x < center_stage_x - edge_cushion) {
    x = center_stage_x - edge_cushion;
}
if (x > center_stage_x + edge_cushion) {
    x = center_stage_x + edge_cushion;
}

//Initialization
if (!initialized) {
    mask_index = hurtbox_spr;
    set_player_stocks(player, 1);
    initialized = true;
}

//Boss Choice

if state = PS_SPAWN{
	instance_create(x-30*spr_dir, y-45, "obj_article1");
	//instance_create(x+140*spr_dir, y-85, "obj_article2");
}

if boss = 0{
	base_hitpoints = 225;
    max_hitpoints = 225;
	turntimer = 0;
	hurtbox_spr = sprite_get("hurt_sans");
}

//Gee I hope this works

if boss = 6 && alive = 0 {
    base_hitpoints = 225;
    max_hitpoints = 225;
    alive = 1;
}

if boss = 6{
	obj_article1.invincible = true;
	instance_destroy(obj_article1);
	instance_destroy(obj_article2);
	invincible = true;
	sprite_change_offset("undertale_idle", 200, 425);
	turntimer = 0;
	hurtbox_spr = sprite_get("hurt_sans");
}

//health change
if boss = 1 {
	instance_destroy(obj_article1);
	instance_destroy(obj_article2);
}

if boss = 1 && alive = 0 {
    base_hitpoints = 150;
    max_hitpoints = 150;
    alive = 1;
}

if boss = 2 && alive = 0 {
    base_hitpoints = 225;
    max_hitpoints = 225;
    alive = 1;
}

if boss = 3 && alive = 0 {
    base_hitpoints = 300;
    max_hitpoints = 300;
    alive = 1;
}

if boss = 4 && alive = 0 {
    base_hitpoints = 500;
    max_hitpoints = 500;
    alive = 1;
}

if boss = 5 && alive = 0 {
    base_hitpoints = 600;
    max_hitpoints = 600;
    alive = 1;
}

//health depleted
if get_player_damage(player) >= max_hitpoints {
	set_player_damage( player, max_hitpoints -1 );
	invincible = true;
    intermission = 1000;
	turnindicator = "Intermission";
}

//Turn timer
if turntimer <= 400 && !intermission >= 1{ //>
	invincible = false;
	turntimer += 1
	turnindicator = "Player's Turn";
}

if turntimer >= 400{
	invincible = true;
	turnindicator = "Boss's Turn";
}

//Intermission
if intermission > 0{
 intermission -= 1
 invincible = true;
}

if intermission == 1{ //>
	intermission = 0;
	alive = 0;
    //boss = random_func_2(2,5,true)+1;
	set_player_damage( player, 0 );
	invincible = false;
	messagebox1 = "";
	messagebox2 = "";
	messagebox3 = "";
	messagebox4 = "";
	turntimer = 0;
	noattack = true;
}

//For jank orders?
if boss = 5 && intermission == 2{
	set_player_stocks(player, 0);
}

if boss = 4 && intermission == 2{
	boss = 5;
}

if boss = 3 && intermission == 2{
	boss = 4;
}

if boss = 2 && intermission == 2{
	boss = 3;
}

if boss = 1 && intermission == 2{
	boss = 2;
}

//Message Boxes
if turntimer <= 500 && noattack && boss != 6{ //>
	messagebox1 = "It's your turn!";
}

if boss = 6{
	messagebox1 = "* You feel like you're gonna have a"
	messagebox2 = "   bad time."
}

//Boss Messages

//Slime
if boss = 1 && turntimer >= 400{
	messagebox1 = "It's the Slime's turn!";
}

//Puppet
if boss = 2 && turntimer >= 400{
	messagebox1 = "It's the Puppet's turn!";
}

//Wizard
if boss = 3 && turntimer >= 400{
	messagebox1 = "It's the Magician's turn!";
}

//Knight
if boss = 4 && turntimer >= 400{
	messagebox1 = "It's the Evil Knight's turn!";
}

//Dragon
if boss = 5 && turntimer >= 400{
	messagebox1 = "It's the Great Dragon's turn!";
}

//Boss defeated
//Slime
if boss = 1 && intermission <= 1000 && intermission > 850{ //>
	messagebox1 = "You beat the Slime!"
}
//Puppet
if boss = 2 && intermission <= 1000 && intermission > 850{ //>
	messagebox1 = "You beat the Puppet!"
}
//Wizard
if boss = 3 && intermission <= 1000 && intermission > 850{ //>
	messagebox1 = "You beat the Magician!"
}
//Knight
if boss = 4 && intermission <= 1000 && intermission > 850{ //>
	messagebox1 = "You beat the Evil Knight!"
}
//Dragon
if boss = 5 && intermission <= 1000 && intermission > 850{ //>
	messagebox1 = "The Dragon was vanquished!"
}

//Intermission memes
//Zetterburn
if character = 1{
	if intermission <= 850 && intermission > 700{
		messagebox1 = "Zetterburn gained 24 exp!";
	}
	else if intermission <= 700 && intermission > 550{
		messagebox1 = "Zetterburn thinks to himself that these points";
		messagebox2 = "mean nothing.";
	}
	else if intermission <= 550 && intermission > 400{
		messagebox1 = "!!! What's this?";
		messagebox2 = "";
	}
	else if intermission <= 400 && intermission > 250{
		messagebox1 = "Zetterburn leveled up!";
	}
	else if intermission <= 250 && intermission > 2{
		messagebox1 = "Zetterburn's mane went up by 4!";
		messagebox2 = "Zetterburn's flare went up by 6!";
		messagebox3 = "Zetterburn's attack went up by 12!";
		messagebox4 = "The next boss is approaching...";
	}
}

//Kirby
if character = 15{
	if intermission <= 850 && intermission > 700{
		messagebox1 = "You gained 20 EXP!";
		messagebox2 = "(Not that it matters)"
	}
	else if intermission <= 700 && intermission > 550{
		messagebox1 = "Your Eye Sparkle went up by 2!";
		messagebox2 = "";
	}
	else if intermission <= 550 && intermission > 400{
		messagebox1 = "Your Softness went up by 4!";
		messagebox2 = "";
	}
	else if intermission <= 400 && intermission > 250{
		messagebox1 = "Your Courage went up by 1!";
	}
	else if intermission <= 250 && intermission > 2{
		messagebox1 = "Your Maturity went up by 5!";
		messagebox2 = "Your Squishiness went up by 2!";
		messagebox3 = "Your Love went up by 7!";
		messagebox4 = "The next boss is approaching...";
	}
}

//Attacks
if turntimer >= 400 && !attacked{
	attacked = true
    set_attack(AT_NSPECIAL)
}

if attack == AT_NSPECIAL && window = 4 {
    turntimer = 0
    attacked = false
    messagebox1 = "It's your turn!";
}