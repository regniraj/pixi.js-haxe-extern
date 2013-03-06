package pixi;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.Point")
extern   class Point
{
	public var x:Float;
	public var y:Float;
	public  function new(_x:Float, _y:Float):Void ;
	public  function clone():Point;
	
}