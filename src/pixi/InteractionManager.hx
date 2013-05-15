package pixi;
import sys.db.Object;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.InteractionManager")
class InteractionManager
{
	public var stage:Stage;
	public var tempPoint:Point;
	public var mouseoverEnabled:Bool = true;
	public var mouse:InteractionData;
	public var touches:Object;
	public var pool:Array<InteractionData>;
	public var interactiveItems:Array<InteractionData>;
	public var last:Int;
	
	public function hitTest(item:Dynamic, interactionData:InteractionData);

	public function new(stage:Stage) 
	{
		
	}
	
}