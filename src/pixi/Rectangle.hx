package pixi;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.Rectangle")
extern class Rectangle
{
	public  var height:Float;
	public  var width:Float;
	public  var x:Float;
	public  var y:Float;
	public function clone():Rectangle;
	public function new(a:Float, b:Float, c:Float, d:Float):Void;
	
	
}