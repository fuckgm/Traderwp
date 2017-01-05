<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/1/12
 * Time: 9:05
 */

function awardall($parentUser,$amount,$orderid,$goods,$maxGrade)
{
// var_dump($amount);die;
	$rate=M('webconfig')->find();
	$settings =explode(",",$rate['rate']);
	// $settings = include( APP_PATH . 'Home/Conf/settings.php' );
	$parentNode =M('userinfo')->where(array('uid'=>$parentUser))->find();//查找推荐人
	
	// E($parentNode);
	
	$gradesArr = array();
	$maxGrade = intval($maxGrade);
	if($maxGrade<1)
	{
		return false;
	}
	$grade =1; //base grade
	$error = '';
	$awards = array();
	for( $grade = 1; $grade <= $maxGrade;$grade += 1)
	{
		if(!$parentNode)
		{
			break;
		}
		
		// $leverl = intval($parentNode['ue_level']) ;
		$leverl = $grade-1;
		//var_dump($parentNode);
		//echo $parentNode['ue_account'].'level'. $leverl.'<br/>';
			

		if($leverl  >=0)
		{
			if(! isset($settings) )
			{
				$error .= '奖励没有设置!';
			}
			
			// $grades = explode(',',$settings['ldj'.$leverl]);
			$grades = $settings;
			if(isset($gradesArr[$leverl]))
			{
				$grades = $settings;// explode(',',$settings['ldj'.$leverl]);
			}
			
			else
			{
				$grades =  $settings;
			}
			 // var_dump  ($grades);die;
			if(isset($grades)  && count($grades) >=($grade -1))
			{
			
				// $percent = $grades[$grade-2];
				$percent = $grades[$grade-1];
				if($percent < 0 || $percent >100)
				{
					$error .='不能小于0或大于100';
				}
				$userxx=M('accountinfo')->where('uid='.$parentNode['uid'])->find();
				$orderno= buildno()+$grade;
				$awards[] = array(
				'a'=>$parentNode['uid'],
				// 'e'=>$ppddId,
				// 'b'=>$percent * $amount /100*$lxjb,
				'b'=>$percent * $amount /100,
				'c'=>$grade.'级别奖励',
				'percent'=>$percent,
				'amount'=>$amount,
				'd'=>$userxx['balance'],
				'e'=>$parentNode['username'],
				'f'=>$orderno,
				'grade'=>$grade,
				
				);
				
			}
		}
// 
		 
		// $parentNode =M('user')->where(array('UE_account'=>$parentNode['ue_accname']))->find();//推荐rens parent
		 $parentNode =M('userinfo')->where(array('uid'=>$parentNode['oid']))->find();//推荐rens parent
	}
	 // var_dump  ($awards);die;
	
	if($error)
	{
		return  $error;
	}
	else
	{
		 // var_dump  ($awards);die;
		foreach ($awards as $one){
			 if($one['b']>0){
				 
			// $ppddxx=M('ppdd')->where(array('id'=>$ppddId))->find();
            // $peiduidate=M('tgbz')->where(array('yid'=>$ppddxx['p_yid'],'user'=>$ppddxx['p_user'],'show'=>1))->find();
				$orderno= buildno();
				 $distribution = M('journal');
                            $mdisj['jno']=$one['f'];                                     //订单号
                            $mdisj['uid'] = $one['a'];                                      //用户id
                            $mdisj['jtype'] = '返点';                                     //类型
                            $mdisj['jtime'] = time();                             //操作时间
                            $mdisj['balance'] = $one['d']+$one['b'];            //账户余额
                            $mdisj['jfee'] =0;                          //手续费反金
                            $mdisj['jploss'] = 0;                           //盈亏反金
                            $mdisj['jaccess'] = $one['b'];         //出入金额
                            $mdisj['jusername'] = $one['e'];                   //用户名
                            $mdisj['oid'] = $oid;                                   //订单id
                            $mdisj['explain'] = '会员返金';                             //操作标记
                            $mdisj['remarks'] = $goods['ptitle'];                       //产品名称  
                            $mdisj['number'] = $myorder['onumber'];                     //数量    
                            $mdisj['jostyle'] = $myorder['ostyle'];                     //涨、跌
                            $mdisj['jbuyprice'] = $myorder['buyprice'];                 //入仓价
                            $mdisj['jsellprice'] = $youjia;                             //平仓价
                            $distribution->add($mdisj);
							// var_dump ($distribution);die;
				
				
			 }
		}
		 return '';
 	}
}


//end add 


function checkorderstatus($ordid){
    $Ord=M('Balance');
    $isverified=$Ord->where('balanceno='.$ordid)->getField('isverified');
    if($isverified==1){
        return true;
    }else{
        return false;
    }
}
	
	function buildno(){
        return date(time()).substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 3);
    }
   

function orderhandle($parameter){
    $ordid=$parameter['order_no'];
    $data['isverified']  =1;
    $Ord=M('Balance');
    $uid = $Ord->where('balanceno='.$ordid)->getField('uid');
    //充值金额
    $data['bpprice']  = $parameter['order_amount'];

    $balance = D('Accountinfo')->where("uid=".$uid)->getField('balance');
    $balance = $balance + $parameter['order_amount'];
    $da['balance'] = $balance;
    //更新总账户
    D('Accountinfo')->where("uid=".$uid)->save($da);
    //更新充值金额及状态
    $Ord->where('balanceno='.$ordid)->save($data);
}