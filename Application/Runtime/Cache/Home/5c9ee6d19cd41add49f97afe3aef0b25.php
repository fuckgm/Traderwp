<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
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
       
<link rel="stylesheet" href="/Public/Home/css/global.css">
<link rel="stylesheet" href="/Public/Home/css/index.css">
<link rel="stylesheet" href="/Public/Home/css/pwd.css">

<div class="wrap">
  <div class="index" style="min-height: 891px;">
  <?php if($is_weixin == 0): ?><header >
      <nav class="list-nav clearfix"> <!-- <a href="javascript:history.go(-1)" class="list-back"></a> -->
        <h3 class="list-title">登录</h3>
      </nav>
    </header>
      <!-- 普通浏览器登录 -->
        <form id="reviseForm" class="i-form" method="post" action="<?php echo U('User/login');?>">
          <ul class="form-box">
               <li class="f-line clearfix">
                <label class="f-label">登录号码</label>
                <input id="c-pwd" class="f-input" type="text" maxlength="20" placeholder="请输入账号" name="username">
               </li>
            <li class="f-line clearfix">
              <label class="f-label">登录密码</label>
              <input id="n-pwd" class="f-input" type="password" maxlength="20" placeholder="请输入密码" name="password">
            </li>
          </ul>
          <input type="submit" value="立即登录" class="f-sub">
        <!--   <div class="forgot"><span class="fl"></span><span class="fr"><a href="<?php echo U('User/reg');?>">新用户免费注册</a></span></div> -->
        </form><?php endif; ?> 
 <?php if($is_weixin == 2): ?><header class="list-head">
      <nav class="list-nav clearfix"> <a href="javascript:history.go(-1)" class="list-back"></a>
        <h3 class="list-title">登录</h3>
      </nav>
     </header>
      <!-- 微信浏览器登录 -->
         <form id="reviseForm" class="i-form" method="post" action="<?php echo U('User/login');?>">
          <ul class="form-box">
                <li class="f-line clearfix" style="display:none">
                <label class="f-label">登录号码</label>
                <input id="c-pwd" class="f-input" type="text" value="<?php echo ($username); ?>" maxlength="20" placeholder="请输入账号" name="username">
               </li>
            <li class="f-line clearfix">
              <label class="f-label">登录密码</label>
              <input id="n-pwd" class="f-input" type="password" maxlength="20" placeholder="请输入密码" name="password">
            </li>
          </ul>
          <input type="submit" value="立即登录" class="f-sub">
          <div class="forgot"><span class="fl"></span><span class="fr"></span></div>
        </form><?php endif; ?>
    <div class="forgot" style="padding-top: 15px;width: 200px;margin:0 auto;text-align: center;"><span class="fl">还没有账号，立即<a href="/index.php/Home/User/reg.html">注册</a></span>
    	<div style="clear: both;"></div>
    </div>
  </div>
   
  
</div>

<script src="/Public/Home/js/jquery-2.1.1.min.js"></script>
<script src="/Public/Home/js/script.js"></script>
<script type="text/javascript" charset="utf-8" src="/Public/Home/js/sea.js" async=""></script>
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
</body>
</html>