package th.co.tomato.utils {
//	import org.osflash.thunderbolt.Logger;

	public class SortUtil {
		
		public static function stringSortByField(fieldName:String):Function {
//			Logger.debug('String Sort By Field =' + fieldName);
			return function(obj1:Object, obj2:Object):int {
				var value1:String = (obj1[fieldName] == '' || obj1[fieldName] == null) ? null : new String(obj1[fieldName]);
				var value2:String = (obj2[fieldName] == '' || obj2[fieldName] == null) ? null : new String(obj2[fieldName]);
				return stringCompare(value1, value2, true);
			}
		}
		
		private static function stringCompare(value1:String, value2:String, caseInsensitive:Boolean ):int {
			if ( value1 == null && value2 == null )
				return 0;
			if ( value1 == null )
				return -1;
			if ( value2 == null )
				return 1;
			// Convert to lowercase if we are case insensitive.
			if ( caseInsensitive ) {
				value1 = value1.toLocaleLowerCase();
				value2 = value2.toLocaleLowerCase();
			}
			var result:int = value1.localeCompare(value2);
			if ( result < -1 )
				result = -1;
			else if ( result > 1 )
				result = 1;
			return result;
		}
		
		public static function numericSortByField(fieldName:String):Function {
//			Logger.debug('Number Sort By Field =' + fieldName);
			return function(obj1:Object, obj2:Object):int {
				var value1:Number = (obj1[fieldName] == '' || obj1[fieldName] == null) ? NaN : new Number(obj1[fieldName]);
				var value2:Number = (obj2[fieldName] == '' || obj2[fieldName] == null) ? NaN : new Number(obj2[fieldName]);
				return numericCompare(value1, value2);
			}
		}
		
		private static function numericCompare(value1:Number, value2:Number):int {
			var result:int;
			if ( value1 < value2 || ( value1.toString() == NaN.toString() && value2.toString() == NaN.toString() ) 
				|| ( value1.toString() == NaN.toString() && value2.toString() != NaN.toString() ) ) {
				result = -1;
			} else if ( value1 > value2 || ( value1.toString() != NaN.toString() && value2.toString() == NaN.toString() ) ) {
				result = 1;
			} else if ( value1 == value2 ) {
				result = 0;
			}
			return result;
		}
		
		public static function dateSortByField(fieldName:String):Function {
//			Logger.debug('Date Sort By Field =' + fieldName);
			return function(obj1:Object, obj2:Object):int {
				var value1:Date = (obj1[fieldName] == '' || obj1[fieldName] == null) ? null : new Date(obj1[fieldName]);
				var value2:Date = (obj2[fieldName] == '' || obj2[fieldName] == null) ? null : new Date(obj2[fieldName]);
				return dateCompare(value1, value2);
			}
		}
		
		private static function dateCompare(value1:Date, value2:Date):int {
			var result:int;
			if ( value1 < value2 || ( value1 == null && value2 == null ) || ( value1 == null && value2 != null ) ) {
				result = -1;
			} else if ( value1 > value2 || ( value1 != null && value2 == null ) ) {
				result = 1;
			} else if ( value1 == value2 ) {
				result = 0;
			}
			return result;
		}
		
	}
}