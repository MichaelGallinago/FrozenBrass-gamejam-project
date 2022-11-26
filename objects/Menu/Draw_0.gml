/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	var CentreX = global.Width / 2;
	var CentreY = global.Height / 2;
	
	draw_sprite(tex_menu_logo, 0, CentreX, CentreY - 32);
	if (RoomTimer div 30 % 2)
	{
		draw_set_colour(OrangeColour);
		draw_text(CentreX, CentreY, "START GAME");
		draw_text(CentreX, CentreY + 16, "TRAINING");
		draw_text(CentreX, CentreY + 32, "SOUND VOLUME:");
		draw_text(CentreX, CentreY + 48, "SOUND VOLUME:");
		draw_text(CentreX, CentreY + 64, "EXIT");
		draw_set_colour(c_white);
	}