/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	RoomTimer = 0;
	IsExitDestroyed = false;
	Selected = 0;
	RoomEnd = false;
	OrangeColour = make_colour_rgb(168, 76, 20);
	audio_bgm_play(AudioPrimary, MenuTheme);
	draw_set_halign(fa_center);
	draw_set_font(Font.FontDefault);
	fade_perform(ModeFrom, BlendWhite, 1);