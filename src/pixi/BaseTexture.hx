package pixi;

import js.Lib;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.BaseTexture")
extern class BaseTexture
{
	public var height:Float;
	public var source:Dynamic;
	public var width:Float;
	public function new (source:String):Void;
	public function fromImage(source:String):Void;

}