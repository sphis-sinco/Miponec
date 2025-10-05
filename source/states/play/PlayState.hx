package states.play;

import states.play.components.Block;

class PlayState extends ModuleState
{
	public static var instance:PlayState;

	public var centerBlock_id:String;
	public var centerBlock:Block;

	override public function new()
	{
		super('PlayState');

		if (instance != null)
			instance = null;
		instance = this;
	}

	override function create()
	{
		super.create();

		centerBlock = new Block(centerBlock_id);
		add(centerBlock);

		centerBlock.screenCenter();
	}
}
