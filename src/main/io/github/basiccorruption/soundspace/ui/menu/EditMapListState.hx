package io.github.basiccorruption.soundspace.ui.menu;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import io.github.basiccorruption.soundspace.utils.Cursor;
import io.github.basiccorruption.soundspace.utils.Keybinds;
import io.github.basiccorruption.soundspace.utils.WindowUtils;

class EditMapListState extends FlxState {
	// Declare variables
	public static var CURSOR:FlxSprite;

	public var BACKGROUND:FlxSprite;
	public var TempBack:FlxSprite;
	public var BACKBUTTON:FlxSprite;
	public var TITLE:FlxText;
	public var DESCRIPTION:FlxText;
	public var HINT:FlxText;

	// public var TempBack:FlxSprite;

	override public function create() {
		super.create();

		// Presence.changePresence("In the map list", null);

		// Define variables

		TempBack = new FlxSprite();
		TempBack.loadGraphic(Assets.TEMPORARY_BACKGROUND__png);
		TempBack.screenCenter();
		add(TempBack);

		TITLE = new FlxText(0, 0, 0, "SoundSpace", 32, true);
		TITLE.setFormat(null, 32, FlxColor.PURPLE, FlxTextAlign.CENTER);
		TITLE.screenCenter();
		TITLE.y = 0;
		DESCRIPTION = new FlxText(0, 0, 0, "Your beatmaps", 16, true);
		DESCRIPTION.setFormat(null, 16, FlxColor.MAGENTA, FlxTextAlign.CENTER);
		DESCRIPTION.screenCenter();
		DESCRIPTION.y = 32;
		HINT = new FlxText(0, 0, 0, "To create a beatmap, drag an MP3 file to start", 16, true);
		HINT.setFormat(null, 16, FlxColor.MAGENTA, FlxTextAlign.CENTER);
		HINT.screenCenter();
		HINT.y = 48;

		BACKBUTTON = new FlxSprite();
		BACKBUTTON.loadGraphic(Assets.BACK_BUTTON__png);
		BACKBUTTON.x = 973;
		BACKBUTTON.y = 595;
		add(BACKBUTTON);

		// Add objects (FlxBasic) to state

		// add(BACKGROUND);

		CURSOR = Cursor.create();
		add(CURSOR);

		add(TITLE);
		add(DESCRIPTION);
		add(HINT);

		trace("Create EditMapListState");
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);

		new Keybinds();

		Cursor.update(CURSOR);

		// Events
		if (FlxG.keys.justPressed.ESCAPE) {
			FlxG.switchState(new MenuState());
			FlxG.sound.playMusic(Assets.Button_Click__wav);
		}

		if (FlxG.mouse.overlaps(BACKBUTTON)) {
			BACKBUTTON.loadGraphic(Assets.BACK_BUTTON_HOVER__png);
		} else {
			BACKBUTTON.loadGraphic(Assets.BACK_BUTTON__png);
		}

		if (FlxG.keys.justPressed.ESCAPE) {
			FlxG.switchState(new MenuState());
			FlxG.sound.playMusic(Assets.Button_Click__wav);
		}
		if (FlxG.mouse.overlaps(BACKBUTTON) && FlxG.mouse.justPressed) {
			FlxG.switchState(new MenuState());
			FlxG.sound.playMusic(Assets.Button_Click__wav);
		}
	}
}
