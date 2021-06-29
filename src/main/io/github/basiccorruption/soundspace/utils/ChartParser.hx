package io.github.basiccorruption.soundspace.utils.player;

import haxe.Json;
import sys.io.File;

class ChartParser {
	public function new() {
		trace("Custom charts and parsing is not available");
		return;
	}

	public static function getChartName(id:Int) {
		trace("Custom charts and parsing is not available");

		var path = "" + id;
		var fileContent = File.getContent(path);
		var jsonData = Json.parse(fileContent);

		return jsonData.song.name;
	}
}
