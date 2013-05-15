package pixi;

/**
 * ...
 * @author niraj

 */
@:native("PIXI.Texture")
extern class Texture extends EventTarget
{


	
	public  var baseTexture:BaseTexture;
	public  var frame:Rectangle;

	public function addTextureToCache (texture:Texture, id:String):Void;
	public function new (baseTexture:BaseTexture, frmae:Rectangle):Void;
	public function removeTextureFromCache (id:String):Void;
	public function setFrame (frame:Rectangle):Void;

	public static function fromFrame (frameId:String):Texture;
	public static function fromCanvas (canvas:String):Texture;
	public static function fromImage (imageUrl:String):Texture;

	
	
}