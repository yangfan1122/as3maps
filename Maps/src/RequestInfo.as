package
{
	import flash.events.*;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	import flash.net.URLVariables;
	import flash.system.Security;
	import mx.controls.Alert;

	/**
	 * ...
	 * @author yangfan1122@gmail.com
	 */
	public class RequestInfo extends EventDispatcher
	{
		public function RequestInfo(_url:String)
		{
			var loader:URLLoader = new URLLoader();
			loader.dataFormat = URLLoaderDataFormat.TEXT;
			configureListeners(loader);

			var request:URLRequest = new URLRequest(_url);
			try
			{
				//Security.loadPolicyFile(Statics.getPolicyFilePath());
				loader.load(request);
			}
			catch (error:Error)
			{
				//dispatchEvent(new Event(Events.LOAD_RECOMMENDATION_ERROR));
			}
		}

		private function configureListeners(dispatcher:IEventDispatcher):void
		{
			dispatcher.addEventListener(Event.COMPLETE, completeHandler);
			dispatcher.addEventListener(Event.OPEN, openHandler);
			dispatcher.addEventListener(ProgressEvent.PROGRESS, progressHandler);
			dispatcher.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);
			dispatcher.addEventListener(HTTPStatusEvent.HTTP_STATUS, httpStatusHandler);
			dispatcher.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
		}

		private function completeHandler(event:Event):void
		{
			var loader:URLLoader = URLLoader(event.target);
			dispatchEvent(new CustomizeEvent("LOAD_IP_SUCCESS", loader.data)); //请求	
		}

		private function openHandler(event:Event):void
		{
		}

		private function progressHandler(event:ProgressEvent):void
		{
		}

		private function securityErrorHandler(event:SecurityErrorEvent):void
		{
			//Alert.show(event.toString());
			dispatchEvent(new Event("LOAD_IP_ERROR"));
		}

		private function httpStatusHandler(event:HTTPStatusEvent):void
		{
		}

		private function ioErrorHandler(event:IOErrorEvent):void
		{
			//Alert.show(event.toString());
			dispatchEvent(new Event("LOAD_IP_ERROR"));
		}

	}

}