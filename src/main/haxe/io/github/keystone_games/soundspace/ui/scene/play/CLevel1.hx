package io.github.keystone_games.soundspace.ui.scene.play;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.FlxState;

class CLevel1 extends FlxState {
	public static var levelIndicator:FlxText;

	public static var time:Float = 0;
	public static var tempTime:Float = 0;
	public static var beats:Int = 0;
	public static final bpm:Float = 127;

	public static var lane1:FlxSprite;
	public static var lane2:FlxSprite;
	public static var lane3:FlxSprite;
	public static var lane4:FlxSprite;

	public static var note1:FlxSprite;
	public static var note2:FlxSprite;
	public static var note3:FlxSprite;
	public static var note4:FlxSprite;
	public static var note5:FlxSprite;
	public static var note6:FlxSprite;
	public static var note7:FlxSprite;
	public static var note8:FlxSprite;
	public static var note9:FlxSprite;
	public static var note10:FlxSprite;

	public override function create() {
		super.create();

		FlxG.updateFramerate = 1000;

		levelIndicator = new FlxText(0, 0, 0, "Level 1").setFormat("resources/assets/fonts/monsterrat.ttf", 32, FlxColor.BLUE, CENTER);
		levelIndicator.screenCenter(X);
		add(levelIndicator);

		lane1 = new FlxSprite();
		lane1.makeGraphic(Std.int(FlxG.width / 8), Std.int((FlxG.height / 16) * 12), FlxColor.fromString("#ff3e3e3e"));
		lane1.screenCenter(X);
		lane1.y = Std.int(FlxG.height / 16);
		lane1.x -= Std.int(lane1.width / 2) * 2;
		add(lane1);
		lane2 = new FlxSprite();
		lane2.makeGraphic(Std.int(FlxG.width / 8), Std.int((FlxG.height / 16) * 12), FlxColor.fromString("#ff3e3e3e"));
		lane2.screenCenter(X);
		lane2.y = Std.int(FlxG.height / 16);
		lane2.x -= Std.int(lane2.width / 2) * 1;
		add(lane2);
		lane3 = new FlxSprite();
		lane3.makeGraphic(Std.int(FlxG.width / 8), Std.int((FlxG.height / 16) * 12), FlxColor.fromString("#ff3e3e3e"));
		lane3.screenCenter(X);
		lane3.y = Std.int(FlxG.height / 16);
		lane3.x += Std.int(lane3.width / 2) * 1;
		add(lane3);
		lane4 = new FlxSprite();
		lane4.makeGraphic(Std.int(FlxG.width / 8), Std.int((FlxG.height / 16) * 12), FlxColor.fromString("#ff3e3e3e"));
		lane4.screenCenter(X);
		lane4.y = Std.int(FlxG.height / 16);
		lane4.x += Std.int(lane4.width / 2) * 2;
		add(lane4);

		note1 = new FlxSprite(0, 0, Assets.ClassicNote__png);
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
