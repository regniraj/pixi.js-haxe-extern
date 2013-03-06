package pixi;

/**
 * ...
 * @author niraj
 */
@:native("PIXI")
 extern  class PIXI
{
	
	public static function autoDetectRenderer(width:Int, height:Int):CommonRenderer;
	public static var batch:Array<Dynamic>;
	public static function CompileVertexShader(gl:Dynamic, shader:Array<String>):Dynamic;
	public static function CompileFragmentShader(gl:Dynamic, shader:Array<String>):Dynamic;


}