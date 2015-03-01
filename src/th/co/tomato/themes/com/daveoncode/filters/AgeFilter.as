package th.co.tomato.themes.com.daveoncode.filters {
	
	/**
	 * @author Davide Zanotti (davidezanotti@gmail.com)
	 */
	public class AgeFilter extends AbstractFilterDecorator {
		
		/**
		 * @param target IFilter <p>A reference to a wrapped IFilter object</p>
		 * @param value Object <p>Value against which the filter is applied</p>
		 */
		public function AgeFilter(target:IFilter, value:Object) {
			
			super(target, value);
			
		}
		
		/**
		 * Implementation of IFilter interface by overriding the dummy apply() of AbstractFilterDecorator
		 */
		override public function apply(item:Object):Boolean {
			
			return this._target.apply(item) && (this._value == item.age || this._value == "");
			
		}
		
	}
	
}