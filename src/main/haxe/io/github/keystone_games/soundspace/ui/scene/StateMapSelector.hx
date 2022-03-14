package io.github.keystone_games.soundspace.ui.scene;

import io.github.keystone_games.soundspace.lists.Modes;
import flixel.FlxState;

class StateMapSelector extends FlxState {
    public static var mapList:Modes;
    
    public function new(list:Modes) {
        super();
        
        /*switch (list) {
            case CLASSIC:
            case: PONG:
            case: KEYBOARD:
            case: BEAT:
        }*/
        mapList = list;
    }
    public override function create() {
        super.create();
    }
    public override function update(dt:Float) {
        super.update(dt);
    }
}
