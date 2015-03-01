////////////////////////////////////////////////////////////////////////////////
//
//  Ofir Shemesh - http://shemesh.wordpress.com
//  BMC Software, 2008
//
////////////////////////////////////////////////////////////////////////////////

package th.co.tomato.themes.shemesh.events
{
    import flash.events.Event;

    public class MultiStepperEvent extends Event
    {

        public function MultiStepperEvent(type:String, oldValues:Array, newValues:Array, changedValue:Number = NaN) {
                super(type);
    
                this.newValues = newValues;
                this.oldValues = oldValues;
                this.changedValue = changedValue;
        }

		public var changedValue:Number
        public var oldValues:Array;
        public var newValues:Array;
        public static const VALUE_CHANGED:String = "valueChanged";

        override public function clone():Event {
            return new MultiStepperEvent(type, oldValues, newValues, changedValue);
        }
    }
}
