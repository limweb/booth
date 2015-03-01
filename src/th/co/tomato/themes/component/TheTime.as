package th.co.tomato.themes.component
{
	public class TheTime{
		
		static private var theDate:Date;
		static private var seconds:Number;
		static private var minutes:Number;
		static private var hours:Number;
		static private var ampm:String;
		static private var theTime:String;
		
		public function TheTime(){
		}
		
		static public function getTime():String{
			// create time segments
			theDate = new Date();
			seconds = theDate.getSeconds();
			minutes = theDate.getMinutes();
			hours = theDate.getHours();
			
			// create vars for sec and min
			var sec:String = seconds.toString();
			var min:String = minutes.toString();
			
			// set seconds, minutes, hours, and am/pm depending on actual time
			sec = (sec.length == 1) ? '0' + seconds.toString() : sec;
			min = (min.length == 1) ? '0' + minutes.toString() : min;
			hours = (hours >= 13) ? hours - 12 : hours;
			ampm = (hours >= 12) ? 'pm' : 'am';
			
			// set time string
			theTime = hours +':'+ min +':'+ sec +' '+ ampm;
			return theTime;
		}
	}

}