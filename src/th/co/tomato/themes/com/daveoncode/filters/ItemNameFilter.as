package th.co.tomato.themes.com.daveoncode.filters {
	
	import mx.formatters.DateFormatter;
	
	/**
	 * @author Davide Zanotti (davidezanotti@gmail.com)
	 */
	public class ItemNameFilter extends AbstractFilterDecorator {
		
		/**
		 * @param target IFilter <p>A reference to a wrapped IFilter object</p>
		 * @param value Object <p>Value against which the filter is applied</p>
		 */
		public function ItemNameFilter(target:IFilter, value:Object) {
			
			// Configures AbstractFilterDecorator
			super(target, value);
			
		}
		
		/**
		 * Implementation of IFilter interface by overriding the dummy apply() of AbstractFilterDecorator
		 */
		override public function apply(item:Object):Boolean {
			
			return this._target.apply(item) && ( String(item.itemName).toLowerCase().indexOf(String(this._value).toLowerCase()) >= 0 || String(item.itemid).indexOf(String(parseInt(this._value.toString()) )) >= 0  || String(this._value) == '' ) ;
		}
		
	}
	
}