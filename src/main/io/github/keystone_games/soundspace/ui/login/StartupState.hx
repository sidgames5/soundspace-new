package io.github.keystone_games.soundspace.ui.login;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import sfr.Configuration;
import sfr.Keybinds;
import sfr.WindowUtils;

class StartupState extends FlxState {
	// Declare variables
	public var TITLE:FlxText;

	public var LOGIN_BUTTON:FlxSprite;
	public var SIGN_UP_BUTTON:FlxSprite;
	public var EXIT_BUTTON:FlxSprite;

	public var VERSION:FlxText;

	override public function create() {
		super.create();

		new Configuration(true, null);

		FlxG.fullscreen = false;
		FlxG.autoPause = false;

		// Define variables

		TITLE = new FlxText(0, 0, 0, "Login to SoundSpace", 64, true);
		TITLE.setFormat(null, 64, FlxColor.PURPLE, FlxTextAlign.CENTER);
		TITLE.screenCenter();
		TITLE.y = 0;

		LOGIN_BUTTON = new FlxSprite();
		LOGIN_BUTTON.loadGraphic(Assets.LOGIN_BUTTON__png);
		LOGIN_BUTTON.screenCenter();
		LOGIN_BUTTON.y = 260;
		SIGN_UP_BUTTON = new FlxSprite();
		SIGN_UP_BUTTON.loadGraphic(Assets.SIGN_UP_BUTTON__png);
		SIGN_UP_BUTTON.screenCenter();
		SIGN_UP_BUTTON.y = 360;
		EXIT_BUTTON = new FlxSprite();
		EXIT_BUTTON.loadGraphic(Assets.EXIT_BUTTON_LS__png);
		EXIT_BUTTON.screenCenter();
		EXIT_BUTTON.y = 460;

		VERSION = new FlxText(0, 0, 0, "SoundSpace v" + Configuration.VERSION, 16, true);
		VERSION.setFormat(null, 16, FlxColor.fromString("0x9955FFFF"), FlxTextAlign.CENTER);
		VERSION.y = 690;

		// Add objects (FlxBasic) to state

		add(TITLE);

		add(LOGIN_BUTTON);
		add(SIGN_UP_BUTTON);
		add(EXIT_BUTTON);

		add(VERSION);

		trace("Create StartupState");
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);

		new Keybinds();

		// Events
		if (FlxG.mouse.overlaps(LOGIN_BUTTON) && FlxG.mouse.justPressed) {
			FlxG.switchState(new LoginState());
		}
		if (FlxG.mouse.overlaps(SIGN_UP_BUTTON) && FlxG.mouse.justPressed) {
			FlxG.switchState(new RegisterState());
		}
		if (FlxG.mouse.overlaps(EXIT_BUTTON) && FlxG.mouse.justPressed) {
			WindowUtils.Exit(0);
		}
	}
}
