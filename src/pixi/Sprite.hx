package pixi;

/**
 * ...
 * @author niraj

 */
@:native("PIXI.Sprite")
extern class Sprite extends DisplayObjectContainer
{

	public  var anchor:Point;
	public  var blendMode:Int;
	public  var height:Float;
	public  var texture:Texture;
	public  var width:Float;

	public function new (texture:Texture):Void;
	public function onTextureUpdate (event:Dynamic):Void;
	public function setTexture (texture:Texture):Void;
	public static function fromFrame (frameId:String):Sprite;
	public static function fromImage (url:String):Sprite;

}