<?php

/*****************************
*数据库连接
*****************************/
$conn = @mysqli_connect("localhost","root","","qianqian");
if (!$conn){
    die("连接数据库失败：" . mysql_error());
}
//mysql_select_db("message", $conn);
////字符转换，读库
mysqli_query($conn,"set character set 'utf-8'");
//写库
mysqli_query($conn,"set names 'utf-8'");



?>