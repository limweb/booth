////////////////////////////////////////////////////////////////////////////////
//
//  Ofir Shemesh - http://shemesh.wordpress.com
//  BMC Software, 2008
//
////////////////////////////////////////////////////////////////////////////////

package th.co.tomato.themes.shemesh.icons
{
	import flash.display.Graphics;
	import mx.skins.Border;

	public class DownArrow extends Border
	{
		public function DownArrow()
		{
			super();
		}
		
		override protected function updateDisplayList(w:Number, h:Number):void{
			super.updateDisplayList(w, h);
			
			var g:Graphics = graphics;
			g.clear();
			g.beginFill(0x000000, 1);
			g.moveTo(w / 2, h / 2 + 2.5);
			g.lineTo(w / 2 - 3.5, h / 2 - 1.5);
			g.lineTo(w / 2 + 3.5, h / 2 - 1.5);
			g.lineTo(w / 2, h / 2 + 2.5);
			g.endFill();
		}
		
	}
}