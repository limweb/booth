package th.co.tomato.samples.data {
	import mx.messaging.channels.StreamingAMFChannel;
	import mx.utils.UIDUtil;
	
	[Bindable]
	public class MyObj {
		public var id:String;
		public var name:String;
		public var icontxt:String;
		public var children:Array;
		
		public function MyObj(name:String = '',icontxt:String='') {
			id = UIDUtil.createUID();
			this.name = name;
			this.icontxt = icontxt;	
			this.children = [];
		}
	}
}