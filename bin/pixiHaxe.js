(function () { "use strict";
var js = {}
js.Browser = function() { }
var pixi = {}
pixi.Global = function() { }
pixi.Global.request = function(method) {
	var requestAnimationFrame = window.requestAnimationFrame || (window.webkitRequestAnimationFrame || (window.mozRequestAnimationFrame || (window.oRequestAnimationFrame || (window.msRequestAnimationFrame || function(method1,element) {
		window.setTimeout(method1,1000 / 60);
	}))));
	requestAnimationFrame(method);
}
var test = {}
test.Main = function() { }
test.Main.animate = function() {
	pixi.Global.request(test.Main.animate);
	var _g = 0;
	while(_g < 100) {
		var i = _g++;
		var alien = test.Main.aliens[i];
		alien.rotation += 0.1;
	}
	test.Main.count += 0.01;
	test.Main.alienContainer.scale.x = Math.sin(test.Main.count);
	test.Main.alienContainer.scale.y = Math.sin(test.Main.count);
	test.Main.alienContainer.rotation += 0.01;
	test.Main.renderer.render(test.Main.stage);
}
test.Main.onAssetsLoaded = function() {
	var _g = 0;
	while(_g < 100) {
		var i = _g++;
		var frameName = test.Main.alienFrames[i % 4];
		var alien = PIXI.Sprite.fromFrame(frameName);
		alien.position.x = Math.random() * 800 - 400;
		alien.position.y = Math.random() * 600 - 300;
		alien.anchor.x = 0.5;
		alien.anchor.y = 0.5;
		test.Main.aliens.push(alien);
		test.Main.alienContainer.addChild(alien);
	}
	pixi.Global.request(test.Main.animate);
}
test.Main.main = function() {
	var assetsToLoader = ["SpriteSheet.json"];
	var loader = new PIXI.AssetLoader(assetsToLoader);
	loader.onComplete = test.Main.onAssetsLoaded;
	loader.load();
	test.Main.renderer = PIXI.autoDetectRenderer(800,600);
	js.Browser.document.body.appendChild(test.Main.renderer.view);
	test.Main.alienContainer.position.x = 400;
	test.Main.alienContainer.position.y = 300;
	test.Main.stage.addChild(test.Main.alienContainer);
}
Math.__name__ = ["Math"];
Math.NaN = Number.NaN;
Math.NEGATIVE_INFINITY = Number.NEGATIVE_INFINITY;
Math.POSITIVE_INFINITY = Number.POSITIVE_INFINITY;
Math.isFinite = function(i) {
	return isFinite(i);
};
Math.isNaN = function(i) {
	return isNaN(i);
};
js.Browser.document = typeof window != "undefined" ? window.document : null;
test.Main.aliens = [];
test.Main.count = 0;
test.Main.alienFrames = ["eggHead.png","flowerTop.png","helmlok.png","skully.png"];
test.Main.alienContainer = new PIXI.DisplayObjectContainer();
test.Main.stage = new PIXI.Stage(16777215,false);
test.Main.main();
})();
