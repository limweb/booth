package th.co.tomato.model
{
	import flash.utils.ByteArray;

	public class Savepic
	{
		private  var _dfpic:ByteArray;
		private	var _dfsavepic:int;
		public var picname:String;
		
		public function Savepic()
		{
			pic = new ByteArray();
			savepic = 0;
			picname = '';	
		}

		public function get savepic():int
		{
			return _dfsavepic;
		}

		public function set savepic(value:int):void
		{
			_dfsavepic = value;
		}

		public function get pic():ByteArray
		{
			return _dfpic;
		}

		public function set pic(value:ByteArray):void
		{
			_dfpic = value;
			_dfsavepic = 1;
		}


	}
}