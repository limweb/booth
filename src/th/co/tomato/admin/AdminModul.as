package th.co.tomato.admin
{
	import mx.collections.ArrayCollection;

	public class AdminModul {
		private static var _instance:AdminModul = new AdminModul();	

		public function AdminModul()
		{
			if(_instance != null){
				throw new Error("Singleton can only be accessed through Singleton.instance");
			}
			
			vAD = new AdminMain();
			trace('new AdminModule');
		}

		public static function get getInstance():AdminModul {
			return _instance;
		}
		
		[Bindable] public var vAD:AdminMain; // = new AdminMain();
		
		[Bindable] public  var acUser:ArrayCollection = new ArrayCollection();
		[Bindable] public  var acUserList:ArrayCollection = new ArrayCollection();
		[Bindable] public  var acRole:ArrayCollection = new ArrayCollection();
		[Bindable] public  var acLogs:ArrayCollection = new ArrayCollection();
		[Bindable] public  var acImpType:ArrayCollection = new ArrayCollection();

		
	}
}