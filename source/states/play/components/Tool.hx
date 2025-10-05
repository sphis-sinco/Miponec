package states.play.components;

import flixel.FlxSprite;
import flixel.util.FlxDestroyUtil.IFlxDestroyable;
import states.play.components.ToolTierManager;

class Tool implements IFlxDestroyable
{
	public var id:String;
	public var tier:ToolTier;

	public var duration:Float;

	public var sprite:FlxSprite;

	public function new(params:
		{
			id:String,
			tier:ToolTier,
			duration:Float,
			sprite:FlxSprite
		})
	{
		this.id = id;
		this.tier = tier;
		this.duration = duration;
		this.sprite = sprite.clone();
	}

	public function destroy()
	{
		this.sprite.destroy();
	}
}
