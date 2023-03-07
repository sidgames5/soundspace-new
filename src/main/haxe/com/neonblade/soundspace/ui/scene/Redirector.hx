package io.github.keystone_games.soundspace.ui.scene;

import flixel.FlxG;
import flixel.FlxState;
import io.github.keystone_games.soundspace.util.map.MapManager;
import io.github.keystone_games.soundspace.ui.scene.play.CLevel1;

class Redirector extends FlxState {
	public override function create() {
		super.create();

		FlxG.drawFramerate = 90;
		FlxG.updateFramerate = 90;
		FlxG.debugger.visible = false;

		var m = MapManager.temp_getMD();
		switch (m.lm) {
			case 0:
				FlxG.updateFramerate = 1000;
				FlxG.switchState(new CLevel1());
		}
	}
}
