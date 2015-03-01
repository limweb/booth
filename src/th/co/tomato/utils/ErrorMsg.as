package th.co.tomato.utils {
	
	import mx.core.FlexGlobals;
	import mx.rpc.events.FaultEvent;
	
	import th.co.tomato.main.MainConfig;
	

	

	
	public class ErrorMsg {
		
		public static function getErrorMsg(event:FaultEvent):String {
			var msg:String = "";
			if ( event.fault.faultCode == "Client.Error.DeliveryInDoubt" || event.fault.faultCode == "Client.Error.MessageSend" ) {
				msg = MainConfig.ERR_SESSETION_TIME_OUT;
			} else {
				if ( event.fault.rootCause != null ) {
					if ( event.fault.rootCause.hasOwnProperty("msgEn") && event.fault.rootCause.hasOwnProperty("msgTh") ) {
						if ( FlexGlobals.topLevelApplication.currLocale == 'th_TH' ) {
							msg = event.fault.rootCause.msgTh;
						} else if ( FlexGlobals.topLevelApplication.currLocale == 'en_US' ) {
							msg = event.fault.rootCause.msgEn;
						}
					} else {
						try {
							msg = event.fault.rootCause.message;
						} catch ( e:Error ) {
							msg = event.fault.faultDetail;
						}
					}
				} else {
					msg = event.fault.faultDetail;
				}
			}
			return msg;
		}
		
		public static function isOldVersion(event:FaultEvent):Boolean {
			var isOld:Boolean = false;
			if ( event.fault.rootCause.hasOwnProperty("isIncorrectVersion") ) {
				isOld = event.fault.rootCause.isIncorrectVersion;
			}
			return isOld;
		}
		
		public static function isDataNotFound(event:FaultEvent):Boolean {
			var isNotFound:Boolean = false;
			if ( event.fault.rootCause.hasOwnProperty("isDocumentNotFound") ) {
				isNotFound = event.fault.rootCause.isDocumentNotFound;
			}
			return isNotFound;
		}
	}
}