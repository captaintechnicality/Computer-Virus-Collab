//article1_init

sprite_index = sprite_get("cv_fight");

state = 0;
state_timer = 0;
full_timer = 0;
stay_timer = 0;
can_be_grounded = true;
ignores_walls = true;
free = false;
uses_shader = true;
alive = true;

init = 0;

Switch = obj_article1;

offset = 24; //To align it right

switchhit = false;

destroy_timer = 0;