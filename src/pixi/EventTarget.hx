package pixi;
import js.Lib;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.EventTarget")
extern class EventTarget
{
public var listeners:Array<Dynamic>;
public function addEventListener(type:String, func:Dynamic):Void; 
public function dispatchEvent(e:Dynamic):Void;
public function removeEventListener(type:String, func:Dynamic):Void;

	
}