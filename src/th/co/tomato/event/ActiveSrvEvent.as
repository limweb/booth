package th.co.tomato.event
{
	import mx.collections.ArrayCollection;
	import mx.rpc.AsyncToken;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	
	import th.co.tomato.main.MainConfig;
	import th.co.tomato.samples.ActiveService;
	import th.co.tomato.utils.ErrorMsg;
	import th.co.tomato.utils.MessageAlert;

	public class ActiveSrvEvent extends BaseEvent
	{
		private static var  _instance:ActiveSrvEvent =  new  ActiveSrvEvent();
		
		public function ActiveSrvEvent()
		{
			super();
			if (_instance != null)
			{
				throw new Error("Singleton can only be accessed through Singleton.instance");
			}
		}
		
		public static function get getInstance(): ActiveSrvEvent {
			return _instance;
			
		}
		
		private var service:ActiveService = new ActiveService();
		
		public function getActive(page:Object):AsyncToken { 
			var asyncToken:AsyncToken = createToken(service.genActive());
			return getAsyncResponder(asyncToken, result_getActive, fault_getActive,page);
		}
		
		private function result_getActive(event:ResultEvent, token:Object):void {
				MainConfig.getInstance.acActive = event.result as ArrayCollection;
		}
		
		private function fault_getActive(event:FaultEvent, token:Object):void {
			MainConfig.getInstance.hideProgressBar();
			MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
		}
		
		
		public function getActiveAll(page:Object):AsyncToken {
			var asyncToken:AsyncToken = createToken(service.getActiveAll());
			return getAsyncResponder(asyncToken, result_getActiveAll, fault_getActiveAll,page);
		}
		
		private function result_getActiveAll(event:ResultEvent, token:Object):void {
			MainConfig.getInstance.acActiveAll = event.result as ArrayCollection;
		}
		
		private function fault_getActiveAll(event:FaultEvent, token:Object):void {
			MainConfig.getInstance.hideProgressBar();
			MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
		}
		
	
	}
}