package th.co.tomato.themes.com.daveoncode.filters {
	
	/**
	 * @author Davide Zanotti (davidezanotti@gmail.com)
	 */
	public class ChannelListFilter extends AbstractFilterDecorator {
		
		/**
		 * @param target IFilter <p>A reference to a wrapped IFilter object</p>
		 * @param value Object <p>Value against which the filter is applied</p>
		 */
		public function ChannelListFilter(target:IFilter, value:Object) {
			
			super(target, value);
			
		}
		
		/**
		 * Implementation of IFilter interface by overriding the dummy apply() of AbstractFilterDecorator
		 * 						<s:GridColumn dataField="chid" headerText="chid" maxWidth="90"></s:GridColumn>
						<s:GridColumn dataField="chName" headerText="chName"></s:GridColumn>
						<s:GridColumn dataField="chNO" headerText="CHNO" maxWidth="80" width="50"></s:GridColumn>
						<s:GridColumn dataField="seq" headerText="Seq" maxWidth="50" width="50"></s:GridColumn>
		 */
		override public function apply(item:Object):Boolean {
			return this._target.apply(item)  && ( 
				String(item.chName).toLowerCase().indexOf(String(this._value).toLowerCase()) >= 0 
				||  String(item.chNO).indexOf(String(parseInt(this._value.toString()))) >= 0 
				||  String(this._value) == '' ) ;
		}
//				||  String(item.chid).indexOf(String(parseInt(this._value.toString()))) >= 0  
		
	}
	
}