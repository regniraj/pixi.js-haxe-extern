package pixi;

import js.Lib;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.WebGLRenderer")
extern class WebGLRenderer extends CommonRenderer
{
	
	public function addDisplayObject (displayObject:DisplayObject):Void;
	public function checkVisibility (displayObject:DisplayObject, globalVisible:Bool):Void;
	public function handleContextLost (event:Dynamic):Void;
	public function handleContextRestored (event:Dynamic):Void;
	public function initShaders ():Void;
	public function initStrip (strip:Dynamic):Void;
	public function new (width:Int, height:Int):Void;
	public function removeDisplayObject (displayObject:DisplayObject):Void;
	public function renderStrip (strip:Dynamic):Void;
	public function resize (width:Int, height:Int):Void;
	public function updateTexture (texture:Texture):Void;
	
}