package modding.events;

import modding.modules.ModuleEvent;

class CreateEvent extends ModuleEvent
{
	override function toString():String
		return 'CreateEvent(Module: $module)';
}
