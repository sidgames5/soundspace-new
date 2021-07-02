package sfr;

import io.github.basiccorruption.soundspace.Assets;
import io.github.basiccorruption.soundspace.HitSounds;
import flixel.FlxSprite;
import flixel.tweens.FlxTween;
import io.github.basiccorruption.soundspace.ui.player.PlayState;

class ChartUtils extends PlayState {
	public static var tempNote:FlxSprite;

	public static var LAST_ID:Int = 0;

	override public function new() {
		super(null);
	}

	public static function createNote(numkeys:Int, key:Int, velocity:Float, type:Int, length:Float, ?hitSound:HitSounds):FlxSprite {
		tempNote = new FlxSprite();
		if (type == 0) {
			// tempNote.loadGraphic(Assets.NOTE_TRANSPARENT);
			tempNote.loadGraphic(Assets.KEY_CLICKED__png);
		} else {
			// tempNote.loadGraphic(Assets.NOTE);
			tempNote.loadGraphic(Assets.KEY_CLICKED__png);
		}
		if (key == 1) {
			tempNote.x = 1280;
			tempNote.y = 64;
		}
		if (key == 2) {
			tempNote.x = 1280;
			tempNote.y = 128;
		}
		if (key == 3) {
			tempNote.x = 1280;
			tempNote.y = 192;
		}
		if (key == 4) {
			tempNote.x = 1280;
			tempNote.y = 256;
		}
		if (key == 5) {
			tempNote.x = 1280;
			tempNote.y = 320;
		}
		if (key == 6) {
			tempNote.x = 1280;
			tempNote.y = 384;
		}
		if (key == 7) {
			tempNote.x = 1280;
			tempNote.y = 448;
		}
		if (key == 8) {
			tempNote.x = 1280;
			tempNote.y = 512;
		}

		tweenNote(tempNote, velocity);
		PlayState.TOTAL_NOTES++;

		return tempNote;
	}

	public static function tweenNote(note:FlxSprite, length:Float) {
		FlxTween.tween(note, {x: 0}, length, {type: FlxTweenType.PERSIST});
	}

	public static function calculateRank(accuracy:Float):String {
		if (accuracy == 1) {
			return "SS";
		} else if (accuracy >= 0.95) {
			return "S";
		} else if (accuracy >= 0.90) {
			return "A";
		} else if (accuracy >= 0.85) {
			return "B";
		} else if (accuracy >= 0.80) {
			return "C";
		} else if (accuracy >= 0.75) {
			return "D";
		} else if (accuracy >= 0.70) {
			return "E";
		} else {
			return "F";
		}
	}
}
