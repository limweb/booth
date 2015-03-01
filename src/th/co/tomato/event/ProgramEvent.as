package th.co.tomato.event
{
	import mx.controls.Alert;
	import mx.rpc.AsyncToken;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.remoting.RemoteObject;
	import mx.utils.ObjectUtil;
	
	import th.co.tomato.main.MainConfig;
	import th.co.tomato.model.ProgramItem;
	import th.co.tomato.model.Savepic;
	import th.co.tomato.utils.ErrorMsg;
	import th.co.tomato.utils.MessageAlert;

	public class ProgramEvent extends BaseEvent
	{
		
		private var service:RemoteObject;
		private var pit:ProgramItem = new ProgramItem();
		private static var _instance:ProgramEvent = new ProgramEvent();
		
		public  function ProgramEvent() {
			//TODO: implement function
			super();
			if (_instance != null)
			{
				throw new Error("Singleton can only be accessed through Singleton.instance");
			}
			
			
			//------  for PHP service ----------------------
			service = new RemoteObject();
			service.destination = 'zendamf';
			service.source = 'ProgramsService';
			service.endpoint = 'http://127.0.0.1/tvschedulenew/gateway.php';
			//------ end for php Service -------------------
			
			
			//			programsrv.getDataManager(tb1Service.DATA_MANAGER_TB1).autoCommit = true;
			//			programsrv.getDataManager(tb1Service.DATA_MANAGER_TB1).commitRequired
		}
		
		public static function get instance():ProgramEvent
		{
			return _instance;
		}
		
		
		public function getAll(page:Object):AsyncToken {
			MainConfig.getInstance.showProgressBar();
			var asyncToken:AsyncToken = service.getAll(MainConfig.getInstance.userModel.userid);
			return getAsyncResponder(asyncToken, result_getAll, fault_getAll,page);
		}
		
		private function result_getAll(event:ResultEvent, token:Object):void {
		

			Alert.show(ObjectUtil.toString(event.result));
			MainConfig.getInstance.hideProgressBar();
		}
		
		private function fault_getAll(event:FaultEvent, token:Object):void {
			MainConfig.getInstance.hideProgressBar();
			MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
		}
		
		
		public function updateItem(item:Object,picdata:Savepic,page:Object):AsyncToken {
			var asyncToken:AsyncToken = service.updateItem(MainConfig.getInstance.userModel.userid,item,picdata);
			return getAsyncResponder(asyncToken, result_updateItem, fault_updateItem,page);
		}
		
		private function result_updateItem(event:ResultEvent, token:Object):void {
			if(token != null){
				token.getAllItem();
			}
		}
		
		private function fault_updateItem(event:FaultEvent, token:Object):void {
			MainConfig.getInstance.hideProgressBar();
			MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
		}
		
		
		
		public function createItem(item:Object,picdata:Savepic,page:Object):AsyncToken {
			var asyncToken:AsyncToken = service.createItem(MainConfig.getInstance.userModel.userid,item,picdata);
			return getAsyncResponder(asyncToken, result_createItem, fault_createItem,page);
		}
		
		private function result_createItem(event:ResultEvent, token:Object):void {
			if(token != null){
				token.getAllItem();
			}
		}
		
		private function fault_createItem(event:FaultEvent, token:Object):void {
			MainConfig.getInstance.hideProgressBar();
			MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
		}
		
		
		
		//		public function xxxx(xx:String,page:Object):AsyncToken {
		//			var asyncToken:AsyncToken = service.xxxx(xx);
		//			return getAsyncResponder(asyncToken, result_xxxx, fault_xxxx,page);
		//		}
		//		
		//		private function result_xxxx(event:ResultEvent, token:Object):void {
		//			if(token != null){
		//				token.xxxxSuccess(event.result as ArrayCollection	);
		//			}
		//		}
		//		
		//		private function fault_xxxx(event:FaultEvent, token:Object):void {
		//			MainConfig.hideProgressBar();
		//			MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
		//		}

	}
}