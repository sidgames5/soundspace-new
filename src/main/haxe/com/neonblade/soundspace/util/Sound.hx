package com.neonblade.soundspace.util;

import flixel.FlxG;
import flixel.system.FlxSound;
import flixel.system.frontEnds.SoundFrontEnd;

class Sound {
	public static function hitSFX() {
		FlxG.sound.play(Data.Tutorial__wav, Reference.VOLUME_MULTIPLIER, false);
	}
}
