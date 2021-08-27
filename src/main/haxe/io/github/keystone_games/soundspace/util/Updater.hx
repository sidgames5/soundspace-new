package io.github.keystone_games.soundspace.util;

class Checker {
    public static function checkCurrentVersion() {
        return Reference.VERSION;
    }

    public static function checkLatestVersion() {
        return Reference.VERSION;
    }
}

class Updater {
    public static function update(location:SSDLS) {
        switch (location) {
            case GITHUB_COM:
            case ITCH_IO:
        }
    }
}

enum SSDLS {
    GITHUB_COM;
    ITCH_IO;
}