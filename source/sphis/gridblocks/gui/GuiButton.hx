package sphis.gridblocks.gui;

import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.FlxSprite;
import flixel.group.FlxGroup.FlxTypedGroup;

class GuiButton extends FlxTypedGroup<FlxSprite>
{
	public var button:FlxSprite;
	public var text_field:FlxText;

	public var on_click:Void->Void;

	override public function new(x:Float, y:Float, text:String, ?size:Int = 8)
	{
		super();

		button = new FlxSprite(x, y).loadGraphic('assets/gui/button-atlas.png', true, 64, 16);
		button.animation.add('idle', [0]);
		button.animation.add('hover', [1]);
		button.scale.set(2, 2);
		add(button);

		text_field = new FlxText(button.getGraphicMidpoint().x, button.getGraphicMidpoint().y, button.frameWidth, text, size);
		text_field.setFormat(null, size, FlxColor.WHITE, CENTER, SHADOW_XY(2, 2), FlxColor.BLACK);
		add(text_field);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.mouse.overlaps(button))
		{
			button.animation.play('hover');

			if (FlxG.mouse.justReleased && on_click != null)
				on_click();
		}
		else
		{
			button.animation.play('idle');
		}

		text_field.setPosition(button.x, button.y);
		text_field.fieldWidth = button.frameWidth;
	}
}
