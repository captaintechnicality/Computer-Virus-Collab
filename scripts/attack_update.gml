
#define attack_single
if (window >= get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    set_attack(AT_EXTRA_1);
}  

#define target_player_rand
var player_obj = asset_get("oPlayer");
var min_dist = 1000;
var pick = 0;
var result = noone;
for (var i = 0; i < instance_number(player_obj); i++) {
    var found = instance_find(player_obj, i);
    if (found.id != id) {
        pick = random_func_2(0, 999, true)
        if (pick < min_dist) {
            result = found;
            min_dist = pick;
        }
    }
}
return result;
