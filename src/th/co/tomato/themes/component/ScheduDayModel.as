package th.co.tomato.themes.component
{
	import mx.controls.DateField;

	public class ScheduDayModel
	{
		public var month:int= -1;
		public var day:int = -1;
		public var year:int = -1;
		
		public function ScheduDayModel()
		{
		}
		
		public function getDay():String {
			return  DateField.dateToString(new Date(year,month-1,day),'YYYY-MM-DD');
		}
	}
}