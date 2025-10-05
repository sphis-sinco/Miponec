package states;

import flixel.FlxG;
import flixel.FlxState;
import states.play.PlayState;

class InitState extends FlxState
{
	override function create()
	{
		super.create();

		FlxG.switchState(() -> new PlayState());
	}
}
