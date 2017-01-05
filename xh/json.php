<?php
include_once("functions.php");
$fundcode=$_GET['code'];
$data = getData($fundcode);
foreach ($data as $k => $nick) {
  $data[$k] = iconv('GBK','UTF-8',$nick); // iconv和mb_convert_encoding函数都可以转编码
}
$json = json_encode($data);

echo $json;
?>