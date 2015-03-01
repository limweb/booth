package th.co.tomato.utils
{
	public class MyClass
	{
	
		private static var _instance:MyClass = new MyClass();
		
		public function MyClass()
		{
			if (_instance != null)
			{
				throw new Error("Singleton can only be accessed through Singleton.instance");
			}
		}
		
		public static function get instance():MyClass
		{
			return _instance;
		}
	
		
		[Bindable] public var notificeCount:int = 0;
		
	}
}