package th.co.tomato.model
{
	[RemoteClass(alias="programItem")]  //php
	[Bindable]
	public class ProgramItem
	{
		
			public var itemName:String;
			public var seriestype:String;
			public var typename:String;
			public var catagory:String;
			public var movietype:String;
			public var description:String;
			public var status:String;
			public var link:String;
			public var picture:String;
			public var CREATED_BY:String;
			public var CREATED_DATE:String;
			public var MODIFIED_BY:String;
			public var MODIFIED_DATE:String;
			public var duration:String;
	}
}