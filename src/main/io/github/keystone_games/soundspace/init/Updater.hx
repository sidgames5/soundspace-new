package io.github.keystone_games.soundspace.init;

import lime.system.System;

class Updater {
    public function new() {
        
    }

    public static function checkAvailableUpdates(level:Int) {
        /*
        Versioning system: major.stable.beta.daily
        Level 1: Stable updates
        Level 2: Beta
        Level 3: Daily/unstable
        */

        System.openFile("src/assets/data/updater.bat");
    }
}