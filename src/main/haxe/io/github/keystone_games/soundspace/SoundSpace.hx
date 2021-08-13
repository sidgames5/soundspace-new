package io.github.keystone_games.soundspace;

import io.github.keystone_games.soundspace.ui.state.*;
import flixel.FlxGame;
import openfl.Lib;
import openfl.display.Sprite;

class SoundSpace extends Sprite
{
	public override function new()
	{
		super();
		Lib.current.addChild(new FlxGame(0, 0, #if html5 StateMenu #else StateLoading #end, 1, 240, 165, false, false));
	}
}
