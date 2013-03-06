package pixi;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.DisplayObject")
extern class DisplayObject
{
	public var alpha:Float;
	public var parent:DisplayObjectContainer;
	public var position:Point;
	public var rotation:Float;
	public var scale:Point;
	public var stage:Stage;
	public var visible:Bool;
	
	public function updateTransform():Void;
	public function new():Void;
	
}