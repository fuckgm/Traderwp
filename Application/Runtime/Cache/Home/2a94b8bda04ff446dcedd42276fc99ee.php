<?php if (!defined('THINK_PATH')) exit();?> <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="email=no">
<title>贵金属微盘系统开发/二元期权源码/微盘交易平台制作/</title>
<meta name="keywords" content="微盘系统开发,二元期权源码,贵金属微盘制作" />
<meta name="description" content="本工作室长期致力于二元期权源码搭建，贵金属微盘平台制作，贵金属微盘系统领域软件制作，根据我们多年的网络设计和运营经验，能给您一个强有力的后盾，保证您的微盘交易平台毫无后顾之忧。">

<link rel="stylesheet" type="text/css" href="/Public/Home/css/cd.css" />
<script language="javascript" type="text/javascript" src="/Public/Home/js/jquery.min.js"></script>
<script language="javascript" type="text/javascript" src="/Public/Home/js/cd.js"></script>
<script language="javascript" type="text/javascript" src="/Public/Home/js/countup.js"></script>
</head>
<body>
<!--顶部开始-->
<!--<div class="top_div" style="height: 45px;">
      <div class="cdan_div"><img src="/Public/Home/images/cdan.png" width="35" height="32"/></div>
      <div class="jypt_div">
    <h1>微盘交易平台</h1>
    
     
  </div> 
 
    <div style="float:right;"><h1>返回</h1></div> 
    </div>-->
    
<div class="mui-slider" style="font-size:1.8rem;line-height:2em;width: 100%;text-align: left;    background: blueviolet;" onclick="goto_room();"><div class=""><img src="/Public/Home/shuang11banner.png" width="50%"><span style="color:#ffffff;position: absolute;right: 10px;right: 2.5rem;top: 0.1em;" id="shuang11">13,907,909.97</span><span style="color:#ffffff;position: absolute;right: 10px;right: 5px;top: 0.1em;">元</span></div></div>


<!--<div class="dbjjDiv"></div>-->
<div class="ycdcdDiv">
      <div class="gbtb"><img src="/Public/Home/images/gbtb.png"/></div>
      <ul>
  <li><a href="/index.php/Home/Index/"><span><img src="/Public/Home/images/jygz.png"/></span><span>首页</span></a></li>
    <li><a href="<?php echo U('User/recharge');?>"><span><img src="/Public/Home/images/cz.png"/></span><span>充值</span></a></li>
    <li><a href="<?php echo U('User/cash');?>"><span><img src="/Public/Home/images/tx.png"/></span><span>提现</span></a></li>
    <li><a href="<?php echo U('Detailed/dtrading');?>"><span><img src="/Public/Home/images/jyls.png"/></span><span>交易历史</span></a></li>
    <li><a href="<?php echo U('Detailed/drevenue');?>"><span><img src="/Public/Home/images/szmx.png"/></span><span>收支明细</span></a></li>
    <li><a href="<?php echo U('User/memberinfo');?>"><span><img src="/Public/Home/images/grxx.png"/></span><span>个人中心</span></a></li>
    <li><a href="<?php echo U('User/img');?>"><span><img src="/Public/Home/images/fxhy.png"/></span><span>分享好友</span></a></li>
    <li><a href="<?php echo U('User/ranking');?>"><span><img src="/Public/Home/images/phb.png"/></span><span>排行榜</span></a></li>
    <li><a href="<?php echo U('User/logout');?>"><span><img src="/Public/Home/images/cs.png"/></span><span>退出</span></a></li>
    
  </ul>
    </div>
<!--顶部结束-->
<div class="main"> 	
       
       
       
       
 </div>     
</body>
</html>

<link rel="stylesheet" href="/Public/Home/css/global.css">
<link rel="stylesheet" href="/Public/Home/css/index.css">
<link rel="stylesheet" href="/Public/Home/css/pwd.css">
 

<div class="wrap" style="overflow:scroll;overflow-x:hidden;">
  <div class="index" style="/*min-height: 1339px;*/">
  
    <input type="hidden" id="tpqh" value="1">
    <!-- 账户有建仓订单时显示所有没有平仓的订单 -->
    <?php if(empty($nolist)): else: ?> 
       <div class="jryk">
              <div class="yk_left">今日盈亏(元)</div>
              <div class="yk_con"></div>
              <div class="yk_right box2">
                 <!-- <a href="javascript:;" class="bounceIn">查看交易</a> -->
                 <a href="<?php echo U('Detailed/dtrading');?>" class="bounceIn">交易记录</a> 
              </div>
              <div class="clearfix"></div>
            </div>
          <div class="b-line noclearfix" style="margin-bottom:0;" id="useror">
                
            </div><?php endif; ?> 
    <div class="account-info clearfix">
    	
    	
      <div class="info-detail left" <?php if($user["portrait"] == ''): else: ?> style="background:url(<?php echo ($user["portrait"]); ?>)no-repeat;background-size: 40px 40px;"<?php endif; ?> > 
      <a href="<?php echo U('User/memberinfo');?>"> <span class="a-u">个人账户(元)</span> <em class="a-d "><?php if($user["price"] != 0): ?><span id="usprice"><?php echo ($user["price"]); ?></span><?php else: ?><span id="usprice">0.0</span><?php endif; ?></em></a> </div>
      <a href="<?php echo U('User/recharge');?>" class="charge-btn
      ">充值</a>
      
      <?php if (!isset($_SESSION['uid'])) {?>
    		<div class="" style="float: right;">
    	<a href="/index.php/Home/User/login.html" style="background: #daac33;" class="charge-btn
      ">登录</a> 
      <a href="/index.php/Home/User/reg.html" style="background: #387bbe;"  class="charge-btn
      ">注册</a> </div>
    	<?php } ?>
      <!--<div class="info-detail right"> <a href="<?php echo U('User/experiencelist');?>"> <span class="a-u">体验劵(张)</span> <em class="a-d"><?php if($user["exper"] != 0): echo ($user["exper"]); else: ?>0<?php endif; ?></em> </a> </div>-->  
     
      
    </div> 
<div style="width:100%;height:200px;overflow:hidden;">
    <div class="switch-product">
      <ul class="clearfix" id="selectmenu3">
        <li id="USOIL"class="sw_active" value="1"><a>油</a> </li>
        <li id="BTC"style="width:34%;" value="2"> <a>白银</a> </li>
        <li id="EURUSD"value="3"> <a>铜</a> </li>
      </ul>
    </div>
<!--div style="width:100%;height:200px;overflow:hidden;">
<select id="selectmenu3" name="">
<option value="BTC" selected="selected">比特币</option>
<option value="EURUSD" >欧元/美元</option>
<option value="USOIL" >原油</option>
</select>
</div-->
    <div class="product-box" value="1">
    	<!--***油***-->
      <div class="trade-box">
        <div class="price-info clearfix">
          <h3 class="price-current"> <span style="font-size: 1rem;">油价格(美元)</span>
          <?php if($isopen == 0): ?><em>休市</em>
          <?php else: ?>
            <em class="" id="youjia"></em><?php endif; ?>
        <!--   <input type="button" value="刷新" onclick="butt()" ><input type='text' value="" id='test'>  -->
            <!--降-->
            <!--<em class="drop">4.014</em>-->
          </h3>
          <ul class="price-trend clearfix">
            <li>昨收<em id="yzs"></em></li>
            <li>最高<em id="yzg"></em></li>
            <li>今开<em id="yjk"></em></li>
            <li>最低<em id="yzd"></em></li>
          </ul>
        </div>
        <div class="swiper-container   swiper3">
          <div class="swiper-wrapper" style=" width: 1232px; height: 85px; -webkit-transform: translate3d(-410.67px, 0px, 0px); transition: 0s; -webkit-transition: 0s;">
        <?php if(is_array($goods)): $k = 0; $__LIST__ = $goods;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k; if($vo["cid"] == 1): ?><div class="swiper-slide swiper-slide-visible swiper-slide-active" data-l="6" data-b="2" style="width: 410.67px; height: 85px;">
                <input type="hidden" name="pid" value="<?php echo ($vo["pid"]); ?>">
                <input type="hidden" name="time" value="<?php echo ($vo["uprice"]); ?>">
                <h3>决胜时间</h3>
                <h4><span class="vouprice"><?php echo ($vo["uprice"]); ?></span>秒</h4>
                <h5>收益比率：<?php echo ($vo["wave"]); ?>%</h5>
                <img src="/Public/Home/images/pick.png" class="p-selected"></div><?php endif; endforeach; endif; else: echo "" ;endif; ?>
          </div>
        </div>

      </div>
    </div>
    
    <div class="product-box silver_con" value="2" style="display: block;">
    	<!---白银-->
      <div class="trade-box" >
        <div class="price-info clearfix">
          <h3 class="price-current"> <span style="font-size: 1rem;">白银价格(元/吨)</span>
          <?php if($isopen == 0): ?><em>休市</em>
          <?php else: ?>
            <em class="rise" id="baiyinjia"></em><?php endif; ?>
         
            <!--降-->
            <!--<em class="drop">4.014</em>-->
          </h3>
          <ul class="price-trend clearfix">
            <li>昨收<em id="byzs"></em></li>
            <li>最高<em id="byzg"></em></li>
            <li>今开<em id="byjk"></em></li>
            <li>最低<em id="byzd"></em></li>
          </ul>
        </div>
        <div class="swiper-container   swiper2">
          <div class="swiper-wrapper">
          <?php if(is_array($goods)): $i = 0; $__LIST__ = $goods;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo["cid"] == 2): ?><div class="swiper-slide swiper-slide-visible swiper-slide-active">
                 <input type="hidden" name="pid" value="<?php echo ($vo["pid"]); ?>">
                 <input type="hidden" name="time" value="<?php echo ($vo["uprice"]); ?>">
                <h3>决胜时间</h3>
                <h4><span class="vouprice"><?php echo ($vo["uprice"]); ?></span>秒</h4>
                <h5>收益比率：<?php echo ($vo["wave"]); ?>%</h5>
                 <img src="/Public/Home/images/pick.png" class="p-selected"></div><?php endif; endforeach; endif; else: echo "" ;endif; ?>   
          </div>
        </div>
      </div>
    </div>
    <div class="product-box" value="3" style="display: block;">
    	<!--铜-->
      <div class="trade-box" >
        <div class="price-info clearfix">
          <h3 class="price-current"> <span>铜价格(元/吨)</span>
            <!--升-->
              <?php if($isopen == 0): ?><em>休市</em>
              <?php else: ?>
                  <em class="rise" id="tojia"></em><?php endif; ?>

          
            <!--降-->
            <!--<em class="drop">4.014</em>-->
          </h3>
          <ul class="price-trend clearfix">
            <li>昨收<em id="tozs"></em></li>
            <li>最高<em id="tozg"></em></li>
            <li>今开<em id="tojk"></em></li>
            <li>最低<em id="tozd"></em></li>
          </ul>
        </div>
        <div class="swiper-container   swiper1">
          <div class="swiper-wrapper">
          <?php if(is_array($goods)): $i = 0; $__LIST__ = $goods;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo["cid"] == 3): ?><div class="swiper-slide swiper-slide-visible swiper-slide-active" data-l="3" data-b="2">
                 <input type="hidden" name="pid" value="<?php echo ($vo["pid"]); ?>">
                 <input type="hidden" name="time" value="<?php echo ($vo["uprice"]); ?>">
                <h3>决胜时间</h3>
                <h4><span class="vouprice"><?php echo ($vo["uprice"]); ?></span>秒</h4>
                <h5>收益比率：<?php echo ($vo["wave"]); ?>%</h5>
                 <img src="/Public/Home/images/pick.png" class="p-selected"></div><?php endif; endforeach; endif; else: echo "" ;endif; ?> 
          </div>
        </div>
      </div>
    </div>
</div>
    <!--***油***-->    
    <div>
      <div class="trade-box">
        <ul class="buy-choose clearfix box" <?php if($isopen == 0): else: ?>id="may"<?php endif; ?> style="padding:0";>
          <!-- <li><a href="javascript:" class="up bounceIn" onClick="buy(2,2)">买涨</a></li> -->
          <input id="isopen" type="hidden" value="$isopen">
          <li><a href="javascript:" class="up bounceIn"  value="买涨">买涨</a></li>
          <li><a href="javascript:" class="down bounceIn" value="买跌">买跌</a></li>
   
        </ul>
      </div>
    </div>
<!--
	作者：773632404@qq.com
	时间：2016-01-09
	描述：购买弹窗
-->
<div class="box">
    <div id="dialogBg"></div>
    <div id="dialog" class="">
        <div class="dialogTop">
            <!--<a href="javascript:;" class="claseDialogBtn" id="claseDialogBtn">关闭</a>-->
        </div>
        <!--建仓确认-->
          <div class="pop-box none" id="buildBox" style="display: block;top:-350px">
            <nav class="pop-nav "> <a href="javascript:;" class="back" id="claseDialogBtn"></a>
              <h3>确认购买</h3>
            </nav>
            <form id="jcForm" class="build-form" method="post" ><!-- action="<?php echo U('Detailed/addorder');?>" -->
             				<!--<div class="" style="overflow: hidden;margin:10px;">
                        <label class="b-label">选择数量：</label>
                        <p class="num-list   clearfix" id="jcsh"> <span class="num-left"></span>
                            <input type="text" value="1" class="num-in" id="sls" disabled="">
                            <span class="num-right"></span> </p>
                        <p class="price clearfix"> <span>方向：</span> <em class="fx"><span id="zhd" style="font-size:1.1em"></span></em>
                           
                        </p>
                    </div>
                    <div class="b-line clearfix">
                        <label class="b-label">品种：</label>
                        <div class="type-choose clearfix">
                            
                            <div class="type-list clearfix">
                                <ul class="p-baiyin" style="margin-top: 0px;">
                                    <li id="opname" class="xz6" data-l="2" data-bz="200" data-pid="6" data-sxf="30.0" data-juan="0"></li>
                                </ul>
                            </div>
                        </div>
                        <p class="price clearfix"> <span>当前价格：</span>
                            <em class="c-13" id="ydangqianj" style="display:none"></em>
                            <em class="c-13" id="bdangqianj" style="display:none"></em>
                            <em class="c-13" id="tdangqianj" style="display:none"></em>
                            <em  id="dqcid" style="display:none"></em>

                        </p>
                    </div>
                    <div class="b-line clearfix">
                        <p class="c-c-l clearfix">
                            <input type="checkbox" id="choose" value="">
                            <label for="choose" id="mychoose"></label>
                        </p>
                        <em class="c-c-i">使用&nbsp;<img src="/Public/Home/images/ticket-small.png">&nbsp;<i class="c11" id="c11">200</i>元体验劵(<span style="font-size:0.8em">一次只能使用一张</span>)</em> </div>
                    <div class="b-line clearfix">
                        <label class="b-label"></label>
                        <p class="num-list clearfix" id="yingjia">
                            <input type="text" value="1" class="num-in" style="margin-left:30px" readonly="">
                        </p>
                        <input type="hidden" name="juansl" value="0" id="juansl">
                        <p class="b-info">剩&nbsp;<span class="big" id="big">0</span>&nbsp;张</p>
                    </div>

                    <div class="b-line clearfix">
                        <label class="b-label">所用费用：</label>
                        <p class="pay"><span id="opprice">0</span>元</p>
                        <input type="hidden" name="sxf" id="sxf" value="30.0">
                        <p class="b-info">手续费&nbsp;<span id="j-5">0</span>&nbsp;元&nbsp;<img src="/Public/Home/images/qrgm.png" style="height:20px" id="shuoming"></p>
                    </div>-->
                    
                    <style type="text/css">
	            		.by li{float: left;text-align: center;padding: 8px 8px;margin: 3px;margin-bottom: 10px;border: 1px solid #ccc;background: #fff;width: 23%;height: 35px;font-size: 14px;font-weight: 700;}
	            		.by li.act{background: url('/Public/Home/img/select.png') no-repeat right bottom;background-size: 35%;background-color: #fff;} 
	            		.by dd{float: left;text-align: center;margin: 3px;border: 1px solid #ccc;background: #fff;width: 23%;height: 35px;font-size: 16px;}
	            		.by dd .inp{float: left;text-align: center;padding: 8px 4px;width: 100%;height: 100%;font-weight: 700;} 
	            		.tig {text-align: center;}
	            		.tig h1{text-align: center;    color: #7e040c;    text-align: center;    font-size: 1.5rem;    font-weight: normal;}
	            		.tig b{    font-size: 22px;}
	            		.tig span{    font-size: 22px;}
	            		.M_trad_table {
    width: 100%;
    color: #888;
    font-size: 1.1em;
}
.M_trad_table tr {
    width: 100%;
}
.M_trad_table td.td {
    border-right: 1px dashed #ccc;
}
.M_trad_table td span {
    color: #555;
}
.M_trad_table .td_big {
    font-size: 22px;
}

.M_trad_table td {
    padding: 0.5em;
    border-bottom: 1px dashed #ccc;
    letter-spacing: -1px;
}
.tr02{display: none;}
	            	</style> 
	            	<script type="text/javascript">
	$(function(){
		
		var bl = 80;
			
		$('.by li').click(function(){
			
			var money = parseInt($(this).text());
			var sy = money+money*bl/100;
			$('.by li').removeClass('act');
			$(this).addClass('act');
			$('.money').val(money);
			$('.tig b').text(money);
			$('.tig span').text(sy);
		});
		
		$('.by dd').click(function(){
			$('.by li').removeClass('act');
			$('.money').val(0);
			$('.tig b').text(0);
			$('.tig span').text(0);
		});
		
		$('.by .inp').bind('input propertychange', function() {
			var money = parseInt($('.by .inp').val());
			var sy = money+money*bl/100;
			$('.money').val(money);
			$('.tig b').text(money);
			$('.tig span').text(sy);
		});
		
	});
	            	</script>
	            <div class="b-line clearfix tig">
	            	<h1>购买：<b>100</b>元 <i>预期收益：<span>180</span>元</i></h1>
	            </div>
	            <div class="b-line clearfix tig">
	            	<h1 id="djs" style="font-size: 26px;"></h1>
	            </div>
	            <div class="b-line clearfix by">
	            	<ul>
	            		<li class="act">100</li>
	            		<li>200</li>
	            		<li>500</li>
	            		<li>1000</li> 
	            		<li>2000</li>
	            		<li>5000</li>
	            		<li>10000</li>
	            		<dd><input type="text" name="other" class="inp" value="" placeholder="其他金额" /></dd>
	            	</ul>
	            	
	            </div>
	            
	            <div class="b-line clearfix">
	    <table class="form-group tradestd_table M_trad_table">
          <tbody>
            <tr class="tr01">
              <td class="td">资产类型：<span id="flow_span">比特币</span></td>
              <td>结算周期：<span id="flow_span_time"><span id="leixing" class="td_big">60</span>秒</span></td>
            </tr>
            <tr class="tr01">
              <td class="td">订单方向：<span id="flow_span_dir" class="td_big "><font color="red"><span id="zhd" style="font-size:1.1em"></span></font></span></td>
              <td class="">当前价格：<span id="flow_span_value" class="td_big "></span><input id="gmjg" value="" style="display:none"></input></td>
            </tr>
            
            <tr class="tr02">
              <td class="td">已购买方向：<span id="fx" class="td_big "><font color="red"><span id="zhd" style="font-size:1.1em"></span></font></span></td>
              <td class="">购买时价格：<span id="jg" class="td_big "></span></td>
            </tr>
            
            <tr class="tr02">
              <td class="td">购买金额：<span id="je" class="td_big "><font color="red"><span id="zhd" style="font-size:1.1em"></span></font></span></td>
              <td class="">当前盈亏：<span id="yk" class="td_big "></span></td>
            </tr>
            <input type="hidden" name="date" id="date" value="" />
          </tbody>
        </table>
        
	            </div>
	            
        <input type="hidden" name="dz" id="dz" value="" placeholder="跌涨" />
        <input type="hidden" name="leixing" id="leixing2" value="" placeholder="多少秒" />
        <!--<input type="hidden" name="uid" id="uid" value="" placeholder="用户id" />-->
        <input type="hidden" name="money" id="money" class="money" value="100" placeholder="金额" />
        <!--<input type="hidden" name="danjia" id="danjia"  value="" placeholder="当时单价" />-->
        <input type="hidden" name="pid" value="1" id="pid2" placeholder="类型" >
              
              
              <!--<input type="hidden" name="type" value="1" id="type" >
              <input type="hidden" name="bz" value="2" id="bz">
              <input type="hidden" name="sl" value="1" id="sl">
              <input type="hidden" name="ordernumber" value="">
              <input type="hidden" name="product" value="6" id="product">
              <input type="hidden" name="jine" value="<?php echo ($user["price"]); ?>" id="jine">
              <input type="hidden" name="isJuan" value="" id="isJuan">-->
              
              <input type="hidden" class="pwd-btn  conform" id="conform1" onclick="goform(this);" value="确 认">
              <!--余额不足，去充值-->
              <a href="<?php echo U('User/recharge');?>" class="pwd-btn chr failure  none" id="conform2">余额不足，去充值</a>
              <a href="<?php echo U('Index/index');?>" class="pwd-btn chr failure  none" style="display: none;" id="conform3">此商品已购买</a>
              <a href="<?php echo U('Index/index');?>" class="pwd-btn chr failure  none" style="display: none;" id="conform4">继续购买</a>
              
            </form>
          </div>

</div>
</div>
 <!--购买弹窗结束-->
 <!--
 	作者：773632404@qq.com
 	时间：2016-01-09
 	描述：设置弹窗
 -->

 <!----设置窗口结束--->
 <!--
 	作者：773632404@qq.com
 	时间：2016-01-09
 	描述：顶部平仓弹窗
 -->
<!-- <div class="box">
    <div id="dialogBg3"></div>
    <div id="dialog3" class="">
        <div class="dialogTop">
            <a href="javascript:;" class="claseDialogBtn">关闭</a>
        </div>
      	<div class="pop-box none" id="buildBox3" style="display: block;">
            <nav class="pop-nav"> 
            	<a href="javascript:;" class="backtop back" id="claseDialogBtn3"></a>
            	<h3>确认平仓</h3>
            </nav>
            <form id="jccg" class="payout-form" method="post" action="<?php echo U('Index/edityk');?>" autocomplete="off">
            	<ul>
            		<li>
            			<p><span class="paytitle"></span></p>
            			<p>入仓时间<span class="paytime"></span></p>
            		</li>
            		<li>
            			<p>入仓价<span class="pbuyprice"></span></p>
            			<p>现价<span  class="payprice"></span></p>
            		</li>
            		<li>
            			<p>进仓金额<span class="money"></span></p>
            			<p><span class="paynumber"></span></p>
            		</li>
            		<li>
            			<p>盈亏<span class="payploss"></span></p>
            			<p>盈余<span class="comiss"></span>元</p>
            		</li>
            		<li class="opener">
            			<input type="button" value="取消" class="payout">
            			<input type="submit" value="确认平仓" class="payenter">
            		</li>
            	</ul>
	        </form>
          </div>

</div>
</div> -->
<!--顶部平仓弹窗结束-->

<!--    <ul class="info-nav clearfix">
        <li><a class="selected">K线行情</a></li>
        <li><a>多空对决</a></li>
        <li><a>区间参考</a></li>
      </ul> -->
    <div class="info-box">
      <div class="info-d">
        <div class="trend-box">
          <div class="trend-chart" style="cursor: default;overflow: hidden;background: #f1f1f1;width: 100%;">
         
         <!--k线图开始-->
        <!--<link rel="stylesheet" href="/k/css/jquery.mobile-1.3.2.min.css">-->
<!--<link rel="stylesheet" href="/k/css/css_l.css">-->
<!--<link rel="stylesheet" href="/k/css/swiper3.1.0.min.css">-->
<!--<script src="/k/js/jquery-1.11.3.min.js"></script>-->
<!--<script src="/k/js/one_user.js"></script>-->
<!--<script src="/k/js/jquery.mobile-1.3.2.min.js"></script>-->

<script type="text/javascript">
	var IMAGES = "/Public/MPublic/images";
	var ROOT = "";
	
	var MIN_ORDER = 10;        //20151106
	
	var FLAG = 1;
	
	var WINNERT = 0.75;
	//var code = "<?php echo $_GET['code'];?>";
	var code = "btc";
</script> 
<script src="/k/js/highstock.js"></script> 
<script src="/k/js/drawdat.js"></script>
<!--<link href="/k/css/m_style_1.css" rel="stylesheet" type="text/css">-->
<!--<link href="/k/css/m_select.css" rel="stylesheet" type="text/css">-->
<div class="main_M">
<div class="M_trdiv">
    <div class="M_zhe"></div>
    <div id="chartdiv" style="height:180px;min-width:100%;position: relative; float:left;">
    	
      	<div class='loader loader--audioWave'></div>
    </div>
    <div  style="position: absolute;min-width:100%;height: 0px;"> <span id="data_cursor" class="data_cursor"  style="  display:;  position: absolute; left:3%; min-width: 96%; height: 0px; z-index: 3; border-top: 1px #999 dashed;">
      <div id="move_line_data" style="width: 47px; height: 16px; position: absolute; right:0; top: -8px; font-size: 10px; line-height: 16px; text-align: center; background:#999; color:#FFFFFF;"> </div>
      </span> </div>
      </div>
</div>      
      <!--k线图结束-->
      
 
 
          </div>       
        </div>
         <!--<ul class="trend-nav clearfix TimeMenu">
            <li><a href="javascript:void(0)" data-interval='1' data-type="area" class="cur changed">分时线</a></li>
            <li><a href="javascript:void(0)" data-interval='5' data-type="candlestick">5分钟</a></li>
            <li><a href="javascript:void(0)" data-interval='15' data-type="candlestick">15分钟</a></li>
            <li><a href="javascript:void(0)" data-interval='30' data-type="candlestick">30分钟</a></li>
            <li><a href="javascript:void(0)" data-interval='1d' data-type="candlestick">日k线</a></li>
          </ul>-->
      </div>
    </div>



<style type="text/css">
	.part-ct-transcation {
    width: 65px;
    height: 1.8em;
    float: left;
    line-height: 2em;
    text-align: center;
}


.mobile_wrap{ position: relative;width: 100%;background:#dc423a; display:table; padding-bottom:20px;height: 100%;}
.balance{width:95%;padding-top: 15px;}
.balance h2{color:#ffffff;font-weight:normal;text-align:center;line-height:60px;font-size:20px;}
.balance h2 i{color:#f5e350;font-size:26px;}
.active {
    display: table;
    width: 100%;
}
.active h1{text-align:center;color:#7e040c;text-align:center;font-size:20px;font-weight:normal;}
.active h1 b{font-size:26px;}
.active h1 i{color:#dc423a;}
.active h1 i span{font-size:26px;}
.active h2{background:#fe635f;color:#ffffff;text-align:center; padding:5px 0;font-weight:normal;font-size: 18px;}
.active h2 i{color:#efdc70;}
.active ul{display:table;width:100%; padding-bottom:5px;}
.active ul li{width:23%;height:35px; margin:0 1%;margin-top:10px;text-align:center;color:#811b10;position:relative;float: left;}
.active ul li:after{ content:"";position:absolute;width:100%;height:100%;border:solid 1px #e39764; left:0px;top:-1px;}
.active ul li img{width:101%;height:100%;}
/*.active ul li:nth-child(3){background:#e63357;}*/
.active ul li p{font-size:15px;margin-top:8px;line-height:15px;}
.active ul li span{font-size:14px; white-space:nowrap; word-spacing:normal; overflow:hidden;width:100%;float:left;text-overflow:ellipsis;color: #9C9898;}
.active ul li.slct{position:relative;}
.active ul li.slct:after{border:solid 1px #d94334}
.active ul li.slct:before{content:"";width:30px;height:22px;position:absolute;top: 11px; bottom:0px; right:-1px; background:url(../images/select.png); background-size:100% 100%;}
.active ul li.not{color:#838383;}
.active ul li.not input{position:absolute;height:33px; border:none; left:1px; top:0; z-index:1;width:100%;font-size:18px; color:#333; text-align:center; display:none;}
.active ul li.not:after{border:solid 1px #c0c0c0}
.active ul li.nosel p,.active ul li.nosel span{ opacity:0;position:absolute;}

.prompt{width:95%;margin-top:10px;}
.prompt p{color:#dddddd;}
.prompt .but_sub{height:40px; border:none;background:#fbe26b;border-radius:4px;width:100%;color:#811b10;font-size:16px;margin-top:8px; cursor:pointer;}
.prompt span{position:relative;color:#dddddd;margin-top:15px;float:left;width:100%;}
.prompt span input{ -webkit-appearance:none;width:14px;height:14px; background:url(../images/img2.png) no-repeat; background-size:100% 100%;float:left;}
.prompt span i{ background:url(../images/img1.png); background-size:100% 100%;width:18px;height:18px;position:absolute; left:0px; top:-3px;}
.prompt span a{color:#ffed20; text-decoration:underline;}

.explain{width:95%;display:table; display:none;}
.explain .text{margin-top:30px;margin-top:20px;float:left;color:#dddddd;}

.box_show{width:100%;height:100%; position:fixed; top:0; left:0; background:rgba(0,0,0,.65); display:none; z-index:1;}
.box_show .layout{width:80%;border-radius:20px;height:280px; background:#fff;position:absolute; left:10%; top:30%; overflow:hidden;}
.box_show .layout h1{color:#ffffff;background:#f60;line-height:50px;background:#fdb900;font-size:20px;text-align:center;font-weight:normal;}
.box_show .layout p{color:#494949;text-align:center;width:90%; margin:0 auto;margin-top:50px;}
.box_show .layout a{ display:block;height:35px;line-height:35px;border-radius:6px;width:90%;text-align:center;border:solid 1px #fdb900; margin:0 auto;margin-top:8px;color:#fdb900;}
.box_show .layout a.solid{color:#ffffff;background:#ffb901;margin-top:34px;}
@media screen and (min-width:520px){
.mobile_wrap{/*width:414px;*/height: 100%;}   
.box_show{width:414px; left:50%;margin-left:-207px;}

}


/*realtime-ab*/
.l-tt-transcation {
	height:30px;
	background:#f1f1f1;
	border-bottom:1px solid #d5d5d5;
	line-height:30px;
	text-align:center;
}
.li-tt-transcation {
	width:65px;
	float:left;
	font-size:0.8em;
}
.box-ct-transcation {
	max-height:50em;
	overflow-y:auto;
}
.l-ct-transcation {
	
}
.li-ct-transcation {
	height:2.5em;
	background:#fff;
	border-bottom:1px solid #d5d5d5;
	cursor:pointer;
	overflow:hidden;
	line-height: 2.5em;
}
.li-ct-transcation:hover {
    background:#ffffaa;
}
.hover-ct-transcation {
	background:#ffffaa;
}
.part-ct-transcation {
	width:65px;
	height:2.5em;
	float:left;
	line-height:2.5em;
	text-align:center;
}
.part-ct-transcation_right {
    width:60px;
    height:30px;
    float:left;
    line-height:30px;
    text-align:center;
}
.part-ct-transcation_right_little {
    width:5em;
    height:2em;
    float:left;
    line-height:2em;
    text-align:right;
}
.li-ct-transcation .buyspan {
	display:block;
	height:20px;
	margin-top:5px;
	background:#689700;
}
.li-ct-transcation .sellspan {
	display:block;
	height:20px;
	margin-top:5px;
	background:#ff0000;
}
.box-ct-transcation .buy {
	color:#689700;
}
.box-ct-transcation .sell {
	color:#ff0000;
}

.futureMenu{
	width:127px;
	float:left;
	border-right:1px solid #d9d9d9;
/* 	height:250px; */
	background: #f8f8f8;
}
.futureMenu ul li{
	text-align: center;
	height: 38px;
	line-height: 38px;
	border-bottom:1px solid #d9d9d9;
}
.futureMenu ul .cur{
	background: #fff;
	border-left: 3px solid #1987da;
	border-right: 0px solid #d9d9d9;
	width: 125px;
}
.futureMenu ul li a{
	text-decoration: none;
	color: #333;
/* 	font-weight: bold; */
	font-size: 14px;
}
.futureMenu ul .cur a{
	color:#1987da;
}
.futureMenu ul li a:hover{
	text-decoration: none;
	color:#1987da;
}
/*realtime*/
.realtimeboxBody{
	width:1000px;
	padding-top:10px;
	padding-bottom:20px;
	margin:0 auto;
}
.realtimebox{
	margin-bottom:15px;
	width:100%;
	padding-top:5px;
}

.realtimebox .realtimeleft{
	float:left;
	width:100%;
	/*background:#ffffff;*/
}

.realtimebox .realtimeleft .solid{
	
}

.realtimebox .realtimeleft .solid .box .title{
	width:100%;
	height:35px;
	position:relative;
}

.realtimebox .realtimeleft .solid .box .title .ttitle{
	font-size:14px;
	height:24px;
	padding-left:5px;
	padding-top:7px;
	color:#1487c8;
	float:left;
}
.realtimeboxBody .solid .box .title .titleImg1{
	height:19px;
	display:inline-block;
	position:relative;
	left:180px;
	top:8px;
	cursor:pointer;
}
.realtimeboxBody .solid .box .title .titleImg2{
	width:160px;
	height:19px;
	display:inline-block;
	position:relative;
	left:82px;
	top:12px;
	cursor:pointer;
}

.realtimebox .realtimeleft .solid .box .title .updateTime{
	float:right;
	height:35px;
	line-height:35px;
	text-align:center;
	width:345px;
}

.realtimebox .realtimeleft .solid .box .title .updateTime .div1{
	float:left;
	height:35px;
	padding-left:5px;
}

.realtimebox .realtimeleft .solid .box .title .updateTime .div1 span{
	font-size:14px;
	color:#1487C8;
}

.realtimebox .realtimeleft .solid .box .title .updateTime .div1 select{
	width:60px;
	font-size:14px;
	height:21px;
}

.realtimebox .realtimeleft .solid .box .title .updateTime .div2{
	float:right;
	height:35px;
	padding-right:5px;
}

.realtimebox .realtimeleft .solid .box .real-left{
	width:100%;
	float:left;
	background:#ffffff;
	border:1px solid #e1e1e1;
}
.icon {
    background: url(../images/bugle.png) center center no-repeat;
    background-size: 20px auto;
    width: 20px;
    height: 20px;
    display: inline-block;
    margin-left: .1rem;
    margin-right: .05rem;
}
.trade-num {
    color: #fc8b1d;
}
.floatVideo {
    left: 1rem;
    bottom: 7rem;
    position: fixed;
}
.floatVideo{
    width: 8rem;
    height: 8rem;
    z-index: 100;
}
.floatViewAd {
    left: 2rem;
    bottom: 7rem;
    position: fixed;
}
.floatViewAd {
    width: 7rem;
    height: 7rem;
    z-index: 999;
}
.ad-img {
    background-size: contain;
    max-width: 100%;
}
.big_time{
	font-size:3em;
	color:red;
}
.floatVideo {
    z-index: 999;
}
.gp-video {
    border: 1px solid #ff8300;
    background-color: #000;
} 
.close-btn-video {
    display: inline-block;
    position: absolute;
	 z-index: 999;
}
.gp-ad-video-close {
    background-size: contain;
    width: 1.5rem;
    height: 1.5rem;
}
.com-empty {
    position: relative;
    padding: 30px 0 30px 0;
    display: block;
    text-align: center;
    overflow: hidden;
}
.com-empty .come-txt {
    line-height: 28px;
    color: #999;
    font-size: 14px;
}
.com-empty1 {
    position: relative;
    padding: 30px 0 30px 0;
    display: block;
    text-align: center;
    overflow: hidden;
}
.com-empty1 .come-txt1 {
    line-height: 28px;
    color: #999;
    font-size: 14px;
}
.info-d {
    width: 100%;
    /*min-height: 300px;*/
}
.rec-table {
    width: 100%;
    background-color: #fff;
}
.rec-table .rec-th:first-child, .rec-table .rec-td:first-child {
    padding-left: 12px;
}

.rec-table .rec-th {
    line-height: 36px;
    background-color: #f9f9f9;
    color: #999;
    font-size: 13px;
    text-align: center;
}
.rec-table .rec-th, .rec-table .rec-td {
    padding: 6px 0;
    position: relative;
}
.rec-table .rec-td {
    padding: 11px 0;
    color: #101010;
    font-size: 13px;
    text-align: center;
}
.fcgray3 {
    color: #999 !important;
}
.rec-tr{border-bottom:1px solid #ccc !important;}
</style>
<div class="info-box">
             <ul class="info-nav clearfix">
                 <li><a class="selected" id="newodrers">最新成交</a></li>
                 <li id="orders"><a class="">持仓订单</a></li>
                 <li id="history"><a>交易记录</a></li>
             </ul>
<div class="realtimebox info-d" id="realtimebox" style="display: block;">
<div class="realtimeleft">
	<div class="solid">
	    <div class="box">
	        <div id="marketEntrust" style="min-height:200px;">
	            <div class="real-left">
	                <ul class="l-tt-transcation">
					<li class="li-tt-transcation" style="width:20%;">买入时间</li>
	                    <li class="li-tt-transcation" style="width:20%;">买入商品</li>
	                    <li class="li-tt-transcation" style="width:20%;">买入方向</li>
	                    <li class="li-tt-transcation" style="width:40%;">买入量</li>
	                </ul>
<div class="box-ct-transcation">
  <ul class="l-ct-transcation" id="depth_buy_context">
  	<?php if(is_array($order)): $i = 0; $__LIST__ = $order;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><li class="li-ct-transcation" style="margin-top: 0px;">
  		<div class="part-ct-transcation" style="width:20%;"><?php echo (date('H:i:s',$v["buytime"])); ?></div>
  		<div <?php if($v["ostyle"] == 0): ?>class="part-ct-transcation sell"  <?php else: ?> class="part-ct-transcation buy"<?php endif; ?> style="width:20%;"><?php echo ($v["ptitle"]); ?></div>
  		<div class="part-ct-transcation_right" style="width:20%;"><span id="buyPriceSpan1">
  			<?php if($v["ostyle"] == 0): ?><font color="red">买涨</font>
  			<?php else: ?>
    			<font color="green">买跌</font><?php endif; ?>
  		</span></div>
  		<div class="part-ct-transcation_right" style="padding-left: 0px"><span id="buyAmountSpan1"><?php echo ($v["onumber"]); ?></span></div>
  		<div class="part-ct-transcation" style="padding-left:0.8em"><span style="width:<?php echo (bfb($v["onumber"])); ?>px;" <?php if($v["ostyle"] == 0): ?>class="sellspan" <?php else: ?> class="buyspan"<?php endif; ?>id="buySpanColor1"></span></div>
  		
  		
  		
  	</li><?php endforeach; endif; else: echo "" ;endif; ?>
  </ul>
</div>
	            </div>
	        </div>
	    </div>
	</div>
</div>
</div>
             <div class="info-d none" style="display: none;">
    <table class="rec-table rec-table6 hide" id="now_list" cellspacing="0"  cellspacing="0"  cellpadding="0" style="border-collapse:collapse;">
    	
    	<tbody><tr class="rec-tr">
            <th class="rec-th">资产类型</th>
            <th class="rec-th">涨/跌</th>
            <th class="rec-th">买入时间</th> 
			<th class="rec-th">买入金额</th>
			<th class="rec-th">盈利情况</th> 
			<th class="rec-th">订单状态</th> 
        </tr>

    	<?php if(is_array($order2)): $i = 0; $__LIST__ = array_slice($order2,0,15,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$o): $mod = ($i % 2 );++$i;?><tr class="rec-tr">
    		<td class="rec-td"><?php echo ($o["ptitle"]); ?></td>
    		<?php if($o["ostyle"] == 1): ?><td class="rec-td" style="color: green;">跌</td>
    			<?php else: ?>
    			<td class="rec-td" style="color: red;">涨</td><?php endif; ?>
    		
    		<td class="rec-td rec-td fcgray3"><?php echo (date('m-d H:i:s',$o["buytime"])); ?></td>
    		<td class="rec-td rec-td fcgray3"><?php echo ($o["onumber"]); ?></td>
    		
    		<?php if($o["ploss"] > 0): ?><td class="rec-td" style="color: red;">+<?php echo ($o["ploss"]); ?></td>
    			<td class="rec-td" style="color: red;">盈利</td>
    		<?php elseif($o["ploss"] < 0): ?>
    			<td class="rec-td" style="color: green;"><?php echo ($o["ploss"]); ?></td>
    			<td class="rec-td" style="color: green;">亏损</td>
    		<?php else: ?>
    			<td class="rec-td"><?php echo ($o["ploss"]); ?></td>
    			<?php if($o["ostaus"] == 0): ?><td class="rec-td">未结算</td>
    			<?php else: ?>
    				<td class="rec-td">平</td><?php endif; endif; ?>
    		</tr><?php endforeach; endif; else: echo "" ;endif; ?>
    	
       
    </tbody>
    	
    </table>
      <?php if(!empty($order2) && count($order2)>15){?> 

<div class="com-empty" style="padding-bottom: 15px;"><div class="come-txt"><a href="/index.php/Home/Detailed/dtrading">查看更多历史订单</a></div></div> 

<?php }elseif(empty($order2)){?>
	<div class="com-empty" style="padding-bottom: 30px;"><div class="come-txt">站暂无记录</div></div> 
	<?php }?>

             </div>
             <div class="info-d none" role="main" style="display: none;">
    <table class="rec-table rec-table6" id="all_list" cellspacing="0"  cellspacing="0"  cellpadding="0" style="border-collapse:collapse;">
        <tbody><tr class="rec-tr">
            <th class="rec-th">资产类型</th>
            <th class="rec-th">涨/跌</th>
            <th class="rec-th">买入时间</th> 
			<th class="rec-th">买入金额</th>
			<th class="rec-th">盈利情况</th> 
			<th class="rec-th">订单状态</th> 
        </tr>

    	<?php if(is_array($order3)): $i = 0; $__LIST__ = array_slice($order3,0,15,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$o): $mod = ($i % 2 );++$i;?><tr class="rec-tr">
    		<td class="rec-td"><?php echo ($o["ptitle"]); ?></td>
    		<?php if($o["ostyle"] == 1): ?><td class="rec-td" style="color: green;">跌</td>
    			<?php else: ?>
    			<td class="rec-td" style="color: red;">涨</td><?php endif; ?>
    		
    		<td class="rec-td rec-td fcgray3"><?php echo (date('m-d H:i:s',$o["buytime"])); ?></td>
    		<td class="rec-td rec-td fcgray3"><?php echo ($o["onumber"]); ?></td>
    		
    		<?php if($o["ploss"] > 0): ?><td class="rec-td" style="color: red;">+<?php echo ($o["ploss"]); ?></td>
    			<td class="rec-td" style="color: red;">盈利</td>
    		<?php elseif($o["ploss"] < 0): ?>
    			<td class="rec-td" style="color: green;"><?php echo ($o["ploss"]); ?></td>
    			<td class="rec-td" style="color: green;">亏损</td>
    		<?php else: ?>
    			<td class="rec-td"><?php echo ($o["ploss"]); ?></td>
    			<?php if($o["ostaus"] == 0): ?><td class="rec-td">未结算</td>
    			<?php else: ?>
    				<td class="rec-td">平</td><?php endif; endif; ?>
    		</tr><?php endforeach; endif; else: echo "" ;endif; ?>
    	
       
    </tbody></table>
  <?php if(!empty($order3) && count($order3)>15){?> 

<div class="com-empty1" style="padding-bottom: 15px;"><div class="come-txt1"><a href="/index.php/Home/Detailed/dtrading">查看更多历史订单</a></div></div> 

<?php }elseif(empty($order3)){?>
	<div class="com-empty1" style="padding-bottom: 30px;"><div class="come-txt1">站暂无记录</div></div> 
	<?php }?>
             </div>
             <div style="clear: both;"></div>
         </div>
         
         
         
         
         
          
         
         

      <div class="info-box">
      <ul class="info-nav clearfix">
        <li value="1"><a class="selected">最新资讯</a></li>
        <li value="2" style="width:33.4%"><a>财经要闻</a></li>
        <li value="3"><a>系统公告</a></li>
      </ul>
      <div class="info-d">
      <?php if(is_array($news)): $i = 0; $__LIST__ = $news;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="news-list clearfix">
          <div class="news_pic"> <a href="" class="clearfix"><img src="/Public/Home/images/pic.gif"></a> </div>
          <div class="news_text"> 
            <p class="zx"><img src="/Public/Home/images/zx.png"></p>
            <p class="n_t"><a href="" class="clearfix"> <span><?php echo ($vo["ntitle"]); ?></span></a> </p>
            <p class="n_cs"><a href="" class="clearfix"> <span></span></a> </p>
            <p class="n_m"><a href="<?php echo U('News/newsid');?>?nid=<?php echo ($vo['nid']); ?>" class="news-more">查看更多&gt;</a></p>
           </div>
        </div><?php endforeach; endif; else: echo "" ;endif; ?>
        <div class="ckgd"><a href="<?php echo U('News/newslist');?>?fid=1">查看更多</a></div>
      </div>
      <div class="info-d none">
        <ul class="news-list clearfix">
        <?php if(is_array($focus)): $i = 0; $__LIST__ = $focus;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li> <a href="<?php echo U('News/newsid');?>?nid=<?php echo ($vo['nid']); ?>" class="clearfix"> <span><?php echo ($vo["ntitle"]); ?></span> <i><?php echo (date('Y-m-d H:i:s',$vo["ntime"])); ?></i> </a> </li><?php endforeach; endif; else: echo "" ;endif; ?>
          <a href="<?php echo U('News/newslist');?>?fid=2" class="news-more">查看更多&gt;</a>
        </ul>
      </div>
      <div class="info-d none">
        <ul class="news-list clearfix">
          <?php if(is_array($notices)): $i = 0; $__LIST__ = $notices;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li> <a href="<?php echo U('News/newsid');?>?nid=<?php echo ($vo['nid']); ?>" class="clearfix"> <span><?php echo ($vo["ntitle"]); ?></span> <i><?php echo (date('Y-m-d H:i:s',$vo["ntime"])); ?></i> </a> </li><?php endforeach; endif; else: echo "" ;endif; ?>
          <a href="<?php echo U('News/newslist');?>?fid=3" class="news-more">查看更多&gt;</a>
        </ul>
      </div>
            <link rel="stylesheet" href="/Public/Home/css/jquery.mobile-1.3.2.min.css">
<link rel="stylesheet" href="/Public/Home/css/swiper3.1.0.min.css">	  
	<div data-theme="a" data-role="footer" data-position="fixed" class="ui-footer ui-bar-a ui-footer-fixed slideup" role="contentinfo">
    <div class="ui-grid-d footer_L">
      <div class="ui-block-a footer_L_W">
					<div> <a href="<?php echo U('Index/index');?>" data-transition="fade" data-ajax="false" class="ui-link"> <img src="/Public/Home/css/home_1.png" alt="image"><div>首页</div> </a> </div>      </div>
      <div class="ui-block-b footer_L_W">
		<div> <a class="ui-link" href="<?php echo U('Index/index');?>" data-transition="fade" data-ajax="false"> <img src="/Public/Home/css/trade_2.png" alt="image"><div>交易</div> </a> </div>
		      </div>
	  <!--
      <div class="ui-block-c footer_L_W">
					<div> <a href="/index.php/agent/agent_manage" data-transition="fade" data-ajax='false'> <img src="/Public/MPublic/images/proxy_1.png" alt="image"><div>代理</div> </a> </div>      </div>
-->
      <div class="ui-block-d footer_L_W">   
					<div> <a href="<?php echo U('User/img');?>" data-transition="fade" data-ajax="false" class="ui-link"> <img src="/Public/Home/css/active_1.png" alt="image"><div>分享</div> </a> </div>      </div>
      <div class="ui-block-e footer_L_W">
					<div> <a href="<?php echo U('User/memberinfo');?>" data-transition="fade" data-ajax="false" class="ui-link"> <img src="/Public/Home/css/me_1.png" alt="image"><div>我</div> </a> </div>      </div>
    </div>
  </div>
  
   
    </div>
    
  </div>
  
  <!--遮罩层-->
</div>

<div class="profit_box" style="display: block;"><ul class="profit" style="bottom: 0px;"><li class="Ulogin-hr-wrap"><span class="info"><img src="/ad/images/logo_png.png" width="17"> <font class="uname" id="profit_name">111</font> 刚刚<font color="red">盈利</font><i id="profit">125元</i></span></li></ul></div>

 <!--弹窗开始-->
<link rel="stylesheet" href="/Public/Home/css/common.css"/>
<script src="/Public/Home/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript">
var w,h,className;
function getSrceenWH(){
  w = $(window).width();
  h = $(window).height();
  $('#dialogBg').width(w).height(h);
  $('#dialogBg2').width(w).height(h);
  $('#dialogBg3').width(w).height(h);
}
window.onresize = function(){  
  getSrceenWH();
} 
$(window).resize();  

$(function(){

  getSrceenWH();

  //购买显示弹框
  $('#may a').click(function(){ 
  	
  	
    //获取选择是涨还是跌的值
    but = $(this).attr('value');
    $('#zhd').html(but);
    
    $a = but.slice(but.length-1,but.length);
    
    $('#dz').val($a);
    
    //买涨，买跌的时候执行。
      $(".product-box").each(function(){
      	var status = $(this).attr('status');
      	//alert(status);
      	
      if(status=="mark"){
      	 
        var pid= $(this).find(".swiper-slide-active").children("input[name=pid]").val();
        var time= $(this).find(".swiper-slide-active").children("input[name=time]").val();
        var vouprice= $(this).find(".swiper-slide-active h4 span").html();
        var ubalance = $('#usprice').text();
		//var vouprice = $("#opprice").text();
        if(eval(ubalance)<=eval(vouprice)){
             $(".conform").attr("type","hidden");
             $("#conform2").show();
        }else{
            $(".conform").attr("type","button");
            $("#conform2").hide();
        } 
       $.ajax({  
            type: "post",  
            url: "<?php echo U('Index/selectid');?>",
            data:"pid="+pid,  
//          async:false,  
            success: function(data) { 
            	
            
                 
                 $('#leixing').html(data['uprice']);  
                 $('#leixing2').val(data['uprice']);  
                 $('#pid2').val(data['pid']);  
                 
                 
                 
                 /*$('#opname').html(data['ptitle']); 
                 $('#opprice').html(data['uprice']);  
                 $('#j-5').html(data['feeprice']);
                 $('#c11').html(data['uprice']);  
                 $('#big').html(data['sum']);
                 $('#pid').val(data['pid']); 
                 
                 //算加减传的值
                 $('#bz').val(data['uprice']); 
                 $('#sxf').val(data['feeprice']); 
                 $('#juansl').val(data['sum']);
                 $('#type').val(data['pid']);   */
                 
                  
                 if(data['cid']==1){
                    $('#ydangqianj').css('display',"block");
                    $('#dqcid').html(1);
                 }else if(data['cid']==2){
                    $('#bdangqianj').css('display',"block");
                    $('#dqcid').html(2);
                 }else{
                    $('#tdangqianj').css('display',"block");
                    $('#dqcid').html(3);
                 }
                 
                 
                  
            },  
            error: function(data) {  
                
            }  
        });
        }
      });
      
         //商品id
    var mypid=$('#type').val();

     $.ajax({
        type:'post',
        url:"<?php echo U('Detailed/judgment');?>",
        data:{"mypid":mypid},
//      async:false, 
        success:function(data){
          if (data==99) {
              $('#conform1').attr("type","hidden");
              $('#conform2').css('display','none');
//            $('#conform3').css('display','block');
          }
        }
    });
 
      className = $(this).attr('class');
      $('#dialogBg').fadeIn();
      $('#dialog').removeAttr('class').addClass('animated '+className+'').fadeIn();

  });
  //关闭弹窗
  $('#claseDialogBtn').click(function(){
    $('#dialogBg').fadeOut(1,function(){
      $('#dialog').addClass('bounceOutUp').fadeOut();
    });

  });
  $('#dialogBg').click(function(){
    $('#dialogBg').fadeOut(1,function(){
      $('#dialog').addClass('bounceOutUp').fadeOut();
    });

  });
  
  
});
</script>
<script type="text/javascript">
setInterval('pcprice()', 1000);
function pcprice() 
    { 
    	
      var yinprice1=0;
      var yinprice2=0;
      var yinprice3=0;
      var ykzf = $(".ykzf");
      var yincangyoujia=parseFloat($('.yincangyoujia').html()).toFixed(2);
      //console.log(yincangyoujia);
      ykzf.each(function(){
          var buyprice = parseFloat($(this).children(".buyprice").html()).toFixed(2);
          //状态0是涨，1是跌
          var ykzfostyle = $(this).children(".ykzfostyle").html();
          //是否体验卷0不是，1是
          var ykzfeid = $(this).children(".ykzfeid").html();
          //数量
          var onumber = $(this).children(".onumber").html();
					//波动
          var ykzfwave = $(this).children(".ykzfwave").html();
          if(ykzfeid==0){
              if (ykzfostyle==0) {
                   var newprice1 = (yincangyoujia-buyprice)*ykzfwave*onumber;
              }else{
                   var newprice1 = (buyprice-yincangyoujia)*ykzfwave*onumber;
              };
              yinprice1 = newprice1+yinprice1;
              var newprice3 =newprice1.toFixed(2);
              //var newprice4 =(yinprice1.toFixed(1))/2;
            }else{
                 var newprice3 =0;
                // var newprice4 =0;
            }
			if(yincangyoujia=="NaN"){
				$(this).children(".cash1").text("");
			}else{
				$(this).children(".cash1").html(newprice3);
				if(newprice3>=0){
						$(this).children(".cash1").css('color','#ed0000')
				}else{
						$(this).children(".cash1").css('color','#2fb44e')
				}
			}         
    //        $(this).children(".cash11").html(newprice4);
      });
      var ykzf1 = $(".ykzf1");
      var ycbaiyinjia=parseFloat($('.ycbaiyinjia').html()).toFixed(2);
      //console.log(ycbaiyinjia);
      ykzf1.each(function(){
          var buyprice1 = parseFloat($(this).children(".buyprice2").html()).toFixed(2);
          //状态0是涨，1是跌
          var ykzfostyle = $(this).children(".ykzfostyle").html();
           //是否体验卷0不是，1是
          var ykzfeid = $(this).children(".ykzfeid").html();
          //数量
          var onumber = $(this).children(".onumber").html();
        	//波动
          var ykzfwave = $(this).children(".ykzfwave").html();
          if(ykzfeid==0){
              if (ykzfostyle==0) {
                  var yinprice1 = (ycbaiyinjia-buyprice1)*ykzfwave*onumber;
              }else{
                  var yinprice1 = (buyprice1-ycbaiyinjia)*ykzfwave*onumber;
              };
                  yinprice2 = yinprice1+yinprice2;
                  var yinprice3 =yinprice1.toFixed(2);
              //    var yinprice4 =(yinprice2.toFixed(1))/2;
          }else{
                var yinprice3 =0;
             //   var yinprice4 =0;
          }
          if(ycbaiyinjia=="NaN"){
						$(this).children(".cash2").text("");
					}else{
						$(this).children(".cash2").html(yinprice3);
						if(yinprice3>=0){
								$(this).children(".cash2").css('color','#ed0000')
						}else{
								$(this).children(".cash2").css('color','#2fb44e')
						}
					}
           
      //     $(this).children(".cash22").html(yinprice4);
      });        
      var ykzf2 = $(".ykzf2");
      var yctojia=parseFloat($('.yctojia').html()).toFixed(2);
      ykzf2.each(function(){
          var buyprice2 = parseFloat($(this).children(".buyprice3").html()).toFixed(2);
           //状态0是涨，1是跌
          var ykzfostyle = $(this).children(".ykzfostyle").html();
          //是否体验卷0不是，1是
          var ykzfeid = $(this).children(".ykzfeid").html();
          //数量
          var onumber = $(this).children(".onumber").html();
          //波动
          var ykzfwave = $(this).children(".ykzfwave").html();
          if(ykzfeid==0){
               if (ykzfostyle==0) {
                    var newpr3 = (yctojia-buyprice2)*ykzfwave*onumber;
              }else{
                    var newpr3 = (buyprice2-yctojia)*ykzfwave*onumber;
              };
                  yinprice3=newpr3+yinprice3;
                  newpr4 = newpr3.toFixed(2);
               //   newpr5 = (yinprice3.toFixed(1))/2;
          }else{
                  newpr4 = 0;
              //    newpr5 = 0;
          }
          
          if(yctojia=="NaN"){
						$(this).children(".cash3").text("");	
					}else{
						$(this).children(".cash3").html(newpr4);
						if(newpr4>=0){
								$(this).children(".cash3").css('color','#ed0000')
						}else{
								$(this).children(".cash3").css('color','#2fb44e')
						}
					}
    //      $(this).children(".cash33").html(newpr5);
      });    
      var picsum=Number(yinprice1+yinprice2+yinprice3).toFixed(2);
      // picsum =picsum/2
      $('.ploss').each(function(){
      	if($(this).text()==""){
	      	$('.yk_con').html();
	      }else{
	      	$('.yk_con').html(picsum);
	      }	
      })
       
    } 

</script>
<!--查看交易end  -->    
 <script type="text/javascript">
 
 function goform(obj){

 	
 	
    var money=$('#money').val();
    var leixing=$('#leixing2').val();
    var pid=$('#pid2').val();
    var dz=$('#dz').val();
	var jg=document.getElementById('#flow_span_value').innerText;
alert(jg);


	    $.ajax({
			
	        type:'post',
	        url:"<?php echo U('Detailed/addorder');?>",
	        data:{"money":money,"leixing":leixing,"pid":pid,"dz":dz,"mygetpeice":jg},
	        success:function(datas){
	        //alert(datas.buyprice);
	          if (datas==0) {
	              //$('#message').css('display','block');
	              alert('参数错误，请重新购买！');
	          }else{
	      	    
				var json = eval('(' + datas + ')'); 
				$('#jg').text(json.buypirce);
				
				if(dz=='跌'){
					var dzs = '<font color="green" class="dz2">买跌</font>';
				}else{
					var dzs = '<font color="red" class="dz2">买涨</font>';
				}
				$('#fx').html(dzs);
				$('#je').text(json.onumber);
	      	    $('#date').val(json.end);
				
				$(obj).attr("type","hidden");
	      	    $('#conform4').show(10);
				$('.by').hide(10);
	      	    $('.tr02').show();
	      	   
	      	    var ct = setInterval("timer()",1000);  
	      	     //window.location.href="<?php echo U('Detailed/orderid');?>?orderid="+data+"&marker=first";
	      	     //window.location.href="<?php echo U('Index/index');?>";
	          }
	        }
	    });


 }  
 
 
function timer()  
{  
	var dates = $('#date').val();
	var date1=new Date(dates);
	var date2=new Date();
	var date3=(date1.getTime()-date2.getTime())/1000;
	
	var t = parseInt(date3);
	if(t>=0){
		$('#djs').text(t+'秒');
	}else{
		
		clearInterval(ct);
		window.location.href="<?php echo U('Detailed/dtrading');?>";
	}
	
	 
	
}  




 
 
 </script> 
<!-- <script type="text/javascript" src="/Public/Home/js/echarts-plain.js"></script> -->
<script src="/Public/Home/js/idangerous.swiper.min.js"></script>
<script src="/Public/Home/js/fastclick.js"></script>
<script>
    
	 
	var mySwiper = new Swiper('.swiper2', {
        paginationClickable: true,
        centeredSlides: true,
        slidesPerView:1.5,
        watchActiveIndex: true
    });
  var mySwiper = new Swiper('.swiper1', {
        paginationClickable: true,
        centeredSlides: true,
        slidesPerView:1.5,
        watchActiveIndex: true
    });
      
  var mySwiper = new Swiper('.swiper3', {
        paginationClickable: true,
        centeredSlides: true,
        slidesPerView:1.5,
        watchActiveIndex: true
    });
    
	//若给元素加none类隐藏会影响swiper加载
 //若给元素加none类隐藏会影响swiper加载
    //$(".sd").addClass("none");
	  setTimeout('$(".sd").addClass("none")',1000);

	$("#shuoming").click(function(){
	   $("#sm").show();
	   $(".mask1").show();
	});
	$(".back1").click(function(){
	    $("#sm").hide();
	    $(".mask1").hide();
	
	});

	</script>
  <script src="/Public/Home/js/script.js"></script>
  <script>
         setInterval('butt1()', 1000);
         setInterval('butt2()', 1000);
         setInterval('butt3()', 1000);
         
         $('.blue').click(function(){
			//className = $(this).attr('class');
			var onumber = $(this).attr('data-onumber');
			var zy = $(this).attr('data-zy');
			var zk = $(this).attr('data-zk');
			$('.qrsl').text(onumber);
			$('#buyid').val($(this).attr('data-oid'));
			$('zy').val(zy);
			$('zk').val(zk);
			$('.toclearfix li').each(function(){
				if($(this).val()==zy) {
					$(".toclearfix  li").eq($(this).index()).addClass("selected").siblings().removeClass("selected");
				};
			});
			$('.myclearfix li').each(function(){
				if ($(this).val()==zk) {
					$(".myclearfix  li").eq($(this).index()).addClass("selected").siblings().removeClass("selected");
				};
			});
			$('#dialogBg2').fadeIn(200);
	    	$('#dialog2').removeAttr('class').addClass('animated bounceIn').fadeIn(200);
		})
		//关闭弹窗
	 	$('#claseDialogBtn2').click(function(){
		   	$('#dialogBg2').fadeOut(200,function(){
		    	$('#dialog2').addClass('bounceOutUp').fadeOut(200);
		    });
		});
		function openpay(oid,pe,expend){
			var openpay = $('.openpay');
			var newprice,ploss,wine,bfb;
			if(openpay){
				openpay.each(function(){
					if($(this).find('.oid').text()==oid){
						ploss = $(this).find('.ploss').text();
						newprice = $(this).find('.latest-price').text();
						wine = parseFloat(ploss*1+expend*1,2);
						bfb = parseFloat(ploss/expend*100,2);
					}
				})
				if(newprice>=pe){
					$('.payprice').html('<em class="rise" id="payprice">'+newprice+'</em>');
				}else{
					$('.payprice').html('<em class="drop" id="payprice">'+newprice+'</em>');
				}
				$('.payploss').html(ploss+'('+bfb+'%)');
				$('.comiss').text(wine);
				if(ploss<0){
					$('.payploss').css('color','#2fb44e');
				}else{
					$('.payploss').css('color','#ed0000');
				}
				
			}
			
		}
		//关闭弹窗
	 	$('#claseDialogBtn3').click(function(){
		   	$('#dialogBg3').fadeOut(200,function(){
		    	$('#dialog3').addClass('bounceOutUp').fadeOut(200);
		    });
		});
		$('.payout').click(function(){
		   	$('#dialogBg3').fadeOut(200,function(){
		    	$('#dialog3').addClass('bounceOutUp').fadeOut(200);
		    });
		});
		 
  </script>
  <script>
//pop_Open();
        $('.closeBtn').click(function(event) {
			pop_Close();
			$('.coverAll').css('display', 'none');
        });
        $('.coverAll .inner-coAll').click(function(event) {
			/*if(live_status>3 && live_status<7){
				window.location="/mobile.php/api/shuang11";
			}else{
				$('.coverAll').css('display', 'none');
			}*/
		$("#liveNotice").addClass('none');
		$(".gp-video").attr("src",'http://21602.hlsplay.aodianyun.com/60s/stream.m3u8'); 
		$(".floatViewAd").hide();
		$(".floatVideo").show();
		$('.coverAll').css('display', 'none');
        });
		
		function goto_room(){
			window.location="/mobile.php/public/go_to_room";
		}
var last_orderid = 0;
        $('.closeBtn').click(function(event) {
			pop_Close();
			$('.coverAll').css('display', 'none');
        });
	var demo = new CountUp("shuang11", 23508390.42, 23508390.42, 2, 2);
	demo.start();
	function getnewprofit() {
		
		$.ajax({
			type: 'get',
			dataType:'json',
			url: ROOT+"<?php echo U('index/getnewprofit');?>",//"/mobile.php/Trade/get_time.html",
			success: function(msg){
				//$("#shuang11").text(msg.trade_amount);
				demo.update(msg.trade_amount);
				if(msg.id>last_orderid){
					last_orderid = msg.id;
					if(msg.phone==null){
						$("#profit_name").text(msg.tel);
					}else{
						$("#profit_name").text(msg.phone);
					}
					$("#profit_amount").html(msg.amount+'元'+msg.direction+msg.cap_name);
					$("#profit").text(msg.profit+'元');
					$(".profit_box").fadeIn(800);
					//alert($(".profit_box").html());
					$('.profit').css('bottom', '-10rem');
					$('.profit').stop().animate({'bottom': 0}, 400);
				}else{
					$(".profit_box").fadeOut(800);
				}
			}
		});
	}
	
    clearInterval(time);
    var time=setInterval(function(){
	getnewprofit();
    }, 3000);
    
    
    function get_newallorder(){
		var changdu = 0;
		var buy_id = '';
		var changdu = 0;
		$.ajax({
			type : 'post',
			url : ROOT+"<?php echo U('index/getorder');?>",
			dataType : 'JSON',
			async : true,
//			timeout: 900, 
			success : function(newallorder_data) {
				live_status = newallorder_data['live_status'];
				console.log(live_status);
				if(newallorder_data['status']==1){
					$("#renshu").html(newallorder_data['renshu']);
					$("#trade_count").html(newallorder_data['trade_count']);
					$("#depth_buy_context").html('');
					$.each(newallorder_data.list, function(key, value) {
						if(value.trade_direction==1){
							value.trade_direction='<font color=green>买跌</font>';
							buy_id='buy';
						}else if(value.trade_direction==0){
							value.trade_direction='<font color=red>买涨</font>';
							buy_id='sell';
						}else{
							
						}
						changdu = get_changdu(value.trade_amount);
						$("#depth_buy_context").append('<li class="li-ct-transcation"><div class="part-ct-transcation" style="width:20%;">'+value.shijian+'</div><div class="part-ct-transcation '+buy_id+'" style="width:20%;">'+value.capital_name+'</div><div class="part-ct-transcation_right" style="width:20%;"><span id="buyPriceSpan1">'+value.trade_direction+'</span></div><div class="part-ct-transcation_right" style="padding-left: 0px"><span id="buyAmountSpan1">'+value.trade_amount+'</span></div><div class="part-ct-transcation" style="padding-left:0.8em"><span style="width:'+changdu+'px;" class="'+buy_id+'span" id="buySpanColor1"></span></div></li>');
					});
				}
//				if(newallorder_data['live_status']!==0 && $.cookie('liveNotice_new')!=newallorder_data['live_status']){
//					//$.cookie('liveNotice_new',newallorder_data['live_status']);
//					$.cookie('liveNotice_new', newallorder_data['live_status'] , { path: '/', expires: 1 }); 
//					if(newallorder_data['live_status']==8){
//						$("#liveNotice .trade-num").text('美女分析师正在播报财经早餐，了解全球财经资讯，洞悉市场行情走向。每天早十点，与美女分析师相约决胜六十秒！');
//					}else{
//						$("#liveNotice .trade-num").text('金牌分析师直播带单正在进行中，点击左下方直播按钮，边听讲课边交易哦！赶快试试吧！');
//					}
//					$("#liveNotice").removeClass('none');
//				}
			},
			error : function(data) {
				//alert("获取资产类型失败！");
			}
		});
	}
    function get_changdu(money){
		money = parseInt(money);
		var changdu = 10;
		if(money<=50){
			changdu = 20;
		}else if(money<=100){
			changdu = 30;
		}else if(money<=500){
			changdu = 60;
		}else if(money<=1000){
			changdu = 70;
		}else if(money<=2000){
			changdu = 100;
		}else{
			changdu = 100;
		}
		if(money==20){
			changdu = 10;
		}else if(money==50){
			changdu = 15;
		}else if(money==100){
			changdu = 30;
		}
		else if(money==200){
			changdu = 40;
		}else if(money==500){
			changdu = 60;
		}else if(money==1000){
			changdu = 85;
		}else if(money==2000){
			changdu = 100;
		}
		return changdu;
	}
    
    window.setInterval(get_newallorder, 3000); 
    
</script>