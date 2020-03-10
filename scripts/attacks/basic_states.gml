//We can't use the state variable because it will allow forbidden inputs (shield, hard presses, etc.)
//This is a cheat to prevent that.


//Idling (airborne and grounded)
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("idle"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("hurt_box"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 60);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 12);

set_num_hitboxes(AT_EXTRA_1, 0);


//Walking
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("walk"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("hurt_box"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 5);

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("sfx_gkm_stomp"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_SFX, sound_get("sfx_gkm_stomp"));
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 30);

//This is supposed to be for turning. The sprite will change in attack_update.
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_SFX, sound_get("sfx_gkm_stomp"));
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_SFX_FRAME, 16);

set_num_hitboxes(AT_EXTRA_2, 2);

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, -24);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -175);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 228);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 350);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 30);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_EXTRA_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_EXTRA_2, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_X, -24);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_Y, -175);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_GROUP, -1);


//Death Sequence
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("death"));
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("empty_sprite"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_num_hitboxes(AT_EXTRA_3, 0);