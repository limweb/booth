package  th.co.tomato.context 	
{
	import flash.system.Capabilities;
	
	import mx.core.DPIClassification;
	import mx.core.RuntimeDPIProvider;
	
	public class SpecialCaseMapping extends RuntimeDPIProvider {
		public function SpecialCaseMapping() {
		}
		
		override public function get runtimeDPI():Number {
			/* A tablet reporting an incorrect DPI of 240. We could use
			Capabilities.manufacturer to check the tablet's OS as well. */
/*			trace(Capabilities.screenDPI);
			trace(Capabilities.screenResolutionX);
			trace(Capabilities.screenResolutionY);*/
			
/*			if(Capabilities.screenDPI < 135){
				if(Capabilities.screenResolutionY == 1024 && Capabilities.screenResolutionX == 768){
					return DPIClassification.DPI_320;
				} else if( Capabilities.screenResolutionY == 768 && Capabilities.screenResolutionX == 1024){
					return DPIClassification.DPI_320;	
				}
				
				return DPIClassification.DPI_160;
			}
		

			if (Capabilities.screenDPI == 240 && Capabilities.screenResolutionY == 1024 && 	Capabilities.screenResolutionX == 600) {
				return DPIClassification.DPI_160;
			}
			

			if (Capabilities.screenDPI < 200)
				return DPIClassification.DPI_160;
			
			if (Capabilities.screenDPI <= 280)
				return DPIClassification.DPI_240;
			
*/			
			if( Capabilities.screenDPI == 132){
				return DPIClassification.DPI_320;
			}
			if( Capabilities.screenDPI == 163){
				return DPIClassification.DPI_160;
			}
			
			if (Capabilities.screenDPI <= 280)
 				return DPIClassification.DPI_240;
			
			if( Capabilities.screenDPI == 326){
				return DPIClassification.DPI_240;
				
			}
			
			return DPIClassification.DPI_320; 
		}
	}
}