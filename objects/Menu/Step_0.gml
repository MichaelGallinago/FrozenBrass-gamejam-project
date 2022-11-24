/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	RoomTimer++;
	var IsFadeNotActive = !fade_check(StateActive);
	Renderer.UpdateAnimations = IsFadeNotActive;
	
	if IsFadeNotActive && !RoomEnd && (Input.ABC || Input.Mode || Input.Start)
	{
		RoomEnd = true;
		fade_perform(ModeInto, BlendBlack, 0.5);
	}
	
	if RoomEnd && fade_check(StateMax)
	{
		room_goto(Stage_Gamejam);
	}