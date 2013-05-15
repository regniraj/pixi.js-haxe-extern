package pixi;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.MovieClip")
extern class MovieClip extends Sprite
{
	
	public var textures:Array<Texture>;
	public var currentFrame:Int;
	public var animationSpeed:Int;
	public var playing:Bool;
	
	public function stop():Void;
	public function play():Void;
	public function gotoAndStop(frameNumber:Int):Void;
	public function gotoAndPlay(frameNumber:Int):Void;
	
	
	
	

	public function new():Void;
	
}