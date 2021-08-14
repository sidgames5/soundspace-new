package io.github.keystone_games.soundspace.ui.state;

import flixel.FlxG;
import flixel.FlxState;
import flixel.util.FlxColor;
import flixel.text.FlxText;

using io.github.keystone_games.soundspace.ui.util.TextUtil;

class StateLevels extends FlxState
{
	@:noCompletion public static var header_title:FlxText;
	@:noCompletion public static var back_button:FlxText;

	public override function create()
	{
		super.create();

		header_title = SimpleText.make("Levels").setFormat("Monsterrat", 96, FlxColor.PURPLE, CENTER);
		header_title.screenCenter(X);
		add(header_title);

		back_button = SimpleText.make("Back").setFormat("Monsterrat", 48, FlxColor.PURPLE, LEFT);
		add(back_button);
	}

	public override function update(dt:Float)
	{
		super.update(dt);

		if (FlxG.mouse.overlaps(back_button) && FlxG.mouse.justPressed)
			FlxG.switchState(new StateMenu());

		if (FlxG.keys.justPressed.F11)
			switch (FlxG.fullscreen)
			{
				case true:
					FlxG.fullscreen = false;
					trace("Exiting fullscreen mode");
				case false:
					FlxG.fullscreen = true;
					trace("Entering fullscreen mode");
			}

		FlxG.sound.volume = Reference.VOLUME_MULTIPLIER;
	}
}
