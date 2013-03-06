package pixi;
import js.Dom;
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

			function (method:Dynamic, ?element:HtmlDom):Void {

				untyped window.setTimeout (method, 1000 / 60);

			}

		requestAnimationFrame (method);	

	}

	

}