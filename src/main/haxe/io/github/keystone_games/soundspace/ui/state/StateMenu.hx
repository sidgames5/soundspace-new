package io.github.keystone_games.soundspace.ui.state;

import flixel.input.FlxAccelerometer;
import flixel.FlxSprite;
import lime.system.System;
import flixel.FlxG;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.FlxState;

using io.github.keystone_games.soundspace.ui.util.TextUtil;

class StateMenu extends FlxState
{
	@:noCompletion public static var header_title:FlxText;
	@:noCompletion public static var options_button:FlxText;
	@:noCompletion public static var exit_button:FlxText;
	@:noCompletion public static var play_button:FlxText;
	@:noCompletion public static var credits_button:FlxText;

	public override function create()
	{
		super.create();

		trace("Loading main menu");

		header_title = SimpleText.make("SoundSpace").setFormat("Monsterrat", 96, FlxColor.PURPLE, CENTER);
		header_title.screenCenter(X);
		add(header_title);

		options_button = SimpleText.make("Options").setFormat("Monsterrat", 48, FlxColor.PURPLE, CENTER);
		add(options_button);

		credits_button = SimpleText.make("Credits", 0, 1832).setFormat("Monsterrat", 48, FlxColor.PURPLE, CENTER);
		add(credits_button);

		exit_button = SimpleText.make("Exit", 3700).setFormat("Monsterrat", 48, FlxColor.PURPLE, CENTER);
		add(exit_button);

		play_button = SimpleText.make("Play!").setFormat(null, 192, FlxColor.PURPLE, CENTER);
		play_button.screenCenter(XY);
		add(play_button);
	}

	public override function update(dt:Float)
	{
		super.update(dt);

		if (FlxG.mouse.overlaps(options_button) && FlxG.mouse.justPressed)
			FlxG.switchState(new StateOptions());
		if (FlxG.mouse.overlaps(exit_button) && FlxG.mouse.justPressed)
			SoundSpace.exit(0);

		if (FlxG.mouse.overlaps(play_button) && FlxG.mouse.justPressed)
			FlxG.switchState(new StateLevels());

		if (FlxG.mouse.overlaps(credits_button) && FlxG.mouse.justPressed)
		{
			FlxG.openURL("https://github.com/Keystone-Games/SoundSpace#credits--shoutouts");
			trace("Credits button clicked; opening credits");
		}

		if (FlxG.keys.justPressed.ESCAPE)
			SoundSpace.exit(0);
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
		if (FlxG.keys.justPressed.F3)
			switch (Reference.DEBUG.overlay)
			{
				case true:
					Reference.DEBUG.overlay = false;
					trace("Hiding debug overlay");
				case false:
					Reference.DEBUG.overlay = true;
					trace("Showing debug overlay");
			}
		if (FlxG.keys.pressed.F3)
		{
			if (FlxG.keys.justPressed.P)
				switch (Reference.DEBUG.pOLF)
				{
					case true:
						Reference.DEBUG.pOLF = false;
					case false:
						Reference.DEBUG.pOLF = true;
				}
		}

		FlxG.sound.volume = Reference.VOLUME_MULTIPLIER;
	}
}
