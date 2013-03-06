package pixi;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.ROPE")
extern class Rope extends Strip
{

	public function new(text:Texture, points:Array<Float>):Void ;
	public function refresh():Void;
	
}