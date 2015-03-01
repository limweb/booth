package th.co.tomato.themes.component.searchtextinput
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import spark.components.Button;
	import spark.components.TextInput;
	
	[Event(name="TXTSEARCH", type="flash.events.Event")]
	public class SearchTextinput extends TextInput
	{
		
		[SkinPart(required="true")]
		public var searchBtn:Button;
		
		override protected function partAdded(partName:String, instance:Object):void
		{
			super.partAdded(partName, instance);
			if ( instance == searchBtn )
			{
				searchBtn.addEventListener(MouseEvent.CLICK, searchBtnClick);
			}			
		}
		
		protected function searchBtnClick(event:MouseEvent):void
		{
			this.dispatchEvent(new Event('TXTSEARCH'));
		}		
		
		public function SearchTextinput()
		{
			super();
		}
		
	}
}