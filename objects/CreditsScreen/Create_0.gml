/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	RoomTimer = 0;
	draw_set_font(Font.FontDefault);
	draw_set_halign(fa_center);
	audio_bgm_play(AudioPrimary, MenuTheme);
	fade_perform(ModeFrom, BlendBlack, 0.25);
	
	Text = [
		"TEAM LEADER - MICHAEL GALLINAGO",
		"MAIN PROGRAMMER - MICHAEL GALLINAGO",
		"SCREENWRITER - MICHAEL GALLINAGO",
		"PAINTER - MICHAEL GALLINAGO",
		"COOL GUY - MICHAEL GALLINAGO",
		"",
		"*ORBINAUT FRAMEWORK*",
		"TRIANGLY AND MICHAEL GALLINAGO",
		"",
		"*SPRITES*",
		"CHARACTER: HAMSTER MAN",
		"MANUL: HAMSTER MAN",
		"BOSS: HAMSTER MAN",
		"STAGE: HAMSTER MAN AND LAPPER",
		"SONIC TEAM AND SEGA",
		"",
		"*SOUNDS*",
		"ZVUKIPRO.COM",
		"SONIC TEAM AND SEGA",
		"",
		"***MUSIC***",
		"*SONIC ATS OST*",
		"MENU THEME - PARHELION SECRET BY: MR LANGE",
		"STAGE THEME - SCORCHING SUBZERO BY: FALK, DJ MAX-E",
		"BOSS THEME - THE RECKLESS ONE BY: DJ MAX-E",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"YOUR SCORE: " + string(global.Score),
		"THANKS FOR PLAYING!"
	]
	
	global.Score = 0;