package sfr;

using lime.system.System;

class WindowUtils {
	public static function Exit(code:Int):Void {
		trace("Process terminated with exit code " + code);
		System.exit(code);

		return;
	}

	@:deprecated
	public static function Println(text:String):Void {
		trace("Please don't use WindowUtils.Println! Use trace instead.");
		trace(text);

		return;
	}
}
