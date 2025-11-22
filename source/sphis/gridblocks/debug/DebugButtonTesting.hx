package sphis.gridblocks.debug;

import sphis.gridblocks.gui.GuiButton;
import flixel.FlxState;

class DebugButtonTesting extends FlxState
{
	override function create()
	{
		super.create();

		var button:GuiButton = new GuiButton(0, 0, 'Hello world');
        add(button);
	}
}
