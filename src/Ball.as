package 
{
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	
	public class Ball extends Sprite 
	{
		public var velocityX:int = 8
		public var velocityY:int = 9
		private var radius:uint = 40;
		private var diameter:uint = radius * 2;
		private var position:Point = new Point(radius,radius);
		public function Ball() 
		{
			super();
			if (stage) DrawBall();
			else addEventListener(Event.ADDED_TO_STAGE, DrawBall);
		}
		
		public function DrawBall(e:Event = null):void
		{
			var shape:Shape = new Shape();
			shape.graphics.beginFill(0x000000);
			shape.graphics.drawCircle(position.x, position.y, radius);
			shape.graphics.endFill();
			addChild(shape);
		}
		
		public function Move():void
		{
			this.addEventListener(Event.ENTER_FRAME, OnMove)
		}
		
		private function OnMove(e:Event):void 
		{
			this.x += velocityX;
			if (this.x >= stage.stageWidth - diameter || this.x <= 0) 
			{
				velocityX *= -1;
			} 
			
			this.y += velocityY;
			if (this.y >= stage.stageHeight - diameter || this.y <= 0 ) 
			{
				velocityY *= -1;
			} 
		}
	}

}