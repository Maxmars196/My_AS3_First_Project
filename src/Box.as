package 
{
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;

	public class Box extends Sprite
	{	
		private var params:Array = [{width:100,height:100,point:new Point(10,10)},{},{},{}];
		public var array:Array = [];
		public function Box() 
		{
			super();
			if (stage) DrawBox();
			else addEventListener(Event.ADDED_TO_STAGE, DrawBox);			
		}
		
		public function DrawBox(e:Event = null):void
		{
			createObjetc();
		}
		
		private function createObjetc():void 
		{
			for each (var item:Object in params) 
			{
				var obj:BoxItem = new BoxItem(item);
				array.push(obj);
			}
			/*
			for (var i:int = 0; i < params.length; i++) 
			{
				var obj:BoxItem = new BoxItem(params[i]);
				
			}*/
		}
	}

}
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;

/**
 * стена
 */
internal class	BoxItem extends Sprite
{
	private var params:Object;
	
	public function BoxItem(params:Object=null):void 
	{
		params = params || {};
		if (stage) DrawBox();
		else addEventListener(Event.ADDED_TO_STAGE, DrawBox);
	}
	
	private function DrawBox(e:Event = null):void 
	{
		removeEventListener(Event.ADDED_TO_STAGE, DrawBox);
		// по нашим params рисуем стену
		var newbox:Shape = new Shape();	
		newbox.graphics.lineStyle(6, 0xFF0000);
		newbox.graphics.beginFill(0x555555);
		//newbox.graphics.drawRect(150, 150, 300, 300);
		newbox.graphics.moveTo(150, 150);
		newbox.graphics.lineTo(450, 150);
		newbox.graphics.lineTo(450, 450);
		newbox.graphics.endFill();
		addChild(newbox);
		
	}
}