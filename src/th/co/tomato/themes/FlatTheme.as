package th.co.tomato.themes  

{
	[Bindable]
	public class FlatTheme
	{
		
		
		
//		color.up="{FlatTheme.txtupColor}" color.over="{FlatTheme.txtoverColor}" color.down="{FlatTheme.txtdownColor}" color.disabled="{FlatTheme.txtdisaolor}"
//		color.normal="{FlatTheme.txtupColor}" color.hovered="{FlatTheme.txtoverColor}" color.selected="{FlatTheme.txtoverColor}"
//		color="{FlatTheme.upColor}" color.over="{FlatTheme.overColor}" color.down="{FlatTheme.downColor}" color.selectedStates="{FlatTheme.selectioncolor}"
		
		public static var rollovercolor:uint = 0x368ee0;
		
		
		
		public static var chromecolor:uint = 0xDEEBFF;
		public static var contentbackgroundcolor:uint = 0xFFFFFF;
		public static var symbolcolor:uint = 0x333333;
		public static var selectioncolor:uint = 0xDEEBFF;
		public static var focuscolor:uint = 0xEEEEEE;
		public static var accentcolor:uint = 0xC0E3FF;
		public static var backgroundcolor:uint = 0xEBF4FF;
		
		
		
		private static var _v:Boolean = true;
		public static var selected:Boolean = false;
		
		public static var menuIncludeinlayout:Boolean = true;

		
		public static var color:uint = 0x368ee0;
		public static var txtColor:uint = 0x000000;

		public static var upColor:uint = 0x368ee0;
		public static var txtupColor:uint = 0xFFFFFF;

		public static var overColor:uint = 0x005580;
		public static var txtoverColor:uint = 0xFFFFFF;
		
		
		public static var downColor:uint = 0x005580;
		public static var txtdownColor:uint = 0xffffff;

		public static var disableColor:uint = 0xb1b1b1;
		public static var txtdisaColor:uint = 0x005580;
		
		public static var normalColor:uint = 	0x368ee0;
		public static var txtnormalColor:uint = 0xFFFFFF;
		
		public static var hoverColor:uint =  0x005580;
		public static var txthoverColor:uint = 0xFFFFFF;
		
		public static var selectColor:uint = 	0x005580;
		public static var txtselectColor:uint = 0xffffff;
		
		public static var upselect:uint = 	0x005580;
		public static var txtupselectColor:uint = 0xffffff;
		
		public static var overselect:uint = 0x005580;	
		public static var txtoverselectColor:uint = 0xffffff;
		
		public static var downselect:uint = 0x005580;	
		public static var txtdownselectColor:uint = 0xffffff;
		
		public static var menux:Number = 0;

		public static function get v():Boolean
		{
			return _v;
		}

		public static function set v(value:Boolean):void
		{
			_v = value;
		}

		public static function setColor(_color:String,_upColor:String,_overColor:String,_downColor:String,_disableColor:String,_normalColor:String,_hoverColor:String,_selectColor:String,_upselect:String,_overselect:String,
								 _downselect:String,_txtColor:String,_txtupColor:String,_txtoverColor:String,_txtdownColor:String,_txtdisaColor:String,_txtnormalColor:String,_txthoverColor:String,_txtselectColor:String,
								 _txtupselectColor:String,_txtoverselectColor:String,_txtdownselectColor:String):void {
			color = uint('0x'+ _color);
			upColor = uint('0x'+ 	_upColor);
			overColor = uint('0x'+ _overColor);
			downColor = uint('0x'+ _downColor);
			disableColor = uint('0x'+ _disableColor);
			normalColor = uint('0x'+	_normalColor);
			hoverColor = uint('0x'+ _hoverColor);
			selectColor = uint('0x'+ _selectColor);
			upselect = uint('0x'+ _upselect);
			overselect = uint('0x'+ 	_overselect);
			downselect = uint('0x'+ 	_downselect);
			txtColor = uint('0x'+ _txtColor);
			txtupColor = uint('0x'+ 	_txtupColor);
			txtoverColor = uint('0x'+ _txtoverColor);
			txtdownColor = uint('0x'+ _txtdownColor);
			txtdisaColor = uint('0x'+ _txtdisaColor);
			txtnormalColor = uint('0x'+ _txtnormalColor);
			txthoverColor = uint('0x'+ _txthoverColor);
			txtselectColor = uint('0x'+ 	_txtselectColor); 
			txtupselectColor = uint('0x'+ _txtupselectColor);
			txtoverselectColor = uint('0x'+ _txtoverselectColor);
			txtdownselectColor = uint('0x'+ _txtdownselectColor);
			
		}
		
		public function FlatTheme()
		{
		}


	}
}