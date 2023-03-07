package com.neonblade.soundspace.ui.scene;

import flixel.FlxG;
import flixel.FlxState;
import com.neonblade.soundspace.util.map.MapManager;

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
				FlxG.switchState(null);
		}
	}
}
