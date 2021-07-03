package io.github.keystone_games.soundspace;

import io.github.keystone_games.soundspace.ui.menu.MenuState;
import flixel.FlxGame;
import openfl.display.Sprite;

using StdTypes;
using openfl.Lib;

class Main extends Sprite {
	public static function getGameWidth():Int {
		return 0;
	}

	public static function getGameHeight():Int {
		return 0;
	}

	public static function getInitialState():Dynamic {
		return MenuState;
	}

	public static function getZoom():Float {
		return 1;
	}

	@:deprecated
	public static function getFramerate():Int {
		// You don't need this! The compiler sets it to vsync!
		return 60;
	}

	public static function getSkipSplash():Bool {
		return true;
	}

	public static function getStartFullscreen():Bool {
		return true;
	}

	public static function getMouseVisible():Bool {
		return false;
	}

	public static function getFullscreen():Bool {
		return true;
	}

	public static function getAutoPause():Bool {
		return false;
	}

	public function new():Void {
		super();
		Lib.current.addChild(new FlxGame(getGameWidth(), getGameHeight(), getInitialState(), getZoom(), getFramerate(), getFramerate(), getSkipSplash(), getStartFullscreen()));
	}
}
