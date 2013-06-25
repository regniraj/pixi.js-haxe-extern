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
extern class CommonRenderer
{

	
		public var view:Dynamic;
		public function render (stage:Stage):Void;

	
}