package pixi;

/**
 * ...
 * @author niraj
 */
@:native("PIXI.WebGLBatch")
extern class WebGLBatch
{

public function clean ():Void;
	public function growBatch ():Void;
	public function init (sprite:Sprite):Void;
	public function insertAfter (sprite:Sprite, previousSprite:Sprite):Void;
	public function insertBefore (sprite:Sprite, nextSprite:Sprite):Void;
	public function merge (batch:WebGLBatch):Void;
	public function refresh ():Void;
	public function remove (sprite:Sprite):Void;
	public function render ():Void;
	public function split (sprite:Sprite):WebGLBatch;
	public function update ():Void;

	
}