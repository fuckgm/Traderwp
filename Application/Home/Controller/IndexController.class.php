<?php
namespace Home\Controller;
class IndexController extends CommonController {
    public function index(){

        if(isset($_SESSION['uid'])) {
            $tq=C('DB_PREFIX');
            $uid=$_SESSION['uid'];
            //账号余额
            $userimg=M('userinfo')->where('uid='.$uid)->find();
            $price=M('accountinfo')->where('uid='.$uid)->find();
            //账号体验卷数
            $endtime=date(time());
            $exper=M('experienceinfo')->join($tq.'experience on '.$tq.'experienceinfo.eid='.$tq.'experience.eid')->where($tq.'experienceinfo.uid='.$uid.' and '.$endtime.' < '.$tq.'experienceinfo.endtime and '.$tq.'experienceinfo.getstyle=0')->count();     
            $user['price']=round($price['balance'],2);
            $user['exper']=$exper;
            $user['portrait']=$userimg['portrait'];
            $this->assign('user',$user);
			
			$this->order2 = M('order')->where(array('uid'=>$_SESSION['uid'],'ostaus'=>0))->order('buytime DESC')->limit(20)->select();
			$this->order3 = M('order')->where(array('uid'=>$_SESSION['uid']))->order('buytime DESC')->limit(20)->select();
        }
		
		$this->order = M('order')->order('buytime DESC')->limit(15)->select();
		
		
		 
        $catgood=M('catproduct')->select();
    	$goods=M('productinfo')->select();
        $uorder=$this->userorder();
        $news=$this->information();
        $focus=$this->focus();
        $notices=$this->notice();
        $isopen=$this->isopen();
        $this->assign('isopen',$isopen);
        $this->assign('nolist',$uorder);
        $this->assign('news',$news);
        $this->assign('focus',$focus);
        $this->assign('notices',$notices);
    	$this->assign('catgood',$catgood);
    	$this->assign('goods',$goods);
		$this->display();
    }
public function getdata(){
$code=I('post.capital_key');
$inx=I('post.inx');
$html = file_get_contents('http://wap.cnyzl.net/mobile.php/Mobile/getJqplot/inx/1/captype/BTC');
 // $html = file_get_contents('http://wap.cnyzl.net/mobile.php/Mobile/getJqplot/inx/1/captype/USOIL');
echo $html;die;



	$now = date('Y-m-d H:i',time());
	$data = $arr = array();
	$a = $b = '';
	
	if(I('code')=='conc'){//油
		$bt = M('cl')->where('time<"'.$now.'"')->order('time DESC')->limit(100)->select();
	}elseif(I('code')=='tjxag'){//白银
		
	}elseif(I('code')=='tjcu'){//铜
		
	}else{
		$bt = M('bt')->where('time<"'.$now.'"')->order('time DESC')->limit(100)->select();
	}
	
	sort($bt);
	//echo $bt = M('cl')->_sql();
	//p($bt);die;
	$max = $min = 0;
	$max_time = $min_time = '';
	$i = count($bt);
	foreach ($bt as $key => $value) {

		
		if(I('code')=='bt'){
			
			$t = strtotime(substr($value['date'], 0, -3));
			$ts = (float)$t*1000;
			//1=》低/2=》最小/3=》最大/4=》高/
			if(strstr($a,$value['date'])==true){//存在
			    unset($arr[$key-1]);
				$arr[$key][0] = $ts;
				$arr[$key][1] = (float)$value['kaipan'];
				$arr[$key][2] = (float)$value['zuidi'];
				$arr[$key][3] = (float)$value['zuigao'];
				$arr[$key][4] = (float)$value['shoupan'];
	//				$arr[$key][5] = $value['time'];
			}else{
				//不存在
				$arr[$key][0] = $ts;
				$arr[$key][1] = (float)$value['kaipan'];
				$arr[$key][2] = (float)$value['zuidi'];
				$arr[$key][3] = (float)$value['zuigao'];
				$arr[$key][4] = (float)$value['shoupan'];
	//				$arr[$key][5] = $value['time'];
				$a .=  $value['date'].',';
			}
		
		}else{
			$t = strtotime(date('Y-m-d H:i',strtotime($value['time'])));
			$ts = (float)$t*1000;
			//1=》低/2=》最小/3=》最大/4=》高/
			if(strstr($a,(string)$t)==true){//存在
				
			    unset($arr[$key-1]);
				$arr[$key][0] = $ts;
				$arr[$key][1] = (float)$value['jinkai'];
				$arr[$key][2] = (float)$value['zuidi'];
				$arr[$key][3] = (float)$value['zuigao'];
				$arr[$key][4] = (float)$value['price'];
	//				$arr[$key][5] = $value['time'];
			}else{
				//不存在
				
				$arr[$key][0] = $ts;
				$arr[$key][1] = (float)$value['jinkai'];
				$arr[$key][2] = (float)$value['zuidi'];
				$arr[$key][3] = (float)$value['zuigao'];
				$arr[$key][4] = (float)$value['price'];
	//				$arr[$key][5] = $value['time'];
				$a .=  $t.',';
			}
		}
			
		$i--;
	}

	$j = 0;
	foreach ($arr as $k => $value2) {
		if($j>0){

			if((float)$value2[3]>$max){
				$max = (float)$value2[3];
				//$max_time = date('Y-m-d H:i:s',strtotime(substr($value['date'], 0, -3)));
			}
			if((float)$value2[2]<$min){
				$min = (float)$value2[2];
				//$min_time = date('Y-m-d H:i:s',strtotime(substr($value['date'], 0, -3)));
			}
			
			 
		}else{
			$max = (float)$value2[3];
			$min = (float)$value2[2];
		}
		$j++;
	}


	//p($arr);
	//sort($arr);
	$ar = $bt22 = array();
	if(I('code')=='bt'){
		$bt2 = M('bt')->where('time>="'.$now.'"')->order('time DESC')->limit(1)->find();
		$bt22[0] = (float)strtotime($now)*1000;
		$bt22[1] = (float)$bt2['kaipan']; 
		$bt22[2] = (float)$bt2['zuidi']; 
	$bt22[3] = (float)$bt2['zuigao']; 
		$bt22[4] = (float)$bt2['shoupan']; 
	}else{
		$bt2 = M('cl')->where('time>="'.$now.'"')->order('time DESC')->limit(1)->find();
		$bt22[0] = (float)strtotime($now)*1000;
		$bt22[1] = (float)$bt2['jinkai']; 
		$bt22[2] = (float)$bt2['zuidi']; 
		$bt22[3] = (float)$bt2['zuigao']; 
		$bt22[4] = (float)$bt2['price']; 
	}
	
	$bt22[2] = (float)$bt2['zuidi']; 
	$bt22[3] = (float)$bt2['zuigao']; 
	
	$ar[0] = $bt22;
	//p($ar);
	$array = array_merge($arr,$ar);
	 
	
	if($max<(float)$bt2['zuigao']){
		$max = (float)$bt2['zuigao'];
		//$max_time = date('Y-m-d H:i:s',strtotime(substr($bt2['date'], 0, -3)));
	}
	if($min>(float)$bt2['zuidi']){
		
		$min = (float)$bt2['zuidi'];
		//$min_time = date('Y-m-d H:i:s',strtotime(substr($bt2['date'], 0, -3)));
	}
	//echo $max;echo '|'.$min;
	$datas = json_encode($array);

//	$data['type'] = 'datae';
	$data['capital_dot'] = 2;
	$data['data'] = $datas;
	$data['min'] = $min;
	$data['max'] = $max;
	$data['min_time'] = date('Y-m-d H:i',time());
	$data['max_time'] = date('Y-m-d H:i',strtotime('+1 minute'));
	$data['last'] = $bt22[4];
	$data['last_open'] = $bt22[1];
	$data['capital_type'] = I('code');
	$data['time_t'] = time();
	
	echo json_encode($data);

}

public function getnewprofit(){

	$info = M('order')->order('buytime DESC')->find();
	
	if($info['ostyle']==0){
		$direction = '<font color="green">买跌</font>';
	}else{
		$direction = '<font color="red">买涨</font>';
	}
	$user = M('userinfo')->where(array('uid'=>$info['uid']))->find();
	
	$data['phone'] = empty($user['nickname'])?$user['username']:$user['nickname'];
	$data['id'] = $info['oid'];
	$data['amount'] = $info['onumber'];
	$data['direction'] = $direction;
	$data['cap_name'] = $info['ptitle'];
	$data['tel'] = '186****8668';
	$data['trade_amount'] = 21821645.27+(int)$info['uid'];
	$data['profit'] = 9250; 
	$this->ajaxReturn ($data);   
	 
}

public function getorder(){
	
	$order = M('order')->order('buytime DESC')->limit(15)->select();
	foreach ($order as $key => $value) {
		$data[$key]['id'] = $value['oid'];
		$data[$key]['capital_name'] = $value['ptitle'];
		$data[$key]['trade_amount'] = $value['onumber'];
		$data[$key]['shijian'] = date('H:i:s',$value['buytime']);
		$data[$key]['trade_direction'] = $value['ostyle'];
	}
	$arr['status'] = 1;
	$arr['live_status'] = 0;
	$arr['list'] = $data;
	$this->ajaxReturn ($arr);   
	
}
 
public function GetFile($url,$way=1,$coding){
    if($way==1){
        $str=file_get_contents($url);
    }else if($way==2){
        @$ch=curl_init();
        curl_setopt($ch,CURLOPT_URL,$url);
        curl_setopt($ch,CURLOPT_HEADER,0);
        curl_setopt($ch,CURLOPT_NOBODY,false); 
        curl_setopt($ch,CURLOPT_TIMEOUT,3);
        curl_setopt($ch,CURLOPT_FOLLOWLOCATION,true);
        curl_setopt($ch,CURLOPT_MAXREDIRS,20);
        curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
        curl_setopt($ch,CURLOPT_USERAGENT, "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.0)");
        $orders=@curl_exec($ch);
        @curl_close($ch);
        $str=$orders;
    }
    if($coding=="1"){
        $str=iconv("UTF-8", "GBK", $str);
    }elseif ($coding=="2"){
        $str=iconv("GBK", "UTF-8", $str);
    }
    return $str;
}
    //查询网站是否关闭，关闭则不能购买，并且现价变成休市
    public function isopen(){
        $stye=M('webconfig')->select();
        return $stye[0]['isopen'];
    }
    //显示最新资讯
    public function information(){
        $news=M('newsinfo')->where('ncategory=1')->order('nid desc')->limit(3)->select();
        return $news;
    }
    //显示财经要闻Focus
    public function focus(){
    $news=M('newsinfo')->where('ncategory=2')->order('nid desc')->limit(3)->select();
    return $news;
    }
    //显示系统公告Notice
    public function notice(){
    $news=M('newsinfo')->where('ncategory=3')->order('nid desc')->limit(3)->select();
    return $news;
    }
    //获取动态油的价格，显示到页面
   public function price(){
         $source=file_get_contents("xh/you.txt");
         $msg = explode(',',$source);
         $myprice[0] = str_replace('price:', '',str_replace('"','',$msg[1]));//最新
         $myprice[8] = str_replace('jk:', '',str_replace('"','',$msg[4]));//今开
         $myprice[7] = str_replace('zk:', '',str_replace('"','',$msg[5]));//昨开
         $myprice[4] = str_replace('zg:', '',str_replace('"','',$msg[6]));//最高
         $myprice[5] = str_replace('zd:', '',str_replace('"','',$msg[7]));//最低
         $myprice[12] = $myprice[0]-$myprice[8];
         $this->ajaxReturn($myprice);
    }
    //获取动态白银的价格，显示到页面
    public function byprice(){
         $source=file_get_contents("xh/baiyin.txt");
         $msg = explode(',',$source);
         $myprice[0] = str_replace('price:', '',str_replace('"','',$msg[1]));//最新
         $myprice[8] = str_replace('jk:', '',str_replace('"','',$msg[4]));//今开
         $myprice[7] = str_replace('zk:', '',str_replace('"','',$msg[5]));//昨开
         $myprice[4] = str_replace('zg:', '',str_replace('"','',$msg[6]));//最高
         $myprice[5] = str_replace('zd:', '',str_replace('"','',$msg[7]));//最低
         $myprice[12] = $myprice[0]-$myprice[8];
         $this->ajaxReturn($myprice);
    }
    //获取动态铜的价格，显示到页面
    public function toprice(){
         $source=file_get_contents("xh/tong.txt");
         $msg = explode(',',$source);
         $myprice[0] = str_replace('price:', '',str_replace('"','',$msg[1]));//最新
         $myprice[8] = str_replace('jk:', '',str_replace('"','',$msg[4]));//今开
         $myprice[7] = str_replace('zk:', '',str_replace('"','',$msg[5]));//昨开
         $myprice[4] = str_replace('zg:', '',str_replace('"','',$msg[6]));//最高
         $myprice[5] = str_replace('zd:', '',str_replace('"','',$msg[7]));//最低
         $myprice[12] = $myprice[0]-$myprice[8];
         $this->ajaxReturn($myprice);
    }
    
	    public function btprice(){
         $source=file_get_contents("xh/btcoin.txt");
         $msg = explode(',',$source);
         $myprice[0] = str_replace('price:', '',str_replace('"','',$msg[1]));//最新
         $myprice[8] = str_replace('jk:', '',str_replace('"','',$msg[4]));//今开
         $myprice[7] = str_replace('zk:', '',str_replace('"','',$msg[5]));//昨开
         $myprice[4] = str_replace('zg:', '',str_replace('"','',$msg[6]));//最高
         $myprice[5] = str_replace('zd:', '',str_replace('"','',$msg[7]));//最低
         $myprice[12] = $myprice[0]-$myprice[8];
         $this->ajaxReturn($myprice);
    }
    
	//根据传回来的id获取商品的信息
    public function selectid(){
        $tq=C('DB_PREFIX');
        $pid=I('post.pid');
        $uid=$_SESSION['uid'];
        //获取当前id对应的商品
        $good=M('productinfo')->where('pid='.$pid)->find();
        //查询用户时候有对应的体验卷
       $sum=M('experienceinfo')->join($tq.'experience on '.$tq.'experienceinfo.eid='.$tq.'experience.eid')->where($tq.'experienceinfo.uid='.$uid.' and '.date(time()).' < '.$tq.'experienceinfo.endtime and '.$tq.'experienceinfo.getstyle=0 and '.$tq.'experience.eprice='.$good['uprice'])->count();

        $good['sum']=$sum;
        $this->ajaxReturn($good);
    }

    //查询当前用户正在交易的订单
    public function userorder(){
        $tq=C('DB_PREFIX');
        $uid = $_SESSION['uid'];
        $userorders=M('order')->join($tq.'productinfo on '.$tq.'order.pid='.$tq.'productinfo.pid')
        ->join($tq.'catproduct on '.$tq.'productinfo.cid='.$tq.'catproduct.cid')->where($tq.'order.uid='.$uid.' and ostaus=0')->select();
        // echo "<pre>";
        // var_dump($userorders);
        //  echo "</pre>";
        return $userorders;
    }
	//查询订单信息(接收修改后的订单，或者直接平仓，或者购买完后平仓，3中情况)
    public function orderid(){
        $tq=C('DB_PREFIX');
        $orderid=I('orderid');
        $order=M('order')->join($tq.'productinfo on '.$tq.'order.pid='.$tq.'productinfo.pid')
        ->join($tq.'catproduct on '.$tq.'productinfo.cid='.$tq.'catproduct.cid')->where('oid='.$orderid)->find();
    	$order['expend'] = $order['onumber']*$order['uprice'];	//支出
    	$order['paytime'] = date('Y-m-d',$order['buytime']);
		$this->ajaxReturn($order);
    }
	//修改订单的止盈和止亏
    public function edityk(){
        $order=M('order');
        $order->oid=I('post.oid');
        $order->endprofit=I('post.zy');
        $order->endloss=I('post.zk');
        $order->save();
        $this->redirect('Index/index');
    }

    //自动结算
	public function getjs(){
		
		$nowtime=time();//当前时间
		$tq=C('DB_PREFIX');
		$orderlist=M('order')->where(array('ostaus'=>0))->select();
		// var_dump ($orderlist);
		foreach ($orderlist as $v){
			// print_r ($v['pid']);
			$cidnumber=M('productinfo')->where(array('pid'=>$v['pid']))->find();
			switch ($cidnumber['cid']){
				case 1:
		  $myprice=M('cl')->order ( 'id DESC' )->find();
         $youjia=$myprice['price'];
		   $diancha=M('catproduct')->where('cid=1')->find();//查询产品信息,获取点差,手续费等数据
		 break;
			case 2:
		 $myprice=M('ag')->order ( 'id DESC' )->find();
         $youjia=$myprice['price'];
		   $diancha=M('catproduct')->where('cid=2')->find();//查询产品信息,获取点差,手续费等数据
		 break;
			case 3:
          $myprice=M('cu')->order ( 'id DESC' )->find();
         $youjia=$myprice['price'];
		 $diancha=M('catproduct')->where('cid=3')->find();//查询产品信息,获取点差,手续费等数据
		 break;
			case 4:
		  $myprice=M('bt')->order ( 'id DESC' )->find();
         $youjia=$myprice['shoupan'];
		   $diancha=M('catproduct')->where('cid=4')->find();//查询产品信息,获取点差,手续费等数据
		 break;
		
 }
   // print_r ($youjia);die;
 
 $caltime=$v['leixing']+$v['buytime'];//平仓时间
        if($youjia>0){
			 if($caltime<=$nowtime){
            $order=M('order')->join($tq.'productinfo on '.$tq.'order.pid='.$tq.'productinfo.pid')->where($tq.'order.oid='.$v['oid'])->find();
            $orderid=$order;
			// print_r ($order['patj']);die;
            //建仓金额
                 // $orderid['jc']=  round($order['buyprice']*$order['onumber'],1);//买价*金额.
                 $orderid['jc']= $order['onumber'];//买入的金额
                //判断是买张还是买跌。0涨，1跌
                if ( $orderid['ostyle']==0) {
                     //盈亏资金
                     if($youjia>$order['buyprice']){//如果结算价格大于购买价格
							$youjia=$youjia-$order['patj'];//滑点
							// $orderid['ykzj']=round(($youjia-$order['patj']-$order['buyprice'])*$order['onumber'],2);//减去点差  
							if($youjia>$order['buyprice']){//判断价格是否仍然大于购买价格
								$orderid['ykzj']=$order['onumber']*0.8;//购买金额的0.8倍  
								$orderid['bdyy']=$order['onumber']*1.8;//本单盈余				
								}elseif($youjia==$order['buyprice']){
							$orderid['ykzj']=$order['onumber'];  
								$orderid['bdyy']=$orderid['ykzj'];//如果平价,返还购买价格
								}else{
								$orderid['ykzj']='-'.$order['onumber'];  
								$orderid['bdyy']=0;//如果结果是亏,不扣减
							}
						}elseif($youjia==$order['buyprice']){
							$orderid['ykzj']=$order['onumber'];  
								$orderid['bdyy']=$orderid['ykzj'];//如果平价,返还购买价格
						}else{
							// $orderid['ykzj']=round(($youjia-$order['buyprice'])*$order['onumber'],2);  
							$orderid['ykzj']='-'.$order['onumber']; 
							$orderid['bdyy']=0;//如果结果是亏,不扣减
						}
                     //本单盈余
                     // $orderid['bdyy']=round($orderid['jc']+$orderid['ykzj'],1);
                     //盈亏百分百
                     // $orderid['ykbfb']=$orderid['ykzj']/ $orderid['jc']*1; 
                }else{
                    //盈亏资金
                    if($youjia<$order['buyprice']){
						$youjia=$youjia+$order['patj'];//滑点
						 if($youjia<$order['buyprice']){
							$orderid['ykzj']=$order['onumber']*0.8;//购买金额的0.8倍
								$orderid['bdyy']=$order['onumber']*1.8;//本单盈余							
							}elseif($youjia==$order['buyprice']){
							$orderid['ykzj']=$order['onumber'];  
								$orderid['bdyy']=$orderid['ykzj'];//如果平价,返还购买价格
							}else{
							 $orderid['ykzj']='-'.$order['onumber'];  
							  $orderid['bdyy']=$orderid['ykzj'];
							}
							// $orderid['ykzj']=round(($order['buyprice']-$youjia+$order['patj'])*$order['onumber'],2);//加上点差	
						}elseif($youjia==$order['buyprice']){
							$orderid['ykzj']=$order['onumber'];  
								$orderid['bdyy']=$orderid['ykzj'];//如果平价,返还购买价格
						}else{
							$orderid['ykzj']='-'.$order['onumber'];  
							 $orderid['bdyy']=$orderid['ykzj'];
							// $orderid['ykzj']=round(($order['buyprice']-$youjia)*$order['onumber'],2);	
						}
                     //本单盈余
                      // $orderid['bdyy']=round($orderid['jc']+$orderid['ykzj'],1);
                     //盈亏百分百
                     // $orderid['ykbfb']=$orderid['ykzj']/ $orderid['jc'];  
                }

            
		$uid=$orderid['uid'];
        $users = D('userinfo');
        $username =M('userinfo')->where('uid='.$uid)->find();
        $username =$username['username'];
        $user=M('accountinfo')->where('uid='.$uid)->find();
        //获取传递过来的值
        $oid=$orderid['oid'];
		//获取订单的类型
		$type=I('post.type');
    // print_r ($oid);die;
        //结余的金额，需要给当前用户的账户添加
        $bdyy= $orderid['bdyy'];
         //建仓金额
        $jiancj= $orderid['jc']; 
        //盈亏资金
        $ykzj=$orderid['ykzj']; 
        //产品单价,购买时价格
        $uprice = $order['buyprice'];
        //先修改订单信息，返回成功信息后修改账户余额和添加日志记录
        $orderno= $this->build_order_no();
        $tq=C('DB_PREFIX');
        $myorder=M('order')->join($tq.'productinfo on '.$tq.'order.pid='.$tq.'productinfo.pid')->where($tq.'order.oid='.$oid)->find();
        $ordersave=M('order');
		$map['selltime']=$nowtime;
		$map['ostaus']=1;
		$map['sellprice']=$youjia;
		$map['ploss']=$ykzj;
		$map['fee']=$myorder['fee'];
		$msg=M('order')->where(array('oid'=>$oid))->setField($map);
        
		// $ordersave->selltime=$nowtime;
        // $ordersave->ostaus=1;
        // $ordersave->sellprice=$youjia;
        //盈亏资金
        // $ordersave->ploss=$ykzj;
        //手续费
        // $fee = $myorder['fee'];
        // $ordersave->fee=$fee;
     //佣金
//      $order->commission=$youjia-$myorder['buyprice']-$fee;
  //盈亏
//      $order->ploss=$youjia-$myorder['buyprice'];
        // $msg= $ordersave->save();               
        if ($msg) {
            $myprice=M('accountinfo')->where('uid='.$uid)->find();
            $acco= M('accountinfo');
            $acco->uid=$uid;
            $acco->balance=$myprice['balance']+$bdyy;
            $acco->save();
            //根据商品id查询商品
            $goods=M('productinfo')->where('pid='.$myorder['pid'])->find();
            //用户亏损了，返点
            // if($ykzj<0){
                //查询该用户级别
                $thisuser = $users->field('otype,oid')->where('uid='.$uid)->find();
                //返佣记录
                $otype = $thisuser['otype'];            //用户类型
                $ouid = $thisuser['oid'];               //上级id
                //如果有oid，是分销用户
				/*
                if($ouid!=""){
                    if($otype==0){
                        //此id用户是普通客户，oid为代理用户id
                        $otype = "客户";
                        //查会员单位返点比例
                        $agent = $users->field('oid,rebate,feerebate,otype,username')->where('uid='.$ouid)->find();
                        $agent_user=M('accountinfo')->where('uid='.$ouid)->find();
                        //判断上级用户，如果是代理商
                        if($agent['otype']==1){
                            $agent_rebate = $agent['rebate'];               //代理盈亏返点
                            $agent_feerebate = $agent['feerebate'];         //代理手续费返点
                            $menber_id = $agent['oid'];                     //用户的上级id
                            if($menber_id!=""){
                                $menber = $users->field('rebate,feerebate,username')->where('uid='.$menber_id)->find();
                                $menber_rebate = $menber['rebate'];                 //会员盈亏返点
                                $menber_feerebate = $agent['feerebate'];            //会员手续费返点
                                $newykzj = abs($ykzj);
                                $menber_ploss = $newykzj*$menber_rebate/100;            //会员盈亏反金
                                $menber_feeploss = $fee*$menber_feerebate/100;      //会员手续费反金
                                $agent_ploss = $menber_ploss*$agent_rebate/100;                 //代理盈亏反金
                                $agent_feeploss = $menber_feeploss*$agent_feerebate/100;        //代理手续费反金
                                $menber_user=M('accountinfo')->where('uid='.$menber_id)->find();
                                //写两条记录，一条代理，一条会员
                                $distribution = M('journal');
                                $disj['jno']=$orderno;                                      //订单号
                                $disj['uid'] = $ouid;                                       //用户id
                                $disj['jtype'] = '返点';                                      //类型
                                $disj['jtime'] = date(time());                              //操作时间
                                $disj['balance'] = $agent_user['balance']+$agent_ploss+$agent_feeploss;         //账户余额
                                $disj['jfee'] = $agent_feeploss;                            //手续费反金
                                $disj['jploss'] = $agent_ploss;                             //盈亏反金
                                $disj['jaccess'] = $agent_feeploss+$agent_ploss;            //出入金额
                                $disj['jusername'] = $agent['username'];                    //用户名
                                $disj['oid'] = $oid;                                    //订单id
                                $disj['explain'] = '代理反金';                                  //操作标记
                                $disj['remarks'] = $goods['ptitle'];                        //产品名称  
                                $disj['number'] = $myorder['onumber'];                      //数量    
                                $disj['jostyle'] = $myorder['ostyle'];                      //涨、跌
                                $disj['jbuyprice'] = $myorder['buyprice'];                  //入仓价
                                $disj['jsellprice'] = $youjia;                              //平仓价
                                $distribution->add($disj);
                                
                                //写入会员记录
                                $distribution = M('journal');
                                $mdisj['jno']=$orderno;                                     //订单号
                                $mdisj['uid'] = $ouid;                                      //用户id
                                $mdisj['jtype'] = '返点';                                     //类型
                                $mdisj['jtime'] = date(time());                             //操作时间
                                $mdisj['balance'] = $menber_user['balance']+$menber_ploss+$menber_feeploss;         //账户余额
                                $mdisj['jfee'] = $menber_feeploss;                          //手续费反金
                                $mdisj['jploss'] = $menber_ploss;                           //盈亏反金
                                $mdisj['jaccess'] = $menber_feeploss+$menber_ploss;         //出入金额
                                $mdisj['jusername'] = $menber['username'];                  //用户名
                                $mdisj['oid'] = $oid;                                   //订单id
                                $mdisj['explain'] = '会员反金';                             //操作标记
                                $mdisj['remarks'] = $goods['ptitle'];                       //产品名称  
                                $mdisj['number'] = $myorder['onumber'];                     //数量    
                                $mdisj['jostyle'] = $myorder['ostyle'];                     //涨、跌
                                $mdisj['jbuyprice'] = $myorder['buyprice'];                 //入仓价
                                $mdisj['jsellprice'] = $youjia;                             //平仓价
                                $distribution->add($mdisj);
                            }
                        }else if($agent['otype']==2){
                            //如果上级是会员
							$newykzj = abs($ykzj);
                            $menber_rebate = $agent['rebate'];              //代理盈亏返点
                            $menber_feerebate = $agent['feerebate'];        //代理手续费返点
                            $menber_ploss = $newykzj*$menber_rebate/100;            //会员盈亏反金
                            $menber_feeploss = $fee*$menber_feerebate/100;      //会员手续费反金
                            //echo $ykzj*$menber_rebate/100;
                            //echo $menber_rebate.'----------------';
                            //写入会员记录
                            $distribution = M('journal');
                            $mdisj['jno']=$orderno;                                     //订单号
                            $mdisj['uid'] = $ouid;                                      //用户id
                            $mdisj['jtype'] = '返点';                                     //类型
                            $mdisj['jtime'] = date(time());                             //操作时间
                            $mdisj['balance'] = $user['balance']+$menber_ploss+$menber_feeploss;            //账户余额
                            $mdisj['jfee'] = $menber_feeploss;                          //手续费反金
                            $mdisj['jploss'] = $menber_ploss;                           //盈亏反金
                            $mdisj['jaccess'] = $menber_feeploss+$menber_ploss;         //出入金额
                            $mdisj['jusername'] = $agent['username'];                   //用户名
                            $mdisj['oid'] = $oid;                                   //订单id
                            $mdisj['explain'] = '会员反金';                             //操作标记
                            $mdisj['remarks'] = $goods['ptitle'];                       //产品名称  
                            $mdisj['number'] = $myorder['onumber'];                     //数量    
                            $mdisj['jostyle'] = $myorder['ostyle'];                     //涨、跌
                            $mdisj['jbuyprice'] = $myorder['buyprice'];                 //入仓价
                            $mdisj['jsellprice'] = $youjia;                             //平仓价
                            $distribution->add($mdisj);
                        }else{
                            //上级是平台
                            
                        }
                    }else if($otype==1){
                        //此id用户是代理
                        $menber = $users->field('oid,rebate,feerebate,otype')->where('uid='.$ouid)->find();
                        if($menber['oid']!=""){
							$newykzj = abs($ykzj);
                            $menber_rebate = $menber['rebate'];             //会员盈亏返点
                            $menber_feerebate = $menber['feerebate'];       //会员手续费返点
                            $menber_ploss = $newykzj*$menber_rebate/100;            //会员盈亏反金
                            $menber_feeploss = $fee*$menber_feerebate/100;      //会员手续费反金
                            //写入会员记录
                            $distribution = M('journal');
                            $mdisj['jno']=$orderno;                                     //订单号
                            $mdisj['uid'] = $ouid;                                      //用户id
                            $mdisj['jtype'] = '返点';                                     //类型
                            $mdisj['jtime'] = date(time());                             //操作时间
                            $mdisj['balance'] = $user['balance']+$menber_ploss+$menber_feeploss;            //账户余额
                            $mdisj['jfee'] = $menber_feeploss;                          //手续费反金
                            $mdisj['jploss'] = $menber_ploss;                           //盈亏反金
                            $mdisj['jaccess'] = $menber_feeploss+$menber_ploss;         //出入金额
                            $mdisj['jusername'] = $menber['username'];                  //用户名
                            $mdisj['oid'] = $oid;                                   //订单id
                            $mdisj['explain'] = '会员反金';                                 //操作标记
                            $mdisj['remarks'] = $goods['ptitle'];                       //产品名称  
                            $mdisj['number'] = $myorder['onumber'];                     //数量    
                            $mdisj['jostyle'] = $myorder['ostyle'];                     //涨、跌
                            $mdisj['jbuyprice'] = $myorder['buyprice'];                 //入仓价
                            $mdisj['jsellprice'] = $youjia;                             //平仓价
                            $distribution->add($mdisj);
                        }
                    }else if($otype==2){
                        //此id用户是会员
                        
                    }               
                }else{
                    //不是分销用户
                    
                }
            // }
			
			*/
            //添加平仓日志表
            //随机生成订单号
            $myjournal=M('journal');
            $journal['jno']=$orderno;                                       //订单号
            $journal['uid'] = $uid;                                         //用户id
            $journal['jtype'] = '平仓';                                       //类型    
            $journal['jtime'] = date(time());                               //操作时间
            $journal['jincome'] = $bdyy;                                    //收支金额【要予以删除】
            $journal['number'] = $myorder['onumber'];                       //数量            
            $journal['remarks'] = $goods['ptitle'];                         //产品名称  
            $journal['balance'] = $user['balance']+$bdyy;                   //账户余额  
            if ($bdyy>$jiancj){
                  $journal['jstate']=1;                                     //盈利还是亏损
            }else{
                  $journal['jstate']=0;
            }           
            $journal['jusername'] = $username;                              //用户名
            $journal['jostyle'] = $myorder['ostyle'];                       //涨、跌
            $journal['juprice'] = $uprice;                                  //单价
            $journal['jfee'] = $fee;                                        //手续费
            $journal['jbuyprice'] = $myorder['buyprice'];                   //入仓价
            $journal['jsellprice'] = $youjia;                               //平仓价
            $journal['jaccess'] = $bdyy;                                    //出入金额
            $journal['jploss'] = $ykzj;                                     //出入金额
            $journal['oid'] = $oid;                                         //改订单流水的订单id
            $journal['explain'] = $otype.'平仓';
            $myjournal->add($journal);
            $ordersave->where('oid='.$oid)->setField('commission',$journal['balance']);
        }
            
        
    }
			
		}
//多级别奖励,用户uid,金额
			$accuid =M('userinfo')->where(array('uid'=>$uid))->find();//查找用户详细
			$rate=M('webconfig')->find();
			$maxgrad =count(explode(",",$rate['rate']));
			awardall($accuid['oid'],$myorder['onumber'],$orderid,$goods,$maxgrad);
			
			
			}
		
	}		
	 

	 function build_order_no(){
        return date(time()).substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 3);
    }
   
	
}