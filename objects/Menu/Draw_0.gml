/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	var CentreX = global.Width / 2;
	var CentreY = global.Height / 2;
	var TextX = CentreX - 4;
	var TextY = CentreY - 4;
	
	draw_sprite(tex_menu_logo, 0, CentreX, CentreY - 32);
	draw_sprite(tex_menu_cursor, 0, CentreX, CentreY + Selected * 16 - 1);
	draw_set_colour(OrangeColour);
	draw_text(TextX, TextY, "START GAME");
	draw_text(TextX, TextY + 16, "TRAINING");
	draw_text(TextX, TextY + 32, "SOUND VOLUME: " + string(global.SoundVolume * 100));
	draw_text(TextX, TextY + 48, "MUSIC VOLUME: " + string(global.MusicVolume * 100));
	draw_set_colour(c_white);