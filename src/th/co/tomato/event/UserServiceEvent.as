package th.co.tomato.event
{
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.core.FlexGlobals;
	import mx.rpc.AsyncToken;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	
	import th.co.tomato.admin.AdminModul;
	import th.co.tomato.admin.SearchLog;
	import th.co.tomato.main.MainConfig;
	import th.co.tomato.model.UserModel;
	import th.co.tomato.samples.UserService;
	import th.co.tomato.utils.ErrorMsg;
	import th.co.tomato.utils.MessageAlert;
	import th.co.tomato.utils.MyClass;

	public class UserServiceEvent extends BaseEvent
	{
				private static var _instance:UserServiceEvent = new UserServiceEvent();
		
				public function UserServiceEvent()
				{
					if (_instance != null)
					{
						throw new Error("Singleton can only be accessed through Singleton.instance");
					}
				}
				
				public static function get instance():UserServiceEvent
				{
					return _instance;
				}
		
				private var service:UserService = new UserService();
		
				
				//getAlluser
//				public function getAlluser(page:Object):AsyncToken {
//					var asyncToken:AsyncToken = service.getAll(MainConfig.getInstance.userModel.userid);
//					return getAsyncResponder(asyncToken, result_getAlluser, fault_getAlluser,page);
//				}
//				
//				private function result_getAlluser(event:ResultEvent, token:Object):void {
//					if(token != null){
//						token.getAllUsers_resultHandler(event.result as ArrayCollection	);
//					}
//				}
//				
//				private function fault_getAlluser(event:FaultEvent, token:Object):void {
//					MainConfig.getInstance.hideProgressBar();
//					MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
//				}
//		
				
				
				// updateItem
//				public function updateItem(item:User,page:Object):AsyncToken {
//					var asyncToken:AsyncToken = service.updateItem(MainConfig.getInstance.userModel.userid,item);
//					return getAsyncResponder(asyncToken, result_updateItem, fault_updateItem,page);
//				}
//				
//				private function result_updateItem(event:ResultEvent, token:Object):void {
//					if(token != null){
//						token.updateItemResult_resultHandler();
//					}
//				}
//				
//				private function fault_updateItem(event:FaultEvent, token:Object):void {
//					MainConfig.getInstance.hideProgressBar();
//					MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
//				}

				
				//			changpass	
//				public function changpass(usrid:String,oldpass:String,newpass:String,page:Object):AsyncToken {
//					var asyncToken:AsyncToken = service.changpass(MainConfig.getInstance.userModel.userid,usrid,oldpass,newpass);
//					return getAsyncResponder(asyncToken, result_changpass, fault_changpass,page);
//				}
//				
//				private function result_changpass(event:ResultEvent, token:Object):void {
//					if(token != null){
//						token.changpassSuccess(event.result as ArrayCollection	);
//					}
//				}
//				
//				private function fault_changpass(event:FaultEvent, token:Object):void {
//					MainConfig.getInstance.hideProgressBar();
//					MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
//				}
				
			
				//resetDefaultPass		
//				public function resetDefaultPass(userid:String,page:Object):AsyncToken {
//					var asyncToken:AsyncToken = service.resetDefaultPass(MainConfig.getInstance.userModel.userid,userid);
//					return getAsyncResponder(asyncToken, result_resetDefaultPass, fault_resetDefaultPass,page);
//				}
//				
//				private function result_resetDefaultPass(event:ResultEvent, token:Object):void {
//					MessageAlert.getSuccessAlert('Reset Password Successed');
//				}
//				
//				private function fault_resetDefaultPass(event:FaultEvent, token:Object):void {
//					MainConfig.getInstance.hideProgressBar();
//					MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
//				}
		
		
		
				
				//createItem
//				public function createItem(item:User,page:Object):AsyncToken {
//					var asyncToken:AsyncToken = service.createItem(MainConfig.getInstance.userModel.userid,item);
//					return getAsyncResponder(asyncToken, result_createItem, fault_createItem,page);
//				}
//				
//				private function result_createItem(event:ResultEvent, token:Object):void {
//					if(token != null){
//						token.createItemResult_resultHandler();
//					}
//				}
//				
//				private function fault_createItem(event:FaultEvent, token:Object):void {
//					MainConfig.getInstance.hideProgressBar();
//					MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
//				}
		
				//delByID
//				public function delByID(userid:String,page:Object):AsyncToken {
//					var asyncToken:AsyncToken = service.delByID(MainConfig.getInstance.userModel.userid,userid);
//					return getAsyncResponder(asyncToken, result_delByID, fault_delByID,page);
//				}
//				
//				private function result_delByID(event:ResultEvent, token:Object):void {
//					if(token != null){
//						token.delByIDResult_resultHandler();
//					}
//				}
//				
//				private function fault_delByID(event:FaultEvent, token:Object):void {
//					MainConfig.getInstance.hideProgressBar();
//					MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
//				}
				
				
				
				//getsystemlogbyuser(userid);
				
				
//				public function getsystemlogbyuser(userid:String,page:Object):AsyncToken {
//					var asyncToken:AsyncToken = service.getsystemlogbyuser(userid);
//					return getAsyncResponder(asyncToken, result_getsystemlogbyuser, fault_getsystemlogbyuser,page);
//				}
//				
//				private function result_getsystemlogbyuser(event:ResultEvent, token:Object):void {
//					if(token != null){
//						AdminModul.getInstance.acLogs = event.result as ArrayCollection;
//						AdminModul.getInstance.vAD.tbnav.selectedIndex = 1;
//					}
//					MainConfig.getInstance.hideProgressBar();
//				}
//				
//				private function fault_getsystemlogbyuser(event:FaultEvent, token:Object):void {
//					MainConfig.getInstance.hideProgressBar();
//					MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
//				}
		
				
				
//				public function listImportLog(page:Object):AsyncToken {
//					var asyncToken:AsyncToken = service.listImportLog();
//					return getAsyncResponder(asyncToken, result_listImportLog, fault_listImportLog,page);
//				}
//				
//				private function result_listImportLog(event:ResultEvent, token:Object):void {
//					AdminModul.getInstance.acLogs = event.result as ArrayCollection;
//					MyClass.instance.notificeCount = 0;
//					MainConfig.getInstance.hideProgressBar();
//				}
//				
//				private function fault_listImportLog(event:FaultEvent, token:Object):void {
//					MainConfig.getInstance.hideProgressBar();
//					MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
//				}
//		
				
		
//				public function countspNotification(page:Object=null):AsyncToken {
//					var asyncToken:AsyncToken = service.countspNotification();
//					return getAsyncResponder(asyncToken, result_countspNotification, fault_countspNotification,page);
//				}
//				
//				private function result_countspNotification(event:ResultEvent, token:Object):void {
//						MyClass.instance.notificeCount = event.result as int;
//				}
//				
//				private function fault_countspNotification(event:FaultEvent, token:Object):void {
//					MainConfig.getInstance.hideProgressBar();
//					MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
//				}
		
		
//				public function ImportType(page:Object):AsyncToken {
//					var asyncToken:AsyncToken = service.ImportType();
//					return getAsyncResponder(asyncToken, result_ImportType, fault_ImportType,page);
//				}
//				
//				private function result_ImportType(event:ResultEvent, token:Object):void {
//					var ac:ArrayCollection = event.result as ArrayCollection;
//					var imt:ImpType = new ImpType();
//					imt.types = 'ALL';
//					ac.addItemAt(imt,0);
//					AdminModul.getInstance.acImpType = ac;
//				}
//				
//				private function fault_ImportType(event:FaultEvent, token:Object):void {
//					MainConfig.getInstance.hideProgressBar();
//					MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
//				}


				
				//searchLogs
//				public function searchLogs(sl:SearchLog,page:Object):AsyncToken {
//					var asyncToken:AsyncToken = service.searchLogs(sl);
//					return getAsyncResponder(asyncToken, result_searchLogs, fault_searchLogs,page);
//				}
//				
//				private function result_searchLogs(event:ResultEvent, token:Object):void {
//					AdminModul.getInstance.acLogs = event.result as ArrayCollection;
//					MainConfig.getInstance.hideProgressBar();
//				}
//				
//				private function fault_searchLogs(event:FaultEvent, token:Object):void {
//					MainConfig.getInstance.hideProgressBar();
//					MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
//				}

				
				
				//deleteLogs
		
//				public function deleteLogs(sl:SearchLog):AsyncToken {
//					MainConfig.getInstance.showProgressBar();
//					var asyncToken:AsyncToken = service.deleteLogs(sl);
//					return getAsyncResponder(asyncToken, result_deleteLogs, fault_deleteLogs,null);
//				}
//				
//				private function result_deleteLogs(event:ResultEvent, token:Object):void {
//					   MainConfig.getInstance.hideProgressBar();
//					   MessageAlert.getSuccessAlert('Delete Logs Successed.');
//				}
//				
//				private function fault_deleteLogs(event:FaultEvent, token:Object):void {
//					MainConfig.getInstance.hideProgressBar();
//					MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
//				}


				
				
		
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


				
				public function getUserByID(username:String,password:String,page:Object):AsyncToken { 
					service.endpoint = MainConfig.endpoint;
					var asyncToken:AsyncToken = createToken(service.getUserByID(username,password));
					return getAsyncResponder(asyncToken, result_getUserByID, fault_getUserByID,page);
				}
				
				private function result_getUserByID(event:ResultEvent, token:Object):void {
					if(event.result){
						MainConfig.getInstance.userModel = event.result as UserModel;
						if(MainConfig.getInstance.userModel.Rolls('TV','LIST') || MainConfig.getInstance.userModel.Rolls('AD','LIST')  ){
							FlexGlobals.topLevelApplication.gotoMain();
						} else {
							MessageAlert.getWarningAlert('ท่านไม่มีสิทธิ์ ใช้งาน กรุณาติดต่อ Admin');
						}
					} else {
						MessageAlert.getWarningAlert('กรุณาติดต่อ Admin');
					}
				}
				
				private function fault_getUserByID(event:FaultEvent, token:Object):void {
					MainConfig.getInstance.hideProgressBar();
					MessageAlert.getErrorAlert(ErrorMsg.getErrorMsg(event));
				}
				
				
		
		
		
	}
}