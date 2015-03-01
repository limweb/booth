package th.co.tomato.event
{
	import mx.collections.ArrayCollection;
	import mx.rpc.AsyncToken;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	
	import th.co.tomato.main.MainConfig;
	import th.co.tomato.samples.StatusService;
	import th.co.tomato.utils.ErrorMsg;
	import th.co.tomato.utils.MessageAlert;

	public class StatusEvent extends BaseEvent
	{
		private static var  _instance:StatusEvent =  new  StatusEvent();
		
		public function StatusEvent()
		{
			super();
			if (_instance != null)
			{
				throw new Error("Singleton can only be accessed through Singleton.instance");
			}
		}
		
		public static function get getInstance(): StatusEvent {
			return _instance;
			
		}
		
		private var service:StatusService = new StatusService();
		
		public function getStatus(page:Object):AsyncToken { 
			var asyncToken:AsyncToken = createToken(service.getStatus());
			return getAsyncResponder(asyncToken, result_getStatus, fault_getStatus,page);
		}
		
		private function result_getStatus(event:ResultEvent, token:Object):void {
			MainConfig.getInstance.acStatus = event.result as ArrayCollection;
		}
		
		private function fault_getStatus(event:FaultEvent, token:Object):void {
			MainConfig.getInstance.hideProgressBar();
			MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
		}
		
		public function getStatusAll(page:Object):AsyncToken { 
			var asyncToken:AsyncToken = createToken(service.getStatusAll());
			return getAsyncResponder(asyncToken, result_getStatusAll, fault_getStatusAll,page);
		}
		
		private function result_getStatusAll(event:ResultEvent, token:Object):void {
			MainConfig.getInstance.acStatusAll  = event.result as ArrayCollection;
		}
		
		private function fault_getStatusAll(event:FaultEvent, token:Object):void {
			MainConfig.getInstance.hideProgressBar();
			MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
		}
		
		
		
		
		
		
		
		
		
	
	}
}