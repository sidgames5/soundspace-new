package io.github.basiccorruption.soundspace.ui.login;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import haxe.io.Path;
import io.github.basiccorruption.soundspace.utils.Keybinds;

class RegisterState extends FlxState {
	// Declare variables
	public var TITLE:FlxText;

	public var USERNAME:FlxText;
	public var EMAIL:FlxText;
	public var PASSWORD:FlxText;

	public var REGISTER_BUTTON:FlxSprite;
	public var BACK_BUTTON:FlxSprite;

	public var TYPED_PASSWORD:String;
	public var TOKEN:Path;

	override public function create() {
		super.create();

		// Define variables

		TITLE = new FlxText(0, 0, 0, "Create an account for SoundSpace", 64, true);
		TITLE.setFormat(null, 64, FlxColor.PURPLE, FlxTextAlign.CENTER);
		TITLE.screenCenter();
		TITLE.y = 0;

		USERNAME = new FlxText(0, 0, 0, "Enter username here", 32, true);
		USERNAME.screenCenter();
		USERNAME.y = 260;
		EMAIL = new FlxText(0, 0, 0, "Enter email here", 32, true);
		EMAIL.screenCenter();
		EMAIL.y = 310;
		PASSWORD = new FlxText(0, 0, 0, "Enter password here", 32, true);
		PASSWORD.screenCenter();
		PASSWORD.y = 360;

		REGISTER_BUTTON = new FlxSprite();
		REGISTER_BUTTON.loadGraphic(Assets.LOGIN_BUTTON__png);
		REGISTER_BUTTON.screenCenter();
		REGISTER_BUTTON.y = 620;
		BACK_BUTTON = new FlxSprite();
		BACK_BUTTON.loadGraphic(Assets.BACK_BUTTON__png);
		BACK_BUTTON.screenCenter();
		BACK_BUTTON.y = 720;

		// Add objects (FlxBasic) to state

		add(TITLE);

		add(USERNAME);
		add(EMAIL);
		add(PASSWORD);

		add(REGISTER_BUTTON);
		add(BACK_BUTTON);

		trace("Create RegisterState");
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);

		new Keybinds();

		// Events
		if (FlxG.mouse.overlaps(BACK_BUTTON) && FlxG.mouse.justPressed) {
			FlxG.switchState(new LoginState());
		}
	}
}
