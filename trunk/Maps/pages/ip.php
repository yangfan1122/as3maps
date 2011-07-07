<?php
$ip=$_SERVER['REMOTE_ADDR'];//ip地址
$file_dir="ip.txt";//读文件地址
$fp=fopen($file_dir,"r");//读文件
$content=fread($fp,filesize($file_dir));//读取内容
fclose($fp);//关闭文件流
//echo $content;//打印内容
date_default_timezone_set('PRC');
$showtime=date("Y-m-d H:i:s");//得到日期
$cjjer_handle = fopen ("ip.txt","w+");//读文件
fwrite ($cjjer_handle,$content."日期:".$showtime."访问者ip:".$ip."\n");
fclose ($cjjer_handle);
echo $ip;
?>