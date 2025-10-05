package states.play.components;

import flixel.FlxSprite;
import flixel.util.FlxColor;
import states.play.components.ToolTierManager.ToolTier;
import utils.PathUtils;

class Block extends FlxSprite
{
	public var id:String;

	public var duration:Int;
	public var allowedToolTiers:Array<ToolTier>;

	override public function new(id:String)
	{
		super();

		this.id = id;

		initalizeValues();
		loadAsset();
	}

	public function initalizeValues()
	{
		duration = 150;
		allowedToolTiers = ToolTierManager.getTiersFromStartTier(ToolTierManager.WOOD);
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
