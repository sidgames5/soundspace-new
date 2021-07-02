package io.github.basiccorruption.soundspace.ui.menu;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import haxe.Timer;
import sfr.Configuration;
import sfr.Cursor;
import sfr.Keybinds;

using sfr.WindowUtils;

class MenuState extends FlxState {
	// Declare variables
	public static var CURSOR:FlxSprite;

	public static var BACKGROUND:FlxSprite;

	public static var TITLE:FlxText;
	public static var INTERACTIVE_BUTTON:FlxSprite;

	public static var PLAY_BUTTON:FlxSprite;
	public static var EDIT_BUTTON:FlxSprite;
	public static var OPTIONS_BUTTON:FlxSprite;

	public static var VERSION:FlxText;

	// Exit confirmation overlay
	public static var SHADER:FlxSprite;
	public static var CONFIRMATION_TEXT:FlxText;
	public static var EXIT_BUTTON:FlxSprite;
	public static var CANCEL_EXIT_BUTTON:FlxSprite;

	public static var BUTTON_SELECTED:FlxObject;
	public static var EXIT_OVERLAY_ENABLED:Bool = false;
	
	override public function create() {
		super.create();

		// Presence.changePresence("In the menu", null);

		FlxG.sound.playMusic(Assets.MenuTheme__wav, Configuration.VOLUME / 100);

		// Define variables

		BACKGROUND = new FlxSprite();
		BACKGROUND.loadGraphic(Assets.TEMPORARY_BACKGROUND__png);
		BACKGROUND.screenCenter();
		add(BACKGROUND);

		CURSOR = Cursor.create();

		TITLE = new FlxText(0, 0, 0, "SoundSpace", 64, true);
		TITLE.setFormat(null, 64, FlxColor.PURPLE, FlxTextAlign.CENTER);
		TITLE.screenCenter();
		TITLE.y = 0;

		INTERACTIVE_BUTTON = new FlxSprite();
		INTERACTIVE_BUTTON.loadGraphic(Assets.INTERACTIVE_BUTTON__png);
		INTERACTIVE_BUTTON.screenCenter();
		PLAY_BUTTON = new FlxSprite();
		PLAY_BUTTON.loadGraphic(Assets.PLAY_BUTTON__png);
		PLAY_BUTTON.screenCenter();
		PLAY_BUTTON.y = 100;
		PLAY_BUTTON.visible = false;
		EDIT_BUTTON = new FlxSprite();
		EDIT_BUTTON.loadGraphic(Assets.EDIT_BUTTON__png);
		EDIT_BUTTON.screenCenter();
		EDIT_BUTTON.y = 200;
		EDIT_BUTTON.visible = false;
		OPTIONS_BUTTON = new FlxSprite();
		OPTIONS_BUTTON.loadGraphic(Assets.OPTIONS_BUTTON__png);
		OPTIONS_BUTTON.screenCenter();
		OPTIONS_BUTTON.y = 300;
		OPTIONS_BUTTON.visible = false;

		VERSION = new FlxText(0, 0, 0, "SoundSpace v" + Configuration.VERSION, 16, true);
		VERSION.setFormat(null, 16, FlxColor.fromString("0x9955FFFF"), FlxTextAlign.CENTER);
		VERSION.y = 690;

		SHADER = new FlxSprite();
		SHADER.loadGraphic(Assets.SHADER__png);
		SHADER.x = 0;
		SHADER.y = 0;
		SHADER.scale.set(1280, 720);
		SHADER.visible = false;
		CONFIRMATION_TEXT = new FlxText(0, 0, 0, "Are you sure you want to exit SoundSpace?", 16, true);
		CONFIRMATION_TEXT.setFormat(null, 16, FlxColor.MAGENTA, FlxTextAlign.CENTER);
		CONFIRMATION_TEXT.screenCenter();
		CONFIRMATION_TEXT.y = 10;
		CONFIRMATION_TEXT.visible = false;
		EXIT_BUTTON = new FlxSprite();
		EXIT_BUTTON.loadGraphic(Assets.EXIT_BUTTON__png);
		EXIT_BUTTON.screenCenter();
		EXIT_BUTTON.y = 100;
		EXIT_BUTTON.visible = false;
		CANCEL_EXIT_BUTTON = new FlxSprite();
		CANCEL_EXIT_BUTTON.loadGraphic(Assets.CANCEL_EXIT_BUTTON__png);
		CANCEL_EXIT_BUTTON.screenCenter();
		CANCEL_EXIT_BUTTON.y = 200;
		CANCEL_EXIT_BUTTON.visible = false;

		// Add objects (FlxBasic) to state

		add(TITLE);

		add(INTERACTIVE_BUTTON);
		add(PLAY_BUTTON);
		add(EDIT_BUTTON);
		add(OPTIONS_BUTTON);

		add(VERSION);

		add(SHADER);
		add(CONFIRMATION_TEXT);
		add(EXIT_BUTTON);
		add(CANCEL_EXIT_BUTTON);

		add(CURSOR);

		trace("Create MenuState");
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);

		Cursor.update(CURSOR);

		// Events
		if (FlxG.keys.justPressed.ESCAPE) {
			if (SHADER.visible == false) {
				EXIT_OVERLAY_ENABLED = true;
				SHADER.visible = true;
				CONFIRMATION_TEXT.visible = true;
				EXIT_BUTTON.visible = true;
				CANCEL_EXIT_BUTTON.visible = true;
			} else {
				EXIT_OVERLAY_ENABLED = false;
				SHADER.visible = false;
				CONFIRMATION_TEXT.visible = false;
				EXIT_BUTTON.visible = false;
				CANCEL_EXIT_BUTTON.visible = false;
			}
		}

		if (FlxG.mouse.overlaps(EXIT_BUTTON) && FlxG.mouse.justPressed && SHADER.visible == true) {
			WindowUtils.Exit(0);
		}
		if (FlxG.keys.pressed.UP && BUTTON_SELECTED == CANCEL_EXIT_BUTTON) {
			BUTTON_SELECTED = EXIT_BUTTON;
		}
		if (FlxG.keys.pressed.DOWN && BUTTON_SELECTED == EXIT_BUTTON) {
			BUTTON_SELECTED = CANCEL_EXIT_BUTTON;
		}

		if (FlxG.mouse.overlaps(CANCEL_EXIT_BUTTON) && FlxG.mouse.justPressed && SHADER.visible == true) {
			SHADER.visible = false;
			CONFIRMATION_TEXT.visible = false;
			EXIT_BUTTON.visible = false;
			CANCEL_EXIT_BUTTON.visible = false;
		}
		if (FlxG.mouse.overlaps(EXIT_BUTTON)) {
			EXIT_BUTTON.loadGraphic(Assets.EXIT_BUTTON_HOVER__png);
		} else {
			EXIT_BUTTON.loadGraphic(Assets.EXIT_BUTTON__png);
		}

		if (FlxG.mouse.overlaps(CANCEL_EXIT_BUTTON)) {
			CANCEL_EXIT_BUTTON.loadGraphic(Assets.CANCEL_EXIT_BUTTON_HOVER__png);
		} else {
			CANCEL_EXIT_BUTTON.loadGraphic(Assets.CANCEL_EXIT_BUTTON__png);
		}

		if (FlxG.mouse.overlaps(INTERACTIVE_BUTTON) && FlxG.mouse.justPressed && INTERACTIVE_BUTTON.visible == true) {
			FlxG.sound.playMusic(Assets.Button_Click__wav);
			Timer.delay(function() {
				FlxG.sound.pause();
				INTERACTIVE_BUTTON.visible = false;

				PLAY_BUTTON.visible = true;
				EDIT_BUTTON.visible = true;
				OPTIONS_BUTTON.visible = true;
			}, 100);
		}
		if (FlxG.mouse.overlaps(PLAY_BUTTON) && FlxG.mouse.justPressed && PLAY_BUTTON.visible == true) {
			FlxG.sound.playMusic(Assets.Button_Click__wav);
			Timer.delay(function() {
				FlxG.sound.pause();
				FlxG.switchState(new MapListState());
			}, 100);
		}
		if (FlxG.mouse.overlaps(EDIT_BUTTON) && FlxG.mouse.justPressed && EDIT_BUTTON.visible == true) {
			FlxG.sound.playMusic(Assets.Button_Click__wav);
			Timer.delay(function() {
				FlxG.sound.pause();
				FlxG.switchState(new EditMapListState());
			}, 100);
		}
		if (FlxG.mouse.overlaps(OPTIONS_BUTTON) && FlxG.mouse.justPressed && OPTIONS_BUTTON.visible == true) {
			FlxG.sound.playMusic(Assets.Button_Click__wav);
			Timer.delay(function() {
				FlxG.sound.pause();
				FlxG.switchState(new OptionsState());
			}, 100);
		}

		// FlxG.fullscreen = Configuration.FULLSCREEN;

		new Keybinds();

		if (BUTTON_SELECTED == EXIT_BUTTON && FlxG.keys.pressed.ENTER) {
			WindowUtils.Exit(0);
		}
		if (BUTTON_SELECTED == CANCEL_EXIT_BUTTON && FlxG.keys.pressed.ENTER) {
			EXIT_OVERLAY_ENABLED = false;
			SHADER.visible = false;
			CONFIRMATION_TEXT.visible = false;
			EXIT_BUTTON.visible = false;
			CANCEL_EXIT_BUTTON.visible = false;
		}
	}
}
