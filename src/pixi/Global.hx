package pixi;

#if haxe3
import js.html.HtmlElement;
#else
import js.Dom;
#end

/**
 * ...
 * @author niraj
 */
 class Global
{
	
public static function request (method:Dynamic):Void {

		var requestAnimationFrame:Dynamic = 

			untyped window.requestAnimationFrame || 
			untyped window.webkitRequestAnimationFrame || 
			untyped window.mozRequestAnimationFrame || 
			untyped window.oRequestAnimationFrame || 
			untyped window.msRequestAnimationFrame || 
#if haxe3
			function (method:Dynamic, ?element:HtmlElement):Void {
#else
			function (method:Dynamic, ?element:HtmlDom):Void {
#end
				untyped window.setTimeout (method, 1000 / 60);

			}

		requestAnimationFrame (method);	

	}

	

}