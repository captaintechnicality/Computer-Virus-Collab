orig_knock = 0;
should_make_shockwave = false;
old_hsp = last_hsp;
old_vsp = last_vsp;
hsp = last_hsp;
vsp = last_vsp;

//A hacky way to calculate resistance, don'tcha think?
var player_num = 0;

with (asset_get("oPlayer")) {
    if (id != other.id && get_player_stocks(player) > 0)
        player_num ++;
}

var damage_resist = 1 + (0.6 * (player_num - 1));
if (player_num <= 1)
    damage_resist = 1;
set_player_damage(player, prev_damage + round(enemy_hitboxID.damage / damage_resist)); //>

hitflash_timer = 6;

//Attack messages

//Zettaburn
if (hit_player_obj.url == CH_ZETTERBURN) {
    messagebox1 = "Zetterburn attacks!";
	noattack = false;
	character = 1;
}

//Clairen
if (hit_player_obj.url == CH_CLAIREN) {
    messagebox1 = "Clairen attacks!";
	noattack = false;
	character = 2;
}

//Forsburn
if (hit_player_obj.url == CH_FORSBURN) {
    messagebox1 = "Forsburn attacks!";
	noattack = false;
	character = 3;
}

//Sylvanos
if (hit_player_obj.url == CH_SYLVANOS) {
    messagebox1 = "Sylvanos attacks!";
	noattack = false;
	character = 4;
}

//Maypul
if (hit_player_obj.url == CH_MAYPUL) {
    messagebox1 = "Maypul attacks!";
	noattack = false;
	character = 5;
}

//Kragg
if (hit_player_obj.url == CH_KRAGG) {
    messagebox1 = "Kragg attacks!";
	noattack = false;
	character = 6;
}

//Ori
if (hit_player_obj.url == CH_ORI) {
    messagebox1 = "Ori & Sein attack!";
	noattack = false;
	character = 7;
}

//SK
if (hit_player_obj.url == CH_SHOVEL_KNIGHT) {
    messagebox1 = "Shovel Knight attacks!";
	noattack = false;
	character = 8;
}

//Wrastor
if (hit_player_obj.url == CH_WRASTOR) {
    messagebox1 = "Wrastor attacks!";
	noattack = false;
	character = 9;
}

//Absa
if (hit_player_obj.url == CH_ABSA) {
    messagebox1 = "Absa attacks!";
	noattack = false;
	character = 10;
}

//Elliana
if (hit_player_obj.url == CH_ELLIANA) {
    messagebox1 = "Elliana attacks!";
	noattack = false;
	character = 11;
}

//Orcane
if (hit_player_obj.url == CH_ORCANE) {
    messagebox1 = "Orcane attacks!";
	noattack = false;
	character = 12;
}

//Etalus
if (hit_player_obj.url == CH_ETALUS) {
    messagebox1 = "Etalus attacks!";
	noattack = false;
	character = 13;
}

//Ranno
if (hit_player_obj.url == CH_RANNO) {
    messagebox1 = "Ranno attacks!";
	noattack = false;
	character = 14;
}

//Kirby !?
if (hit_player_obj.url == 1868756032) {
    messagebox1 = "Kirby attacks!";
	noattack = false;
	character = 15;
}