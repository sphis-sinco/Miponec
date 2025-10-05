package states.play.objects;

import flixel.FlxSprite;
import flixel.util.FlxColor;
import utils.PathUtils;

class Block extends FlxSprite
{
	public var id:String;

	override public function new(id:String)
	{
		super();

		loadAsset();
	}

	public function loadAsset()
	{
		final graphicPath = PathUtils.getAssetPath(id, blocks, png);

		if (PathUtils.pathExists(graphicPath))
			loadGraphic(graphicPath); // scripts can make it animated if they want
		else
		{
			trace('Block path "${graphicPath}" doesn\'t exist');
			makeGraphic(64, 64, FlxColor.RED);
		}
	}
}
