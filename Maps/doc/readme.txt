服务器端将客户端ip写入js，并传给flash；未传递时，flash向ip.php请求ip地址。

flash通过该ip地址，由WebService得到地理位置描述信息；

再通过“geocoder.geocode('地理位置描述信息')”确定在地图上的位置。


生成地图密钥:
http://code.google.com/intl/zh-CN/apis/maps/signup.html


应用地址：
http://webstoreair.sinaapp.com/maps/maps.html