package io.github.keystone_games.kglog;

import Console;
import haxe.io.Path;

class Logger
{
	/**
	 * Path of the log directory.
	 */
	public static var logDir:String;

	/**
	 * Name of the log file.
	 */
	public static var logFile:String = "yyyy-mm-dd@hh:mm:ss.log";

	public static var sessionLog:String;

	/**
	 * Configures the logger.
	 * @param  LogDir  Path of the program's log file.
	 */
	public static function config(LogDir:String):Void
	{
		logDir = LogDir;

		var now = Date.now();
		var sDate = now.getFullYear() + "-" + now.getMonth() + "-" + now.getDate();
		var sTime = now.getHours() + ":" + now.getMinutes() + ":" + now.getSeconds();
		logFile = sDate + "@" + sTime + ".log";
		var p = Path.join([logDir, logFile]);
		sessionLog = sessionLog + "Log " + sDate + " at " + sTime + "\n";
	}

	/**
	 * Send a string of text to the program's log file
	 * and to the console.
	 * @param  Text  String of text to log.
	 */
	@:deprecated public static function simpleLog(Text:Any):Void
	{
		trace("Logger.simpleLog() is deprecated. Use Logger.info() instead");
		info(Text);
	}
	
	/**
	 * Send a string of text to the program's log file
	 * and to the console.
	 * @param  Text  String of text to log.
	 */
	public static function info(Text:Any):Void {
		#if sys
		Sys.println('$Text');
		#end

		var p = Path.join([logDir, logFile]);
		sessionLog = sessionLog + Text + "\n";
	}
	
	public static function debug(Text:Any):Void {
		#if sys
		Sys.println('[debug] $Text');
		#end
			
		var p = Path.join([logDir, logFile]);
		sessionLog = sessionLog + "[debug] " + Text + "\n";
	}
	
	/**
	 * Sends a string of text containing locations to the program's log file
	 * @param  Text      String of text to low.
	 * @param  Location  Location to log
	 */
	public static function trace(Text:String, Location:String) {
		#if sys
		Sys.println(Location + ": " + Text);
		#end
			
		var p = Path.join([logDir, logFile]);
		sessionLog = sessionLog + Location + ": " + Text;
	}

	/**
	 * Log an error to the log file and console.
	 * @param  Error     The error text to log.
	 * @param  Location  Class name and path of error location
	 */
	public static function error(Error:String, Location:String)
	{
		#if sys
		Sys.stderr('Error: $Error at $Location');
		#end

		var p = Path.join([logDir, logFile]);
		sessionLog = sessionLog + "Error at " + Location + ": " + Error;
	}
}
