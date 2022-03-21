package io.github.keystone_games.soundspace.ui.scene.play;

import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.FlxState;

class CLevel1 extends FlxState {
	public static var levelIndicator:FlxText;

	public static var time:Float = 0;
	public static var tempTime:Float = 0;
	public static var beats:Int = 0;
	public static var bpm:Float = 127;

	public override function create() {
		super.create();

		FlxG.updateFramerate = 1000;

		levelIndicator = new FlxText(0, 0, 0, "Level 1").setFormat("resources/assets/fonts/monsterrat.ttf", 32, FlxColor.BLUE, CENTER);
		levelIndicator.screenCenter(X);
		add(levelIndicator);
	}

	public override function update(dt:Float) {
		super.update(dt);

		time += dt;
		tempTime += dt;
		if (tempTime > (1000 / (bpm / 60))) {
			tempTime = 0;
			beats++;
		}
	}
}
