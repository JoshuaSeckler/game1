//move around

if (keyboard_check(ord("D")))
{
	x = x + 10; 
	sprite_index = spr_player_right_move;
}
if (keyboard_check(ord("A")))
{
	x = x - 10;
	sprite_index = spr_player_left_move;
}
if (keyboard_check(ord("W")))
{
	y = y - 10;
	sprite_index = spr_player_up_move;
}
if (keyboard_check(ord("S")))
{
	y = y + 10;
	sprite_index = spr_player_down_move;
}
//else sprite_index = spr_player_up;

//blink spell
if (keyboard_check(vk_lshift)) && point_distance(x,y,mouse_x,mouse_y) > 200 && cooldown_blink < 0
{
	move_towards_point(mouse_x,mouse_y,50);
	cooldown_blink = 120;
}
else speed = 0;

//aim character
//image_angle = point_direction(x,y,mouse_x,mouse_y);

//shoot
if (mouse_check_button(mb_left) && cooldown < 0)
{
	instance_create_layer(x,y,"bullets_layer",obj_bullet);
	cooldown = 5;
}

//decrement cds
cooldown-=1;
cooldown_blink--;