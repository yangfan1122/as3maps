package roy.net 
{
	import flash.net.*;
	public class LocalIPHandler
	{
		private static var _localIP:Vector.<String> = null;
		public function LocalIPHandler() 
		{
			
		}
		public static function getLocalIPHandler():Vector.<String>
		{
			_localIP = new Vector.<String>();
			var list:Vector.<NetworkInterface> = NetworkInfo.networkInfo.findInterfaces();
			for(var i:int=0; i<list.length; i++)
			{
				if(list[i].active)
				{
					var addsList:Vector.<InterfaceAddress> = list[i].addresses;
					for(var j:int=0; j<addsList.length; j++)
					{
						if(addsList[j].ipVersion=="IPv4" && addsList[j].address!="127.0.0.1")
						_localIP.push(addsList[j].address);
					}
				}
			}
			return _localIP;
		}
		public static function get localIP():Vector.<String>
		{
			return _localIP;
		}
		public static function getLocalBroadcast(ip:String):String
		{
			var ipArr:Array = ip.split(".");
			var type:int = int(ipArr[0]);
			//A类地址
			if (type < 127)
			{
				ipArr[1] = ipArr[2] = ipArr[3] = "255";
			}
			//B类地址
			if (type >= 127 && type < 192)
			{
				ipArr[2] = ipArr[3] = "255";
			}
			//C类地址
			if (type >= 192)
			{
				ipArr[3] = "255";
			}
			return ipArr.join(".");
		}
	}

}