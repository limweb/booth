package th.co.tomato.model
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class UserModel
	{
		public var roll : String;
		public var status : String;
		public var workdate : String;
		public var userid : String;
		public var server_date : String;
		public var comment : String;
		public var roles : ArrayCollection;
		public var name:String;
		
		
		public function Rolls(m:String):Boolean {
			
			if(m == 'user') return true;
			
			var chk:Boolean = false;
			if(roles!= null ) {
				for (var i:int = 0; i < roles.length; i++) 
				{	
					if(roles[i] == m   ){
						chk = true;
						break;
					}
				}
			}
			return chk;
		}
	}
}