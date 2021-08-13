package io.github.keystone_games.soundspace.ui.util;

import flixel.text.FlxText;

class SimpleText {
    public static function make(?text:String = "", ?x:Int = 0, ?y:Int = 0, ?size:Int = 8):FlxText {
        return new FlxText(x, y, 0, text, size, true);
    }
}

class TextUtil {}