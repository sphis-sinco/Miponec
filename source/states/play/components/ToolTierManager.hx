package states.play.components;

class ToolTier
{
	public var id:String;

	public function new(id:String)
	{
		this.id = id;
	}
}

class ToolTierManager
{
	public static var WOOD:ToolTier = new ToolTier('wood');
	public static var STONE:ToolTier = new ToolTier('stone');
	public static var IRON:ToolTier = new ToolTier('iron');
	public static var DIAMOND:ToolTier = new ToolTier('diamond');

	public static var ALL:Array<ToolTier> = [WOOD, STONE, IRON, DIAMOND];

	public static function getTiersFromStartTierString(tier:ToolTier):Array<String>
	{
		var RETURNING_TIERS:Array<String> = [];

		for (listtier in getTiersFromStartTier(tier))
			RETURNING_TIERS.push(listtier.id);

		return RETURNING_TIERS;
	}

	public static function getTiersFromStartTier(tier:ToolTier):Array<ToolTier>
	{
		var RETURNING_TIERS:Array<ToolTier> = [];

		var indexOfTier = ALL.indexOf(tier);
		var index = 0;
		for (tier in ALL)
		{
			if (index >= indexOfTier)
				RETURNING_TIERS.push(tier);

			index++;
		}

		return RETURNING_TIERS;
	}

	public static function getTiersBeforeTierString(tier:ToolTier):Array<String>
	{
		var RETURNING_TIERS:Array<String> = [];

		for (listtier in getTiersBeforeTier(tier))
			RETURNING_TIERS.push(listtier.id);

		return RETURNING_TIERS;
	}

	public static function getTiersBeforeTier(tier:ToolTier):Array<ToolTier>
	{
		var RETURNING_TIERS:Array<ToolTier> = [];

		var indexOfTier = ALL.indexOf(tier);
		var index = 0;
		for (tier in ALL)
		{
			if (index < indexOfTier)
				RETURNING_TIERS.push(tier);

			index++;
		}

		return RETURNING_TIERS;
	}
}
