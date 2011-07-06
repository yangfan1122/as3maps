package roy.net 
{
	import flash.net.*;
	import flash.events.*;
	public class ServerSocket
	{
		
		public function ServerSocket() 
		{
			var server:ServerSocket = new ServerSocket();
			server.addEventListener(ServerSocketConnectEvent.CONNECT,serverSocketConnect);
			server.bind(4000,"127.0.0.1");
			server.listen();
		}
		private function serverSocketConnect(event:ServerSocketConnectEvent):void
		{
			var socket:Socket = event.socket as Socket;
			trace(socket.connected,socket.localAddress,socket.localPort);
			socket.writeUTFBytes("welcome!");
			socket.flush();
		}
	}

}

/*
 * 
 * import roy.net.*;
//var getIP:LocalIPHandler = new LocalIPHandler();
myIP_txt.text = otherIP_txt.text = LocalIPHandler.getLocalIPHandler()[0];
trace(LocalIPHandler.getLocalBroadcast(myIP_txt.text));
var udpServer:UDPSocket = new UDPSocket();
udpServer.addEventListener( DatagramSocketDataEvent.DATA, dataReceived );

function dataReceived(event:DatagramSocketDataEvent ):void
{
	var msg:String = msgBox_txt.text + "Received from " + event.srcAddress + ":" + event.srcPort + ">> " + event.data.readUTFBytes( event.data.bytesAvailable ) + "\n";
	msgBox_txt.text = msg;
}


start_btn.addEventListener(MouseEvent.CLICK,startClickHandler);
send_btn.addEventListener(MouseEvent.CLICK,sendClickHandler);

function startClickHandler(event:MouseEvent):void
{
	if(int(myPort_txt.text)>1024)
	{
		udpServer.start(LocalIPHandler.localIP[0],int(myPort_txt.text));
	}
}
function sendClickHandler(event:MouseEvent):void
{
	if(int(myPort_txt.text)>1024 && sendBox_txt.text !="")
	{
		var data:ByteArray = new ByteArray();
    	data.writeUTFBytes(sendBox_txt.text);
    	udpServer.send( data, 0, 0, otherIP_txt.text, int(otherPort_txt.text)); 
	}
}
*/