set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 1);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("hurt_box"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 300);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_JAB, 1);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 180);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 173);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 101);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 65);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, 96);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 3);