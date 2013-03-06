package pixi;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.DisplayObjectContainer")
extern class DisplayObjectContainer extends DisplayObject
{
	public var children:Array<DisplayObject>;
	public function new():Void;
	public function addChild(child:DisplayObject):Void;
	public function addChildAt(child:DisplayObject, index:Int):Void;
	public function removeChild(child:DisplayObject):Void;

}