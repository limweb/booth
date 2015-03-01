package th.co.tomato.configs
{
	public class ConfigModel
	{
		public function ConfigModel()
		{
		}
	}
}

// SiteConfigModel.as, created 5/5/2009 by Margo Powell
// Copyright 2009(C) NIM project
package model
{
	import mx.core.Application;
	import mx.controls.Alert;
	import mx.utils.ObjectUtil;
	import mx.utils.URLUtil;
	
	/**
	 * Class used to store and/or return Application config settings such as
	 * the server name and port for the website along with the
	 * FlashRemoting channel and amf endpoint uri settings
	 * 
	 * This class allows you to dynamically set your configuration for 
	 * your flex/swf file on a website of your choice.
	 * 
	 * You do not need a -services compiler argument for the project and
	 * therefore no need to recompile your project code if you
	 * shift your code to different websites.
	 * 
	 * A context root default value is provided as a constant.
	 * 
	 * An amfphp endpoint default value is also provided as a constant.
	 * 
	 * The following flashVar variables can be passed if user wants
	 * to override default values. Examples below
	 * 1) contextRoot="/nimphp/";
	 * 
	 * NOTE: This class is called after applicationComplete and not 
	 * creationComplete(URLUtil unable to get server name at this stage).
	 *
	 * This class is geared for a php based server where a ContextRoot 
	 * function currently does not exist(whereas these functions
	 * do apparently exist for Java and coldfusion based servers).
	 * 
	 * To bypass this function limitation, the contextRoot should be
	 * defined as a constant in a php include file and then have the
	 * include file loaded in the php calling file using the 
	 * require_once feature. This constant can then be passed in as a 
	 * flashVar value if needed(if different from the default value
	 * defined below)
	 * 
	 * @author: Margo Powell
	 *  
	 **/
	
	public class SiteConfigModel
	{
		//declare the amfphp channel id
		public static const CHANNELID:String = "my-amfphp";     
		
		// Default context root value,
		//adjust as needed for your server using flashVars
		private static const DEFAULT_CONTEXT_ROOT:String = "/";
		
		//default amfphp directory path
		private static const DEFAULT_AMF_DIR:String = "amfphp2.0/gateway.php";
		
		//url to use when running within the ide
		private static const DEFAULT_IDE_URL:String = "localhost:8080";
		
		
		/**
		 * Return the serverURL name and port value 
		 * for the application. The value returned depends
		 * on whether you are running locally from the IDE
		 * or are running live from a website.
		 * 
		 * Currently also passing the flashVar: serverURL 
		 * whose value is set to the following in php:
		 * $serverPath = $_SERVER['HTTP_HOST']
		 * 
		 **/      
		public static function get serverURL():String
		{
			var serverName:String;
			var urlString:String;
			
			//create reference to Application object
			var app:Application = Application.application as Application;
			
			if( app.url != null && app.url.indexOf("http:") != -1 )
			{
				
				serverName = URLUtil.getServerNameWithPort(app.loaderInfo.url);
				urlString = "http://" + serverName + SiteConfigModel.contextRoot;
			}
			else
			{
				
				urlString = "http://" + DEFAULT_IDE_URL + SiteConfigModel.contextRoot;
			}
			
			
			return urlString;
		}
		
		// return the correct endpoint, if this is server from an HTTP request
		// return the default localhost:8080 for development, if FlexBuilder launches
		// the application locally with an absolute path (file://c:\...)
		/**
		 * Return the amfEndPoint for the application. 
		 * The value returned depends on whether you are running 
		 * locally from the IDE or are running live from a website.
		 * 
		 * Currently also passing the flashVar: serverURL 
		 * whose value is set to the following in php:
		 * $serverPath = $_SERVER['HTTP_HOST']
		 * 
		 * return the default localhost:8080 for development, if
		 * the application launched locally with an absolute path (file://c:\...)
		 * 
		 **/      
		public static function get amfEndPoint():String
		{
			var amfPath:String;
			
			//create reference to Application object
			var app:Application = Application.application as Application;
			
			//will return appropriate path depending on whether running from server or ide
			amfPath = SiteConfigModel.serverURL + SiteConfigModel.DEFAULT_AMF_DIR;
			
			return amfPath;
		}
		
		/*
		* Return the DEFAULT_CONTEXT_ROOT value unless 
		* overridden by flashVar value of contextRoot.
		* 
		* Pull the context-root out of the flash var, 
		* if it's defined in your <object/> or  tags.
		* I use swfobject variables to set these values
		* ex: contextRoot=/flex
		**/        
		private static function get contextRoot():String
		{
			var contextRootRef:String;
			
			//create reference to Application object
			var app:Application = Application.application as Application;
			
			//check to see if context root should be overriden
			//by value passed in as flashVar
			if( app.parameters.contextRoot != null )
			{
				//Alert.show( ObjectUtil.toString(app.parameters) );
				contextRootRef = app.parameters.contextRoot;
			} else {
				//use default
				contextRootRef = SiteConfigModel.DEFAULT_CONTEXT_ROOT;
			}
			return contextRootRef;
		}
		
		
	}
