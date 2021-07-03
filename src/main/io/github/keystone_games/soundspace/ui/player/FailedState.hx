package io.github.keystone_games.soundspace.ui.player;

import flixel.FlxG;
import flixel.FlxSprite;
import haxe.io.Path;
import io.github.keystone_games.soundspace.ui.menu.MapListState;
import sfr.Cursor;
import sfr.Keybinds;

class FailedState extends PlayState {
	// Declare variables
	public static var CURSOR:FlxSprite;

	public var FAILED:FlxSprite;

	public var RETRY_BUTTON:FlxSprite;
	public var BACK_BUTTON:FlxSprite;

	public var TUTORIAL:Bool;
	public var SONG:DefaultMapList;

	override public function create() {
		super.create();

		// Define variables

		FAILED = new FlxSprite();
		// FAILED.loadGraphic(Assets.LEVEL_FAILED__png);
		FAILED.screenCenter();
		FAILED.y = 100;

		RETRY_BUTTON = new FlxSprite();
		// RETRY_BUTTON.loadGraphic(Assets.RETRY_BUTTON__png);
		RETRY_BUTTON.screenCenter();
		BACK_BUTTON = new FlxSprite();
		BACK_BUTTON.loadGraphic(Assets.BACK_BUTTON__png);
		BACK_BUTTON.screenCenter();
		BACK_BUTTON.y = 460;

		// Add objects (FlxBasic) to state

		add(FAILED);

		add(RETRY_BUTTON);
		add(BACK_BUTTON);

		CURSOR = Cursor.create();
		add(CURSOR);
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);

		new Keybinds();

		// Events
		if (FlxG.mouse.overlaps(RETRY_BUTTON) && FlxG.mouse.justPressed) {
			FlxG.switchState(new PlayState(SONG));
		} else if (FlxG.mouse.overlaps(BACK_BUTTON) && FlxG.mouse.justPressed) {
			FlxG.switchState(new MapListState());
		}

		Cursor.update(CURSOR);
	}

	override public function new(song:DefaultMapList, tutorial:Bool) {
		super(song);

		SONG = song;
	}
}
