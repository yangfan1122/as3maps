package
{
    import flash.events.Event;
    /**
    * 带参数自定义事件
    * @author yangfan1122@gmail.com
    */
    public class CustomizeEvent extends Event
    {
        public var customizeStr:String;
        public function CustomizeEvent(evt:String , _str:String = ""):void
        {
            super(evt);
            customizeStr = _str;
        }
    }
}
