hurtbox_spr = sprite_get("hurt_box");
crouchbox_spr = sprite_get("hurt_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 64;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = 0;
dash_anim_speed = 0;
pratfall_anim_speed = .25;

walk_speed = 0;
walk_accel = walk_speed;
walk_turn_time = 0;
initial_dash_time = 0;
initial_dash_speed = 0;
dash_speed = walk_speed;
dash_turn_time = walk_turn_time;
dash_turn_accel = walk_accel;
dash_stop_time = 0;
dash_stop_percent = 0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 100;
moonwalk_accel = walk_accel;

jump_start_time = 0;
jump_speed = 0;
short_hop_speed = jump_speed;
djump_speed = jump_speed;
leave_ground_max = walk_speed; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = walk_speed; //the maximum hsp you can have when jumping from the ground
air_max_speed = 0; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = walk_speed; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0;
prat_fall_accel = 0; //multiplier of air_accel while in pratfall
air_friction = 100;
max_djumps = 0;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = walk_speed;
walljump_vsp = jump_speed;
walljump_time = 32;
max_fall = 0; //maximum fall speed without fastfalling
fast_fall = 0; //fast fall speed
gravity_speed = 0;
hitstun_grav = gravity_speed;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

// >

land_time = 20; //normal landing frames
prat_land_time = land_time;
wave_land_time = land_time;
wave_land_adj = 1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = ground_friction; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 1;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 1;
techroll_recovery_frames = 1;
techroll_speed = 0;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 1;
air_dodge_speed = 0;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 1;
roll_back_recovery_frames = 1;
roll_forward_max = 0; //roll speed
roll_backward_max = 0;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

base_hitpoints = 0;
max_hitpoints = 0;
hitflash = true;
hitflash_timer = 0;
death_timer = 0;
alive = 0;
intermission = 0;
intermissionmax = 1000;
intermission = false;
turntimer = 0;
turnlimit = 400;
turnindicator = "Player Turn";
messagebox1 = "";
messagebox2 = "";
messagebox3 = "";
messagebox4 = "";
noattack = true;
attacked = false;
character = 0;
boss_idle = true;
switchhit = false;

//BOSS VARIABLES
atk_timer = 0
turn = 0
difficulty = 5;
depth_prev = depth;
boss = 1;
//boss = random_func_2(2,5,true)+1;
boss_level = 5;
atk1 = AT_NSPECIAL
atk2 = AT_DSPECIAL
atk3 = AT_FSPECIAL
atk4 = AT_USPECIAL

//Don't edit these unless you know what you're doing.
initialized = false;
prev_window = 0;
prev_window_timer = 0;
prev_spr_dir = 1;
prev_sprite_index = sprite_index;
prev_image_index = image_index;
prev_attack = AT_EXTRA_1;
prev_damage = 0;
last_x = x;
last_y = y;
last_hsp = 0;
last_vsp = 0;
difficulty_multiplier = 1;
