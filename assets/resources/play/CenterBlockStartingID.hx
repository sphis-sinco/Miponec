import modding.events.CreateEvent;
import modding.modules.Module;
import states.play.PlayState;

class CenterBlockStartingID extends Module
{
	override public function new()
	{
		super('center-block-starting-id');
	}

	override function onCreate(event:CreateEvent)
	{
		super.onCreate(event);

		if (event.state == 'PlayState')
			PlayState.instance.centerBlock_id = 'wood';
	}
}
