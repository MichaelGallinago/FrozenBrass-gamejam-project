/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	image_xscale += 0.025;
	image_yscale += 0.025;
	
	with instance_create(x, y, GamejamAfterimage)
	{
		sprite_index = other.sprite_index;
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		image_blend  = other.image_blend;
	}

	if image_xscale > 0.75 instance_destroy();