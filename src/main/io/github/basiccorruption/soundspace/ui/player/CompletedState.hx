package io.github.basiccorruption.soundspace.ui.player;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import haxe.io.Path;
import sfr.ChartUtils;
import sfr.Cursor;
import sfr.Keybinds;

class CompletedState extends PlayState {
	// Declare variables
	public static var CURSOR:FlxSprite;
	public static var NAME:String;
	public static var ACCURACY:Float;
	public static var MAX_COMBO:Int;
	public static var MISSES:Int;
	public static var DIFFICULTY:String;

	public var TITLE:FlxText;
	public var RANKING:FlxText;
	public var ACCURACY_TEXT:FlxText;
	public var MAX_COMBO_TEXT:FlxText;

	override public function create() {
		super.create();

		FlxG.mouse.visible = true;

		FlxG.sound.pause();

		// Define variables

		TITLE = new FlxText(0, 0, 0, "You have completed " + NAME + " on difficulty " + DIFFICULTY, 64, true);
		TITLE.setFormat(null, 16, FlxColor.PURPLE, FlxTextAlign.CENTER);
		TITLE.screenCenter();
		TITLE.y = 0;
		RANKING = new FlxText(0, 0, 0, ChartUtils.calculateRank(ACCURACY), 64, true);
		RANKING.setFormat(null, 64, FlxColor.PURPLE, FlxTextAlign.CENTER);
		RANKING.screenCenter();
		ACCURACY_TEXT = new FlxText(0, 0, 0, "Accuracy: " + ACCURACY, 64, true);
		ACCURACY_TEXT.setFormat(null, 16, FlxColor.PURPLE, FlxTextAlign.LEFT);
		ACCURACY_TEXT.screenCenter();
		ACCURACY_TEXT.x = 0;
		MAX_COMBO_TEXT = new FlxText(0, 0, 0, "Max Combo: " + MAX_COMBO, 64, true);
		MAX_COMBO_TEXT.setFormat(null, 15, FlxColor.PURPLE, FlxTextAlign.RIGHT);
		MAX_COMBO_TEXT.screenCenter();
		MAX_COMBO_TEXT.x = 1280;

		// Add objects (FlxBasic) to state

		add(TITLE);
		add(RANKING);
		add(ACCURACY_TEXT);
		add(MAX_COMBO_TEXT);

		CURSOR = Cursor.create();
		add(CURSOR);
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);

		Cursor.update(CURSOR);
	}

	override public function new(name:String, accuracy:Float, maxcombo:Int, misses:Int, difficulty:String) {
		super(null);

		new Keybinds();

		NAME = name;
		ACCURACY = accuracy;
		MAX_COMBO = maxcombo;
		MISSES = misses;
		DIFFICULTY = difficulty;
	}
}
