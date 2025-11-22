package sphis.gridblocks;

import flixel.FlxG;
import flixel.FlxState;
import sphis.gridblocks.debug.DebugButtonTesting;

class Gridblocks extends FlxState
{
	override public function create()
	{
		super.create();
		FlxG.switchState(() -> new DebugButtonTesting());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
