package;
#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

import lime.system.CFFI;
import lime.system.JNI;


class NavtiveTouchPoint {
	
	
	#if ios
		public static function start():Void {
			navtivetouchpoint_start();
		}
		public static function stageX():Float {
			return navtivetouchpoint_stage_x();
		}
		public static function stageY():Float {
			return navtivetouchpoint_stage_y();
		}
		private static var navtivetouchpoint_start = Lib.load ("navtivetouchpoint", "navtivetouchpoint_start", 0);
		private static var navtivetouchpoint_stage_x = Lib.load ("navtivetouchpoint", "stage_x", 0);
		private static var navtivetouchpoint_stage_y = Lib.load ("navtivetouchpoint", "stage_y", 0);
	#end
	
	
}