/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	if !(--Timer)
	{
		Timer = 500;
		image_xscale *= -1;
	}
	
	if Timer > 300
	{
		animation_play(spr_obj_manul_walk, 24, 0);
		PosX -= 0.5 * sign(image_xscale);
	}
	else if Timer == 300
	{
		animation_set(spr_obj_manul_stand, 0);
	}
	x = floor(PosX);