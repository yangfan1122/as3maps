<?php
$ip=$_SERVER['REMOTE_ADDR'];//ip��ַ
$file_dir="ip.txt";//���ļ���ַ
$fp=fopen($file_dir,"r");//���ļ�
$content=fread($fp,filesize($file_dir));//��ȡ����
fclose($fp);//�ر��ļ���
//echo $content;//��ӡ����
date_default_timezone_set('PRC');
$showtime=date("Y-m-d H:i:s");//�õ�����
$cjjer_handle = fopen ("ip.txt","w+");//���ļ�
fwrite ($cjjer_handle,$content."����:".$showtime."������ip:".$ip."\n");
fclose ($cjjer_handle);
echo $ip;
?>