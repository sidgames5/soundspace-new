package io.github.keystone_games.soundspace.ui.state;

import lime.system.System;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.FlxState;

using io.github.keystone_games.soundspace.ui.util.TextUtil;

class StateOptions extends FlxState
{
	@:noCompletion public static var header_title:FlxText;
	@:noCompletion public static var back_button:FlxText;

	@:noCompletion public static var volume_indicator:FlxText;
	@:noCompletion public static var volume_up:FlxText;
	@:noCompletion public static var volume_down:FlxText;

	public override function create()
	{
		super.create();

		trace("Loading options state");

		header_title = SimpleText.make("Options").setFormat("Monsterrat", 96, FlxColor.PURPLE, CENTER);
		header_title.screenCenter(X);
		add(header_title);

		back_button = SimpleText.make("Back").setFormat("Monsterrat", 48, FlxColor.PURPLE, LEFT);
		add(back_button);

		volume_indicator = SimpleText.make("Volume: " + Reference.VOLUME_MULTIPLIER).setFormat("Monsterrat", 64, FlxColor.WHITE, CENTER);
		volume_indicator.screenCenter(XY);
		volume_up = SimpleText.make("+").setFormat("Monsterrat", 64);
		volume_up.screenCenter(XY);
		volume_up.x += 384;
		volume_down = SimpleText.make("-").setFormat("Monsterrat", 64);
		volume_down.screenCenter(XY);
		volume_down.x -= 384;
		add(volume_indicator);
		add(volume_up);
		add(volume_down);
	}

	public override function update(dt:Float)
	{
		super.update(dt);

		if (FlxG.mouse.overlaps(back_button) && FlxG.mouse.justPressed)
			FlxG.switchState(new StateMenu());

		if (Reference.VOLUME_MULTIPLIER < 1.00 && FlxG.mouse.overlaps(volume_up) && FlxG.mouse.justPressed)
		{
			Reference.VOLUME_MULTIPLIER += 0.01;
			trace("Volume increased by 1%");
			trace("current volume " + Reference.VOLUME_MULTIPLIER);
		}
		if (Reference.VOLUME_MULTIPLIER > 0.00 && FlxG.mouse.overlaps(volume_down) && FlxG.mouse.justPressed)
		{
			Reference.VOLUME_MULTIPLIER -= 0.01;
			trace("Volume decreased by 1");
			trace("current volume " + Reference.VOLUME_MULTIPLIER);
		}
		volume_indicator.text = "Volume: " + (Math.round(Reference.VOLUME_MULTIPLIER * 100)) + "%";

		if (FlxG.keys.justPressed.ESCAPE)
			System.exit(0);
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
