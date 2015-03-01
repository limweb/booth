package th.co.tomato.event
{
	import mx.controls.Alert;
	import mx.rpc.AsyncToken;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.remoting.RemoteObject;
	import mx.utils.ObjectUtil;
	
	import th.co.tomato.main.MainConfig;
	import th.co.tomato.model.ProductJavaModel;
	import th.co.tomato.utils.ErrorMsg;
	import th.co.tomato.utils.MessageAlert;

	public class TlenSrvEvent extends BaseEvent
	{
		private static var  _instance:TlenSrvEvent =  new  TlenSrvEvent();
		private var service:RemoteObject;
		public function TlenSrvEvent()
		{
			super();
			if (_instance != null)
			{
				throw new Error("Singleton can only be accessed through Singleton.instance");
			}
		//---------- service for java -----------------------------------------				
			service = new RemoteObject();
			service.destination = 'tlenService';
			service.endpoint = getEnpoint('sphb');
//			service.endpoint = 'http://localhost:8080/sphb/messagebroker/amf';
			var pd:ProductJavaModel = new ProductJavaModel();
		//---------- end service for java 	
		}
		
		public static function get getInstance(): TlenSrvEvent {
			return _instance;
			
		}
		
		public function selectAll(page:Object=null):AsyncToken { 
			var asyncToken:AsyncToken = service.selectAll();
			return getAsyncResponder(asyncToken, result_selectAll, fault_selectAll,page);
		}
		
		private function result_selectAll(event:ResultEvent, token:Object):void {
			Alert.show(ObjectUtil.toString(event.result));
		}
		
		private function fault_selectAll(event:FaultEvent, token:Object):void {
			MainConfig.getInstance.hideProgressBar();
			MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
		}
		
		
		
		
		
	}
}