package io.github.keystone_games.soundspace.util;

import flixel.FlxG;
import flixel.input.keyboard.FlxKey;

enum abstract ControlLabels(String) {
    var L1 = "1";
    var L2 = "2";
    var L3 = "3";
    var L4 = "4";
    var L5 = "5";
    var L6 = "6";
    var L7 = "7";
    var L8 = "8";
    var L9 = "9";
}

enum abstract ControlKeys(FlxKey) {
    var L1 = FlxKey.S;
    var L2 = FlxKey.D;
    var L3 = FlxKey.F;
    var L4 = FlxKey.G;
    var L5 = FlxKey.SPACE;
    var L6 = FlxKey.H;
    var L7 = FlxKey.J;
    var L8 = FlxKey.K;
    var L9 = FlxKey.L;
}

enum abstract Presses(Bool) {
    var L1 = false;
    var L2 = false;
    var L3 = false;
    var L4 = false;
    var L5 = false;
    var L6 = false;
    var L7 = false;
    var L8 = false;
    var L9 = false;
}

class DetectKeyPresses {
    public static function detectAll():Array<Bool> {
        var keyStats = [];

        if (FlxG.keys.justPressed.S) keyStats.push(true) else keyStats.push(false);
        if (FlxG.keys.justPressed.D) keyStats.push(true) else keyStats.push(false);
        if (FlxG.keys.justPressed.F) keyStats.push(true) else keyStats.push(false);
        if (FlxG.keys.justPressed.G) keyStats.push(true) else keyStats.push(false);
        if (FlxG.keys.justPressed.SPACE) keyStats.push(true) else keyStats.push(false);
        if (FlxG.keys.justPressed.H) keyStats.push(true) else keyStats.push(false);
        if (FlxG.keys.justPressed.J) keyStats.push(true) else keyStats.push(false);
        if (FlxG.keys.justPressed.K) keyStats.push(true) else keyStats.push(false);
        if (FlxG.keys.justPressed.L) keyStats.push(true) else keyStats.push(false);

        return keyStats;
    }
}
