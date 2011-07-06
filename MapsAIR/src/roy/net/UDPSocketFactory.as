package roy.net 
{
	import flash.net.*;
	public class UDPSocketFactory extends DatagramSocket
	{
		public static function getUDPSocket(ip:String, port:int):DatagramSocket
		{
			var udp:DatagramSocket = new DatagramSocket();
			try
			{
				udp.bind(port, ip);
				udp.receive();
			}
			catch (error:Error)
			{
				return null;
			}
			
			return udp;
		}
	}

}