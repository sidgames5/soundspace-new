package io.github.basiccorruption.soundspace;

import io.github.basiccorruption.soundspace.ui.menu.MenuState;
import flixel.FlxGame;
import openfl.display.Sprite;

using StdTypes;
using openfl.Lib;

class Main extends Sprite {
	private static function getGameWidth():Int {
		return 0;
	}

	private static function getGameHeight():Int {
		return 0;
	}

	private static function getInitialState():Dynamic {
		return MenuState;
	}

	private static function getZoom():Float {
		return 1;
	}

	@:deprecated
	private static function getFramerate():Int {
		// You don't need this! The compiler sets it to vsync!
		return 60;
	}

	private static function getSkipSplash():Bool {
		return true;
	}

	private static function getStartFullscreen():Bool {
		return true;
	}

	private static function getMouseVisible():Bool {
		return false;
	}

	private static function getFullscreen():Bool {
		return true;
	}

	private static function getAutoPause():Bool {
		return false;
	}

	public static final banana:Int = 1;

	public function new():Void {
		super();
		Lib.current.addChild(new FlxGame(getGameWidth(), getGameHeight(), getInitialState(), getZoom(), getFramerate(), getFramerate(), getSkipSplash(), getStartFullscreen()));
	}
}
