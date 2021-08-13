package io.github.keystone_games.soundspace.ui.state;

import lime.system.System;
import flixel.FlxG;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.FlxState;

using io.github.keystone_games.soundspace.ui.util.TextUtil;

class StateMenu extends FlxState {
    @:noCompletion public static var header_title:FlxText;
    public override function create() {
        super.create();

        header_title = SimpleText.make("SoundSpace").setFormat(null, 64, FlxColor.PURPLE, CENTER);
        add(header_title);
    }

    public override function update(dt:Float) {
        super.update(dt);

        if (FlxG.keys.justPressed.ESCAPE) System.exit(0);
    }
}