package pixi;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.Strip")
extern class Strip extends DisplayObjectContainer
{

	public function new(texture:Texture, width:Float, height:Float):Void;
	public function setTexture(text:Texture):Void;
	
}