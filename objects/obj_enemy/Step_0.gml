//move towards player
if(instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y, spd);
}

//direction
image_angle = direction;

if (hp) <= 0
{
	with (obj_score) thescore+=5;
	audio_sound_pitch(snd_enemy_death,random_range(.6,1.4));
	audio_play_sound(snd_enemy_death,0,0);
	instance_destroy();
}