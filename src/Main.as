package
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Mars
	 */
	public class Main extends Sprite 
	{
		
		public function Main()
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
			super();
		}
		
		private var box:Box;
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			stage.scaleMode     = StageScaleMode.NO_SCALE;
			var ball:Ball = new Ball(); 
			//var britan:Britan = new Britan();
			box = new Box();
			stage.addChild(box);
			stage.addChild(ball);
			//stage.addChild(britan);
			//ball.addEventListener(Event.ENTER_FRAME, checkCollision);
			ball.Move();
			
		}
		
		//private function checkCollision(e:Event):void 
		//{
			//var ball:Ball = e.target;
			//for (var obj:* in box.array){
				////if (ball.hitTestObject(obj))
					////e.target.changeMove меняем направление
			//}
		//}
		
		override public function addChildAt(child:DisplayObject, index:int):DisplayObject 
		{
			return super.addChildAt(child, index);
		}
		
	}
	
}