package th.co.tomato.utils {
	
//	import configs.Constants;
	
	import mx.controls.Alert;
	import mx.core.FlexGlobals;
	
	import th.co.tomato.main.MainConfig;
	

	public class MessageAlert {
		private static var alert:Alert;
		private static var title:String;
		
		public static function getSuccessAlert(textMsg:String):void {
//			title = ResourceManager.getInstance().getString('resources', 'gb.txt.caption.success');
			title = 'Success';
			alert = Alert.show(textMsg, title);
			alert.buttonMode = true;
			alert.titleIcon = MainConfig.getInstance.ICON_SUCCESS;
		}
		
		public static function getSuccessAlertListener(textMsg:String, myFunction:Function):void {
//			title = ResourceManager.getInstance().getString('resources', 'gb.txt.caption.success');
			title = 'Success';
			alert = Alert.show(textMsg, title, Alert.OK, null, myFunction);
			alert.buttonMode = true;
			alert.titleIcon = MainConfig.getInstance.ICON_SUCCESS;
		}
		
		public static function getWarningAlert(textMsg:String):void {
//			title = ResourceManager.getInstance().getString('resources', 'gb.txt.caption.warning');
			title = 'Warning';
			alert = Alert.show(textMsg, title);
			alert.buttonMode = true;
			alert.titleIcon = MainConfig.getInstance.ICON_WARNING;
		}
		
		public static function getErrorAlert(textMsg:String):void {
//				title = ResourceManager.getInstance().getString('resources', 'gb.txt.caption.error');
				title = 'Error';
				alert = Alert.show(textMsg, title);
				alert.buttonMode = true;
				alert.titleIcon = MainConfig.getInstance.ICON_ERROR;
		}
		
		public static function getErrorAlertListener(textMsg:String, myFunction:Function):void {
			if ( textMsg != MainConfig.ERR_SESSETION_TIME_OUT ) {
	//			title = ResourceManager.getInstance().getString('resources', 'gb.txt.caption.error');
				title = 'Error';
				alert = Alert.show(textMsg, title, Alert.OK, null, myFunction);
				alert.buttonMode = true;
				alert.titleIcon = MainConfig.getInstance.ICON_ERROR;
			} else {
				getErrorAlertListener(textMsg,FlexGlobals.topLevelApplication.sessionTimeout);
			}

		}
		
		
		public static function getConfirmAlertListener(textMsg:String, myFunction:Function):void {
//			title = ResourceManager.getInstance().getString('resources', 'gb.txt.caption.confirm');
			title = 'Confirm';
			alert = Alert.show(textMsg, title, Alert.YES|Alert.NO, null, myFunction );
			alert.buttonMode = true;
			alert.titleIcon = MainConfig.getInstance.ICON_CONFIRM;
		}
	}
}