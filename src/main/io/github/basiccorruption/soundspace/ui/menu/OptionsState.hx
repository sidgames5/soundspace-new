package io.github.basiccorruption.soundspace.ui.menu;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import io.github.basiccorruption.soundspace.ui.menu.MenuState;
import sfr.Configuration;
import sfr.Cursor;
import sfr.Keybinds;

class OptionsState extends FlxState {
	// Declare variables
	public static var CURSOR:FlxSprite;

	public var BACKGROUND:FlxSprite;

	public var TITLE:FlxText;

	var BACKBUTTON:FlxSprite;

	public var TempBack:FlxSprite;

	public static var FULLSCREEN:FlxText;
	public static var VOLUME:FlxText;

	override public function create() {
		super.create();

		// Presence.changePresence("In the menu", null);

		// Define variables

		TempBack = new FlxSprite();
		TempBack.loadGraphic(Assets.TEMPORARY_BACKGROUND__png);
		TempBack.screenCenter();
		add(TempBack);

		TITLE = new FlxText(0, 0, 0, "SoundSpace", 32, true);
		TITLE.setFormat(null, 32, FlxColor.PURPLE, FlxTextAlign.CENTER);
		TITLE.screenCenter();
		TITLE.y = 0;

		FULLSCREEN = new FlxText(0, 0, 0, "Fullscreen: " + Configuration.FULLSCREEN, 32, true);
		FULLSCREEN.setFormat(null, 32, FlxColor.PURPLE, FlxTextAlign.CENTER);
		FULLSCREEN.screenCenter();
		FULLSCREEN.y = 200;
		VOLUME = new FlxText(0, 0, 0, "Volume: " + Configuration.VOLUME + "%", 32, true);
		VOLUME.setFormat(null, 32, FlxColor.PURPLE, FlxTextAlign.CENTER);
		VOLUME.screenCenter();
		VOLUME.y = 240;

		// Add objects (FlxBasic) to state

		// add(BACKGROUND);

		CURSOR = Cursor.create();
		add(CURSOR);

		add(TITLE);

		add(FULLSCREEN);
		add(VOLUME);

		BACKBUTTON = new FlxSprite();
		BACKBUTTON.loadGraphic(Assets.BACK_BUTTON__png);
		BACKBUTTON.x = 973;
		BACKBUTTON.y = 595;
		add(BACKBUTTON);

		trace("Create OptionsState");
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);

		new Keybinds();

		Cursor.update(CURSOR);

		// escape

		// Events
		if (FlxG.mouse.overlaps(BACKBUTTON) && FlxG.mouse.justPressed) {
			FlxG.switchState(new MenuState());
			FlxG.sound.playMusic(Assets.Button_Click__wav);
		}

		if (FlxG.keys.justPressed.ESCAPE) {
			FlxG.switchState(new MenuState());
			FlxG.sound.playMusic(Assets.Button_Click__wav);
		}

		// settings

		if (FlxG.mouse.overlaps(FULLSCREEN) && FlxG.mouse.justPressed) {
			if (FlxG.fullscreen == true) {
				FlxG.fullscreen = false;
				FlxG.sound.playMusic(Assets.SettingsEffect__wav);
			} else {
				FlxG.fullscreen = true;
			}
		}

		if (FlxG.mouse.overlaps(VOLUME) && FlxG.mouse.justPressed && Configuration.VOLUME != 100) {
			Configuration.VOLUME = Configuration.VOLUME + 25;
			FlxG.sound.playMusic(Assets.SettingsEffect__wav);
		}
		if (FlxG.mouse.overlaps(VOLUME) && FlxG.mouse.justPressedRight && Configuration.VOLUME != 0) {
			Configuration.VOLUME = Configuration.VOLUME - 25;
		}

		if (FlxG.fullscreen == true) {
			FULLSCREEN.text = "Fullscreen: On";
		} else {
			FULLSCREEN.text = "Fullscreen: Off";
		}

		// animations

		if (FlxG.mouse.overlaps(BACKBUTTON)) {
			BACKBUTTON.loadGraphic(Assets.BACK_BUTTON_HOVER__png);
		} else {
			BACKBUTTON.loadGraphic(Assets.BACK_BUTTON__png);
		}

		if (FlxG.mouse.overlaps(VOLUME)) {
			VOLUME.setFormat(null, 32, FlxColor.WHITE, FlxTextAlign.CENTER);
			if (FlxG.mouse.justPressed) {
				Configuration.VOLUME++;
			} else if (FlxG.mouse.justPressedRight) {
				Configuration.VOLUME--;
			}
		} else {
			VOLUME.setFormat(null, 32, FlxColor.PURPLE, FlxTextAlign.CENTER);
		}

		if (FlxG.mouse.overlaps(FULLSCREEN)) {
			FULLSCREEN.setFormat(null, 32, FlxColor.WHITE, FlxTextAlign.CENTER);
		} else {
			FULLSCREEN.setFormat(null, 32, FlxColor.PURPLE, FlxTextAlign.CENTER);
		}
	}
}
