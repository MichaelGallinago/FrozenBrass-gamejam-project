/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	RoomTimer++;
	if RoomTimer == 1800
	{
		fade_perform(ModeInto, BlendWhite, 0.5);
	}
	else if RoomTimer > 1800 && fade_check(StateMax)
	{
		room_goto(Screen_Menu);
	}