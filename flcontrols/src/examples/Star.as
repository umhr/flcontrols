package examples 
{
	
	import flash.display.Sprite;
	/**
	 * ...
	 * @author umhr
	 */
	public class Star extends Sprite 
	{
		
		public function Star() 
		{
			init();
		}
		private function init():void 
		{
			graphics.beginFill(Math.random()*0xFFFFFF);
			graphics.drawCircle(20, 20, 20);
			graphics.endFill();
		}
		
	}
	
}