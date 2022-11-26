/// @description Add description here
function PlayerSpawnLazer()
{
	if Death return;
	if !(--LazerReload)
	{
		if (Input.Mode)
		{
			Camera.ShakeTime = 5;
			var AirAnge = 0;
			if Animation == AnimJump || Animation == AnimSpring switch image_index
			{
				case 0:
					AirAnge = Facing * 30;
				break;
				case 1:
				case 2:
					AirAnge = -Facing * 30;
				break;
			}
			var Dir = (Facing ? 0 : 180) + VisualAngle + AirAnge;  
			with instance_create(PosX + Facing * 5, PosY - 12, LazerBlast)
			{
				depth = other.depth - 1;
				image_angle = other.VisualAngle + AirAnge;
				image_xscale = other.Facing;
				direction = Dir;
			}
			with instance_create(PosX + Facing * 9, PosY - 12, Lazer)
			{
				depth = other.depth - 1;
				image_angle = other.VisualAngle + AirAnge;
				image_xscale = other.Facing;
				direction = Dir;
			}
			audio_sfx_play(sfxLazer, false);
			LazerReload = 30;
		}
	}
}