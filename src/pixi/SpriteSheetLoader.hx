package pixi;

/**
 * ...
 * @author niraj
 */
@:native ("SpriteSheetLoader")
extern class SpriteSheetLoader extends EventTarget {

	public function load ():Void;
	public function new (url:String):Void;

}