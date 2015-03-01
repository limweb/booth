package th.co.tomato.themes.component.com.adobe.wheelerstreet.fig.callout
{
import flash.display.DisplayObject;
import flash.display.Graphics;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

import mx.containers.utilityClasses.BoxLayout;
import mx.containers.utilityClasses.Layout;
import mx.controls.Button;
import mx.core.Container;
import mx.core.EdgeMetrics;
import mx.core.mx_internal;
import mx.events.CloseEvent;
import mx.events.FlexEvent;
import mx.managers.ISystemManager;
import mx.styles.ISimpleStyleClient;
import mx.styles.IStyleClient;

	
use namespace mx_internal;

	
[Style(name="calloutOffsetX", type="Number", format="Length", inherit="no")]

[Style(name="calloutOffsetY", type="Number", format="Length", inherit="no")]

[Style(name="calloutPointerWidth", type="Number", format="Length", inherit="no")]



[Event(name="close", type="mx.events.CloseEvent")]
/**
 *  The callout container object. 
 */	
public class CalloutContainer extends Container
{
	private var _layoutObject:Layout;
	private var startX:uint;
	private var startY:uint;

	/**
	 * Constructor 
	 * 
	*/
	public function CalloutContainer()
	{
		super();
		_layoutObject = new BoxLayout();
    	_layoutObject.target = this;        	
	}
	/**
	 * Called first, used to add static children adds the close button 
	 * if flag is true. Adds border skin and applys style to skin.
	 * 
	 * 
	 * 
	 */
	override protected function createChildren():void
    {	    
        super.createChildren();
        // set the orignal coordinate position of the callout
        if(!startX)
        	startX = x;
        
        if(!startY)	    
        	startY = y;
        
        // Create the border/background.
		if (!border)
		{
			var borderClass:Class = getStyle("borderSkin");
				border = new borderClass();
			if (border is ISimpleStyleClient)
				ISimpleStyleClient(border).styleName = this;
			addChild(DisplayObject(border));
		}
        
	}
	/**
	 *  @private
	 * 
	 * 
	 */
	override protected function commitProperties():void
	{
		super.commitProperties();		
		if (initialized)
            layoutChrome(unscaledWidth, unscaledHeight);
	}
	/**
	 * 
	 * 
	 * 
	 **/
	override public function styleChanged(styleProp:String):void {
		super.styleChanged(styleProp);
		
		if (styleProp == "borderStyle" ||
			styleProp == "calloutOffsetX" ||
			styleProp == "calloutOffsetY" ||
			styleProp == "calloutPointerWidth" ||
			styleProp == null)
		{
			invalidateDisplayList();
		}
	}
	/**
	 * 
	 * 
	 * 
	 **/
	override protected function updateDisplayList(w:Number, h:Number):void
    {
    	
        super.updateDisplayList(w, h);
        
        _layoutObject.updateDisplayList(w, h);
        
       switch(getStyle("borderStyle")) {
       	case("topLeftCallout"): 
       		x = startX - ( w + getStyle("calloutOffsetX"));
        	y = startY - ( h + getStyle("calloutOffsetY"));
       		break;
       	case("topRightCallout"):
       		x = startX;	       		
        	y = startY - ( h +getStyle("calloutOffsetY"));	        	
       		break;
       	case("bottomLeftCallout"):
       		x = startX - ( w + getStyle("calloutOffsetX"));
       		y = startY;
       		break;
       	case("bottomRightCallout"):
       		x = startX;
       		y = startY;
       		break;
       	default:
       }
       
       invalidateSize();
       
    }
	/**
	 * 
	 * 
	 **/
	override protected function layoutChrome(unscaledWidth:Number, unscaledHeight:Number):void 
    {
    	super.layoutChrome(unscaledWidth, unscaledHeight);
    }
    /**
    * 
    **/
    override protected function measure():void
    {
    	super.measure()
    	_layoutObject.measure();
		
		measuredWidth = measuredWidth+getStyle("calloutOffsetX");
		measuredHeight = measuredHeight+getStyle("calloutOffsetY");
		//trace("explicitWidth: "+explicitWidth);
    	measuredMinWidth 	= 80;
		measuredMinHeight 	= 24;
    }
    /**
    * gets the padding set in the style 
    **/
    private function getHeightSlop():Number
    {
    	var bm:EdgeMetrics = borderMetrics;	
		var topInset:Number = bm.top + getStyle("paddingTop");
		var bottomInset:Number = bm.bottom + getStyle("paddingBottom");
		var heightSlop:Number = topInset + bottomInset;
		return heightSlop;
    }
    /**
    * 
    **/
    private function getWidthSlop():Number
    {
    	var bm:EdgeMetrics = borderMetrics;	
    	var leftInset:Number = bm.left + getStyle("paddingLeft");
    	var rightInset:Number = bm.right + getStyle("paddingRight");
    	var widthSlop:Number = leftInset + rightInset;
    	return widthSlop;
    }
		
} // class
} // package