package pixi ;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.AssetLoader")
extern class AssetLoader extends EventTarget
{

	public  var assetURLs:Array <String>;
	public var onComplete:Dynamic;
	public function load ():Void;
	public function new (assetURLs:Array<String>):Void;
	
}