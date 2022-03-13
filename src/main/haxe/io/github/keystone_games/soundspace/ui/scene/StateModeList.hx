package io.github.keystone_games.soundspace.ui.scene;

import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.FlxState;

class StateModeList extends FlxState {
    public static var titleText:FlxText;

    public override function create() {
        super.create();

        titleText = new FlxText(0, 0, 0, "Select a Mode").setFormat(null, 64, FlxColor.WHITE, CENTER);
        titleText.screenCenter(X);
        add(titleText);
    }
    public override function update(dt:Float) {
        super.update(dt);
    }
}