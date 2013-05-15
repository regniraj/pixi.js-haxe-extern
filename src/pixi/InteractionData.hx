package pixi;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.InteractionData")
extern class InteractionData
{

	public var target:MovieClip;
	public var global:Point;
	public var local:Point;
	
	public function getLocalPosition(displayObject:DisplayObject):Point;
	
	public function new() :Void;
	
}