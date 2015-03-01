package th.co.tomato.themes.com.daveoncode.filters {
	
	import mx.formatters.DateFormatter;
	
	/**
	 * @author Davide Zanotti (davidezanotti@gmail.com)
	 */
	public class DateFilter extends AbstractFilterDecorator {
		
		/**
		 * @param target IFilter <p>A reference to a wrapped IFilter object</p>
		 * @param value Object <p>Value against which the filter is applied</p>
		 */
		public function DateFilter(target:IFilter, value:Object) {
			
			// Configures AbstractFilterDecorator
			super(target, value);
			
		}
		
		/**
		 * Implementation of IFilter interface by overriding the dummy apply() of AbstractFilterDecorator
		 */
		override public function apply(item:Object):Boolean {
			
			return this._target.apply(item) && (String(this._value) == String(item.joinDate) || this._value == null);
			
		}
		
	}
	
}