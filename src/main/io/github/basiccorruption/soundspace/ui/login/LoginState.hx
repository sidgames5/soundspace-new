package io.github.basiccorruption.soundspace.ui.login;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import haxe.io.Path;
import io.github.basiccorruption.soundspace.ui.menu.MenuState;
import io.github.basiccorruption.soundspace.utils.Keybinds;

class LoginState extends FlxState {
	// Declare variables
	public var TITLE:FlxText;

	public var USERNAME:FlxText;
	public var PASSWORD:FlxText;

	public var LOGIN_BUTTON:FlxSprite;
	public var BACK_BUTTON:FlxSprite;

	public var CAPS_LOCK:Bool = false;
	public var TYPED_PASSWORD:String;
	public var TYPER_USERNAME:String;
	public var TOKEN:Path;

	override public function create() {
		super.create();

		// Define variables

		TITLE = new FlxText(0, 0, 0, "Login to SoundSpace", 64, true);
		TITLE.setFormat(null, 64, FlxColor.PURPLE, FlxTextAlign.CENTER);
		TITLE.screenCenter();
		TITLE.y = 0;

		USERNAME = new FlxText(0, 0, 0, "Enter username here", 32, true);
		USERNAME.screenCenter();
		USERNAME.y = 260;
		PASSWORD = new FlxText(0, 0, 0, "Enter password here", 32, true);
		PASSWORD.screenCenter();
		PASSWORD.y = 360;

		LOGIN_BUTTON = new FlxSprite();
		LOGIN_BUTTON.loadGraphic(Assets.LOGIN_BUTTON__png);
		LOGIN_BUTTON.screenCenter();
		LOGIN_BUTTON.y = 620;
		BACK_BUTTON = new FlxSprite();
		BACK_BUTTON.loadGraphic(Assets.BACK_BUTTON__png);
		BACK_BUTTON.screenCenter();
		BACK_BUTTON.y = 720;

		// Add objects (FlxBasic) to state

		add(TITLE);

		add(USERNAME);
		add(PASSWORD);

		add(LOGIN_BUTTON);
		add(BACK_BUTTON);

		trace("Create LoginState");
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);

		new Keybinds();

		// Events

		if (FlxG.keys.justPressed.CAPSLOCK && CAPS_LOCK == false) {
			CAPS_LOCK = true;
		} else {
			CAPS_LOCK = false;
		}

		if (FlxG.mouse.overlaps(LOGIN_BUTTON) && FlxG.mouse.justPressed) {
			FlxG.switchState(new MenuState());
		}
		if (FlxG.mouse.overlaps(BACK_BUTTON) && FlxG.mouse.justPressed) {
			FlxG.switchState(new LoginState());
		}

		if (FlxG.mouse.overlaps(USERNAME) && FlxG.mouse.justPressed) {
			if (FlxG.keys.justPressed.SHIFT) {
				if (FlxG.keys.justPressed.A) {
					TYPER_USERNAME = TYPER_USERNAME + "A";
				}
				if (FlxG.keys.justPressed.B) {
					TYPER_USERNAME = TYPER_USERNAME + "B";
				}
				if (FlxG.keys.justPressed.BACKSLASH) {
					TYPER_USERNAME = TYPER_USERNAME + "\\";
				}
				if (FlxG.keys.justPressed.C) {
					TYPER_USERNAME = TYPER_USERNAME + "C";
				}
				if (FlxG.keys.justPressed.COMMA) {
					TYPER_USERNAME = TYPER_USERNAME + ",";
				}
				if (FlxG.keys.justPressed.D) {
					TYPER_USERNAME = TYPER_USERNAME + "D";
				}
				if (FlxG.keys.justPressed.E) {
					TYPER_USERNAME = TYPER_USERNAME + "E";
				}
				if (FlxG.keys.justPressed.EIGHT) {
					TYPER_USERNAME = TYPER_USERNAME + "8";
				}
				if (FlxG.keys.justPressed.F) {
					TYPER_USERNAME = TYPER_USERNAME + "F";
				}
				if (FlxG.keys.justPressed.FIVE) {
					TYPER_USERNAME = TYPER_USERNAME + "5";
				}
				if (FlxG.keys.justPressed.FOUR) {
					TYPER_USERNAME = TYPER_USERNAME + "4";
				}
				if (FlxG.keys.justPressed.G) {
					TYPER_USERNAME = TYPER_USERNAME + "G";
				}
				if (FlxG.keys.justPressed.GRAVEACCENT) {
					TYPER_USERNAME = TYPER_USERNAME + "`";
				}
				if (FlxG.keys.justPressed.H) {
					TYPER_USERNAME = TYPER_USERNAME + "H";
				}
				if (FlxG.keys.justPressed.I) {
					TYPER_USERNAME = TYPER_USERNAME + "I";
				}
				if (FlxG.keys.justPressed.J) {
					TYPER_USERNAME = TYPER_USERNAME + "J";
				}
				if (FlxG.keys.justPressed.K) {
					TYPER_USERNAME = TYPER_USERNAME + "K";
				}
				if (FlxG.keys.justPressed.L) {
					TYPER_USERNAME = TYPER_USERNAME + "L";
				}
				if (FlxG.keys.justPressed.LBRACKET) {
					TYPER_USERNAME = TYPER_USERNAME + "[";
				}
				if (FlxG.keys.justPressed.M) {
					TYPER_USERNAME = TYPER_USERNAME + "M";
				}
				if (FlxG.keys.justPressed.MINUS) {
					TYPER_USERNAME = TYPER_USERNAME + "-";
				}
				if (FlxG.keys.justPressed.N) {
					TYPER_USERNAME = TYPER_USERNAME + "N";
				}
				if (FlxG.keys.justPressed.NINE) {
					TYPER_USERNAME = TYPER_USERNAME + "9";
				}
				if (FlxG.keys.justPressed.NUMPADEIGHT) {
					TYPER_USERNAME = TYPER_USERNAME + "8";
				}
				if (FlxG.keys.justPressed.NUMPADFIVE) {
					TYPER_USERNAME = TYPER_USERNAME + "5";
				}
				if (FlxG.keys.justPressed.NUMPADFOUR) {
					TYPER_USERNAME = TYPER_USERNAME + "4";
				}
				if (FlxG.keys.justPressed.NUMPADMINUS) {
					TYPER_USERNAME = TYPER_USERNAME + "-";
				}
				if (FlxG.keys.justPressed.NUMPADMULTIPLY) {
					TYPER_USERNAME = TYPER_USERNAME + "*";
				}
				if (FlxG.keys.justPressed.NUMPADNINE) {
					TYPER_USERNAME = TYPER_USERNAME + "9";
				}
				if (FlxG.keys.justPressed.NUMPADONE) {
					TYPER_USERNAME = TYPER_USERNAME + "1";
				}
				if (FlxG.keys.justPressed.NUMPADPERIOD) {
					TYPER_USERNAME = TYPER_USERNAME + ".";
				}
				if (FlxG.keys.justPressed.NUMPADPLUS) {
					TYPER_USERNAME = TYPER_USERNAME + "+";
				}
				if (FlxG.keys.justPressed.NUMPADSEVEN) {
					TYPER_USERNAME = TYPER_USERNAME + "7";
				}
				if (FlxG.keys.justPressed.NUMPADSIX) {
					TYPER_USERNAME = TYPER_USERNAME + "6";
				}
				if (FlxG.keys.justPressed.NUMPADTHREE) {
					TYPER_USERNAME = TYPER_USERNAME + "3";
				}
				if (FlxG.keys.justPressed.NUMPADTWO) {
					TYPER_USERNAME = TYPER_USERNAME + "2";
				}
				if (FlxG.keys.justPressed.NUMPADZERO) {
					TYPER_USERNAME = TYPER_USERNAME + "0";
				}
				if (FlxG.keys.justPressed.O) {
					TYPER_USERNAME = TYPER_USERNAME + "O";
				}
			} else {}
			if (FlxG.keys.justPressed.SHIFT && CAPS_LOCK == true) {}
		}
		if (FlxG.mouse.overlaps(PASSWORD) && FlxG.mouse.justPressed) {}
	}
}
