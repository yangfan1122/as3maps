服务器端将客户端ip写入js，并传给flash，flash通过该ip地址，由WebService得到地理位置描述信息；
再通过“geocoder.geocode('地理位置描述信息')”确定在地图上的位置。