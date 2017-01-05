 <?php 	
      error_reporting(0);
	 if($_GET['code']=='tjxag' || $_GET['code']=='tjcu' ||$_GET['code']=='conc' ){
	 $fundcode=$_GET['code'];
	 $interval=$_GET['interval'];
	 $chart_type=$_GET['type'];
	 ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no"/>
    <meta name="MobileOptimized" content="320">
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta name="HandheldFriendly" content="true"/>
    <meta name="format-detection" content="telephone=no" />
    <meta name="copyright" content="Copyright 快讯通财经kxt.com">
    <meta name="keywords" content=""/>
    <meta name="description" content="">
    <link rel="apple-touch-icon-precomposed" href="http://res.kuaixun360.com/Public/Mobile/images/logo_icon.png">
    <title>-快讯通财经</title>
    <link href="http://res.kuaixun360.com/Public/Mobile/css/wap.css?v=2.0.6.3" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="http://res.kuaixun360.com/Public/Home/js/jquery.js?v=2.0.6.3"></script>
</head>

<script type="text/javascript" src="http://res.kuaixun360.com/Public/Home/js/base64.js?v=2.0.6.3"></script>
	<script type="text/javascript" src="http://res.kuaixun360.com/Public/Home/js/../Chart_beta/js/highstock.src.js?v=2.0.6.3"></script>
	<script type="text/javascript" src="http://res.kuaixun360.com/Public/Home/js/../Chart_beta/js/highstock.theme.js?v=2.0.6.3"></script>
	<script src="http://res.kuaixun360.com/Public/Home/js/../Chart_beta/js/socket.io2.js?v=2.0.6.3"></script>
	<style>html { overflow: hidden; }</style>
    <script type="text/javascript" src="http://res.kuaixun360.com/Public/Home/js/../Chart/js/vendor/moment.js?v=2.0.6.3"></script>
	<script type="text/javascript" src="http://res.kuaixun360.com/Public/Home/js/../Chart/js/time-range.js?v=2.0.6.3"></script>

	<script>
		function max(temp){
			var max = temp[0];
			for(var i=1;i < temp.length;i++){
				if(max<temp[i])max=temp[i];
			}
			return max;
		}
		var width='auto';
		var height='auto';
		var code = "<?php echo $fundcode ?>";//"autd";
		var codeArr="autd";
		var rows = '45';
		var chart_type = 'candlestick'; //area
		var interval ='30';
		var socket_url = 'ws://120.26.101.164:9502';
		var container = '#container';
		var url_h='http://115.28.176.212/getdataNew.php';
		var url_d='http://115.28.176.212/getdataNew.php';

		if( chart_type != 'candlestick'){
			var average_list = new Array( );
		}else if(interval=='1m'){
			var average_list = new Array();
		}else{ 
			var average_list = new Array(5,10,30);
		}
		var average_color = new Array( '#aa0' , '#f00' ,'#a3a','#33a');
		if( !!average_list.length ){
			var average_num_max = max(average_list);
			rows = parseInt( rows) + parseInt(average_num_max);
		}

		var chart_model = 1;
		var new_chart_type = chart_type =='area' ? "spline":chart_type;
	</script>
	<script type="text/javascript" src="/Public/Home/js/initNew.js"></script>

	<style>
	body{margin: 0;padding: 0;}
	</style>
</head>
<body>
 	<div id="container" ></div>


</body>
</html>
 <?php }else{
 	echo '<meta charset="utf-8">';
	 echo '参数不正确'; }
	 ?>
	 
