package pixi;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.Stage")
extern class Stage extends DisplayObjectContainer
{

	 function new(backgroundColor:Int,interactive:Bool):Void;
	 function setBackgroundColor(backgroundColor:Int):Void;
	 function __addChild(child:Dynamic):Void;
	 function __removeChild(child:Dynamic):Void;
	
}