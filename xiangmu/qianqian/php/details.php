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
    public $id;
    public $biaoti;
    public $guanjianzi;
    public $tupian;
    public $mubiaojine;
    public $yichoujine;
    public $zhichizheshumu;
    public $logo;
    public $Initiator;

}



// 创建连接
$conn = mysqli_connect($servername, $username, $password, $mysqlname);
$conn->query('SET NAMES UTF8');

$sql = "SELECT * FROM xiangmu where id='xiangmu7' ";
$result = $conn->query($sql);

if ($result) {
    while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)) {
        $user = new User();
        $user->id = $row["id"];
        $user->biaoti = $row["biaoti"];
        $user->logo = $row["logo"];
        $user->guanjianzi = $row["guanjianzi"];
        $user->tupian = $row["tupian"];
        $user->mubiaojine = $row["mubiaojine"];
        $user->yichoujine = $row["yichoujine"];
        $user->zhichizheshumu = $row["zhichizheshumu"];
        $user->Initiator = $row["Initiator"];
        $data[] = $user;
    }
    $json = json_encode($data);//把数据转换为JSON数据.
    echo $json;
} else {
    echo "查询失败";
}



?>