sprite_change_offset("idle", 250, 425);
sprite_change_offset("hurt_box", 250, 425);
sprite_change_offset("collision_box", 192, 512);
sprite_change_offset("walk", 256, 510);
sprite_change_offset("walkturn", 256, 510);

sprite_change_offset("jumpstart", 240, 510);
sprite_change_offset("jump", 240, 510);
sprite_change_offset("land", 240, 510);

sprite_change_offset("jab", 250, 114);
sprite_change_offset("ftilt", 250, 114);
sprite_change_offset("nspecial", 250, 114);
sprite_change_offset("fspecial", 250, 114);
sprite_change_offset("uspecial", 250, 114);
sprite_change_offset("dtilt", 250, 114);
sprite_change_offset("dspecial", 250, 114);
sprite_change_offset("death", 250, 114);

sprite_change_offset("plat", 64, 94);

sprite_change_offset("ftilt_proj", 64, 64);
sprite_change_collision_mask("ftilt_proj", true, 1, 0, 0, 0, 0, 1);
sprite_change_offset("nspecial_hand1", 96, 46);
sprite_change_offset("nspecial_hand2", 96, 46);
sprite_change_offset("attack", 100, 100);
sprite_change_offset("bubble", 100, 100);
sprite_change_offset("cloud", 100, 100);
sprite_change_offset("cut", 100, 100);
sprite_change_offset("fire", 100, 100);
sprite_change_offset("explosion", 100, 100);
sprite_change_offset("wind", 100, 100);
sprite_change_offset("sword", 100, 100);

sprite_change_offset("text_box", 250, 425);
sprite_change_offset("slime", 250, 425);
sprite_change_offset("slime_attack", 250, 425);
sprite_change_offset("slime_defeated", 250, 425);
sprite_change_offset("puppet", 250, 425);
sprite_change_offset("puppet_attack", 250, 425);
sprite_change_offset("puppet_defeated", 250, 425);
sprite_change_offset("wizard", 250, 425);
sprite_change_offset("wizard_attack", 250, 425);
sprite_change_offset("wizard_defeated", 250, 425);
sprite_change_offset("knight", 250, 425);
sprite_change_offset("knight_attack", 250, 425);
sprite_change_offset("knight_defeated", 250, 425);
sprite_change_offset("dragon", 250, 425);
sprite_change_offset("dragon_attack", 250, 425);
sprite_change_offset("dragon_defeated", 250, 425);


set_victory_theme(sound_get("sfx_gkm_victory"));
set_victory_bg( sprite_get("vs_bg") );