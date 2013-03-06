package pixi;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.CanvasRenderer")
extern class CanvasRenderer extends CommonRenderer
{

	
	public  var height:Float;
	public  var width:Float;

	
	public function renderDisplayObject (displayObject:DisplayObject):Void;
	public function renderStrip (strip:Dynamic):Void;
	public function renderStripFlat (strip:Dynamic):Void;
	public function resize (width:UInt, height:UInt):Void;

	
}