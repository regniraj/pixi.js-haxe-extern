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
	public var buttonMode:Bool;
	
	
	public function updateTransform():Void;
	public function new():Void;
	
	public function setInteractive(interactive:Bool):Void;
	public var click:InteractionData->Void;
		public var mousedown:InteractionData->Void;
		public var mouseup:InteractionData->Void;
	public var 	mouseupoutside:InteractionData->Void;
	public var 	mouseover:InteractionData->Void;
	public var 	mouseout:InteractionData->Void;
	public var 	tap:InteractionData->Void;
		public var touchstart:InteractionData->Void;
		public var touchend:InteractionData->Void;
		public var touchendoutside:InteractionData->Void;
		public var mousemove:InteractionData->Void;

	
	
	public var hitArea:Rectangle;
	
	
	
	
}