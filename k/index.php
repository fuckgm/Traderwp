<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no,height=device-height"/>
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="css/jquery.mobile-1.3.2.min.css">
<link rel="stylesheet" href="css/css_l.css">
<link rel="stylesheet" href="css/swiper3.1.0.min.css">
<script src="js/jquery-1.11.3.min.js"></script><!--<script src="js/one_user.js"></script>-->
<script src="js/jquery.mobile-1.3.2.min.js"></script>
</head><title>秒盈</title>
<body>
<script type="text/javascript">
	var IMAGES = "/Public/MPublic/images";
	var ROOT = "";
	
	var MIN_ORDER = 10;        //20151106
	
	var FLAG = 1;
	
	var WINNERT = 0.75;
	var code = "221";
</script> 
<script src="js/highstock.js"></script> 
<script src="js/drawdat.js"></script>
<link href="css/m_style_1.css" rel="stylesheet" type="text/css">
<link href="css/m_select.css" rel="stylesheet" type="text/css">

<div class="M_trdiv">
    <div class="M_zhe"></div>
    <div id="chartdiv" style="height:180px;min-width:100%;position: relative; float:left;">
    	
      	<div class='loader loader--audioWave'></div>
    </div>
    <div  style="position: absolute;min-width:100%;height: 0px;"> <span id="data_cursor" class="data_cursor"  style="  display:;  position: absolute; left:3%; min-width: 96%; height: 0px; z-index: 3; border-top: 1px #999 dashed;">
      <div id="move_line_data" style="width: 47px; height: 16px; position: absolute; right:0; top: -8px; font-size: 10px; line-height: 16px; text-align: center; background:#999; color:#FFFFFF;"> </div>
      </span> </div>
      </div>


<!-- Home -->



</body>
</html>