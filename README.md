pixi.js-haxe-extern
===================
small  extern to be used with haxe js 
<a href="https://github.com/GoodBoyDigital/pixi.js">pixi.js</a>
demo using pixi.js-haxe-extern <br/>

### Usage ###

```haxe

package test;

import js.Dom;
import js.Lib;
import pixi.AssetLoader;
import pixi.CommonRenderer;
import pixi.DisplayObjectContainer;
import pixi.Global;
import pixi.PIXI;
import pixi.Sprite;
import pixi.Stage;
import pixi.WebGLRenderer;

class Main 
{

	
static	var aliens:Array<Dynamic> = [];
static 	var count:Float = 0;
static var  alienFrames:Array<String> = ["eggHead.png", "flowerTop.png", "helmlok.png", "skully.png"];
static var alienContainer:DisplayObjectContainer = new DisplayObjectContainer();
static var renderer:CommonRenderer ;
static var stage:Stage = new Stage(0xFFFFFF);
	
	static	function animate() {
	
	    Global.request(animate);	
	    // just for fun, lets rotate mr rabbit a little
	    for ( i in 0...100) 
		{
			var alien = aliens[i];
			alien.rotation += 0.1;
		}
		
		count += 0.01;
		alienContainer.scale.x = Math.sin(count);
		alienContainer.scale.y = Math.sin(count);
		
		alienContainer.rotation += 0.01;
	    // render the stage   
	    renderer.render(stage);
	}
	
	
	static	function onAssetsLoaded()
	{
		
		// create a texture from an image path
		// add a bunch of aliens
		for (i in 0...100) 
		{
			var frameName = alienFrames[i % 4];
			
			// create an alien using the frame name..
			var alien = Sprite.fromFrame(frameName);
			
			/*
			 * fun fact for the day :)
			 * another way of doing the above would be
			 * var texture = PIXI.Texture.fromFrame(frameName);
			 * var alien = new PIXI.Sprite(texture);
			 */
			
			alien.position.x = Math.random() * 800 - 400;
			alien.position.y = Math.random() * 600 - 300;
			alien.anchor.x = 0.5;
			alien.anchor.y = 0.5;
			aliens.push(alien);
			alienContainer.addChild(alien);
		}
		
		// start animating
		Global.request( animate );
		
		
	}	
	
	
	static function main() 
	{
		// create an array of assets to load
	var assetsToLoader:Array<String> = [ "SpriteSheet.json"];
	
	// create a new loader
	var loader:AssetLoader = new AssetLoader(assetsToLoader);
	
	// use callback
	loader.onComplete = onAssetsLoaded;
	
	//begin load
	loader.load();
	
	
	// holder to store aliens
	
	
	

		
	// create an new instance of a pixi stage
	
	
	// create a renderer instance.
renderer= PIXI.autoDetectRenderer(800, 600);
		
	// add the renderer view element to the DOM
	
	
		Lib.document.body.appendChild(renderer.view);
	
	
	// create an empty container
	
	alienContainer.position.x = 400;
	alienContainer.position.y = 300;
	
	stage.addChild(alienContainer);
	

	


	}
	
}
```

outputs
<a href="https://dl.dropbox.com/u/5114622/pixi-haxe-demo/index.html">Demo link</a>
