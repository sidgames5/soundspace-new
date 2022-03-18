package io.github.keystone_games.soundspace.ui.scene;

import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.FlxState;
import io.github.keystone_games.soundspace.util.map.MapManager;

class StateTempPlay extends FlxState
{
	public static var levelIndicator:FlxText;

	public static var time:Float = 0;
	public static var tempTime:Float = 0;
	public static var beats:Int = 0;
	public static var bpm:Float = 120;

	public override function create()
	{
		super.create();

		FlxG.drawFramerate = 90;
		FlxG.updateFramerate = 90;
		FlxG.debugger.visible = false;

		levelIndicator = new FlxText(0, 0, 0, "Level X").setFormat("resources/assets/fonts/monsterrat.ttf", 32, FlxColor.BLUE, CENTER);
		levelIndicator.screenCenter(X);
		add(levelIndicator);

		var m = MapManager.temp_getMD();
		switch (m.lm)
		{
			case 0:
				bpm = 127;
				m1();
		}
	}

	public static function m1()
	{
		/*
			uF = round ((bpm / 60) * 64)
		 */
		FlxG.updateFramerate = 1000;
	}

	public override function update(dt:Float)
	{
		super.update(dt);

		time += dt;
		tempTime += dt;
		if (tempTime > (1000 / (bpm / 60)))
		{
			tempTime = 0;
			beats++;
		}
	}
}
