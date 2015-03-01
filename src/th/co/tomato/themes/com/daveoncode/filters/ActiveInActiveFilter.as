package th.co.tomato.themes.com.daveoncode.filters
{
	public class ActiveInActiveFilter extends AbstractFilterDecorator
	{
	
		
		public function ActiveInActiveFilter(target:IFilter, value:Object)
		{
			super(target, value);
		}
		
		/**
		 * Implementation of IFilter interface by overriding the dummy apply() of AbstractFilterDecorator
		 */
		override public function apply(item:Object):Boolean {
			
			return this._target.apply(item) &&  (  item.status == this._value || this._value == null ) ;
		}
		
	}
}