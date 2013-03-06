package pixi;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.MovieClip");
extern class MovieClip extends Sprite
{
	
	public var textures:Array<Texture>;
	public var currentFrame:UInt;
	public var animationSpeed:UInt;
	public var playing:Bool;
	
	public function stop():Void;
	public function play():Void;
	public function gotoAndStop(frameNumber:UInt):Void;
	public function gotoAndPlay(frameNumber:UInt):Void;
	
	
	
	

	public function new() 
	{
		
	}
	
}