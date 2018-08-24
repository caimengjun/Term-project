<?php
header("content-type:text/html;charset=utf-8");
$servername = "localhost";
$username = "root";
$password = "";
$mysqlname = "qianqian";
$json = '';
$data = array();
class User
{
    public $time;
    public $neirong;
    public $faqiren;


}



// 创建连接
$conn = mysqli_connect($servername, $username, $password, $mysqlname);
$conn->query('SET NAMES UTF8');

$sql = "SELECT time,neirong,faqiren FROM genxin";
$result = $conn->query($sql);

if ($result) {
    while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)) {
        $user = new User();
        $user->time = $row["time"];
        $user->neirong = $row["neirong"];
        $user->faqiren = $row["faqiren"];
        $data[] = $user;
    }
    $json = json_encode($data);//把数据转换为JSON数据.
    echo $json;
} else {
    echo "查询失败";
}



?>