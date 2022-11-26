/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	var CentreX = global.Width / 2;
	var CentreY = global.Height / 2;
	switch Step
	{
		case 0:
			if Input.LeftPress || Input.RightPress Step++;
		break;
		case 1:
			if Input.ABCPress 
			{
				Step++;
				instance_create(32, global.Height - 48, TrainingDart);
				instance_create(CentreX, CentreY + 24, TrainingDart);
				instance_create(CentreX - 124, CentreY - 32, TrainingDart);
				instance_create(CentreX + 124, CentreY - 32, TrainingDart);
			}
		break;
		case 2:
			if !instance_exists(TrainingDart)
			{
				instance_create(CentreX, global.Height - 48, Ring);
				instance_create(CentreX - 16, global.Height - 48, Ring);
				instance_create(CentreX + 16, global.Height - 48, Ring);
				instance_create(CentreX - 32, global.Height - 48, Ring);
				instance_create(CentreX + 32, global.Height - 48, Ring);
				Step++;
			}
		break;
		case 3:
			if !fade_check(StateActive) && !instance_exists(Ring)
			{
				fade_perform(ModeInto, BlendBlack, 0.5);
			}
		break;
	}
	
	if Step == 3 && fade_check(StateMax) room_goto(Screen_Menu);
