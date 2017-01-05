<?php
error_reporting(0);
include 'db.php';
$conn = @mysql_connect($cfg_dbhost,$cfg_dbuser,$cfg_dbpwd);
if (!$conn){
    die("连接数据库失败：" . mysql_error());
}
mysql_select_db($cfg_dbname, $conn);
mysql_query("set names 'utf8'");
$db='wp_order';
$sql="SELECT * FROM `wp_order` where ostaus=0";
$result=mysql_query($sql,$conn);//查询未平仓的订单
while($orderlist = mysql_fetch_array($result)){
// var_dump ($orderlist);
 $userid = $orderlist['uid'];//用户ID
 $nowtime=time();//当前时间
 //获取不同品种的最新价格
 switch ($orderlist['pid']){
	 	case 2:
	 
		$source=file_get_contents("../xh/baiyin.txt");
         $msg = explode(',',$source);
         $myprice[0] = round(str_replace('price:', '',str_replace('"','',$msg[1])));//最新
         $myprice[0] =$myprice[0];
         $youjia=$myprice[0];
		  $diancha=selectcid(2);//查询产品信息,获取点差,手续费等数据
		 break;
			case 3:
         $source=file_get_contents("../xh/tong.txt");
         $msg = explode(',',$source);
         $myprice[0] = round(str_replace('price:', '',str_replace('"','',$msg[1])));//最新
         $myprice[0] =$myprice[0];
         $youjia=$myprice[0];
		  $diancha=selectcid(3);//查询产品信息,获取点差,手续费等数据
		 break;
			case 4:
         $source=file_get_contents("../xh/btcoin.txt");
         $msg = explode(',',$source);
         $myprice[0] = str_replace('price:', '',str_replace('"','',$msg[1]));//最新
         $myprice[0] =$myprice[0];
         $youjia=$myprice[0];
		 $diancha=selectcid(4);//查询产品信息,获取点差,手续费等数据
		 break;
		 case 1:
         $source=file_get_contents("../xh/you.txt");
         $msg = explode(',',$source);
         $myprice[0] = str_replace('price:', '',str_replace('"','',$msg[1]));//最新
         $myprice[0] =$myprice[0];
         $youjia=$myprice[0];
		   $diancha=selectcid(1);//查询产品信息,获取点差,手续费等数据
		 break;
 }
 
// var_dump ($youjia);die;
 $caltime=$orderlist['leixing']+$orderlist['buytime'];//平仓时间
	if($youjia>0){
		 if($caltime<=$nowtime){//判断是否过了平仓时间
			 $orderno=build_order_no();//生成随机订单
			  $sql1="select * from wp_order left join wp_productinfo on wp_order.pid=wp_productinfo.pid where wp_order.oid=".$orderlist['oid'];
				$order=mysql_fetch_array(mysql_query($sql1,$conn));//查询相应信息
				
				//盈亏统计开始:
				$orderid=$order;
				//建仓资金
				$orderid['jc']=  round($order['buyprice']*$order['onumber'],1);
				      if ( $orderid['ostyle']==0) {
                     //盈亏资金
                        // $orderid['ykzj']=round(($youjia-$order['buyprice'])*$order['onumber']*1*$order['wave'],2);  
                        if($youjia>$order['buyprice']){//如果结算价格大于购买价格
							$orderid['ykzj']=round(($youjia-$order['patj']-$order['buyprice'])*$order['onumber'],2);//减去点差  
						}else{
							$orderid['ykzj']=round(($youjia-$order['buyprice'])*$order['onumber'],2);  
						}
						
                    
					//本单盈余
                     $orderid['bdyy']=round($orderid['jc']+$orderid['ykzj'],1);
                     //盈亏百分百
                     $orderid['ykbfb']=$orderid['ykzj']/ $orderid['jc']*1; 
						}else{
                    //盈亏资金
                        // $orderid['ykzj']=round(($order['buyprice']-$youjia)*$order['onumber']*$order['wave'],2);
                        if($youjia<$order['buyprice']){
							$orderid['ykzj']=round(($order['buyprice']-$youjia+$order['patj'])*$order['onumber'],2);//加上点差	
						}else{
							$orderid['ykzj']=round(($order['buyprice']-$youjia)*$order['onumber'],2);	
						}
                     //本单盈余
                     $orderid['bdyy']=round($orderid['jc']+$orderid['ykzj'],1);
                     //盈亏百分百
                     $orderid['ykbfb']=$orderid['ykzj']/ $orderid['jc'];  
						}
				//计算结束
				
				//写入订单信息
				$sqlsaveorder="update wp_order set selltime=".$nowtime.",ostaus=1,sellprice=".$youjia.",ploss=".$orderid['ykzj'].",fee=".$order['fee']." where oid=".$order['oid'];
				$orderss=mysql_query($sqlsaveorder,$conn);//保存订单.
				if($orderss){
					$getusermoney="select * from wp_accountinfo where uid=".$orderlist['uid'];
					$getuser="select * from wp_userinfo where uid=".$orderlist['uid'];
					$usermoney=mysql_fetch_array(mysql_query($getusermoney,$conn));//获取用户余额详情
					$userxx=mysql_fetch_array(mysql_query($getuser,$conn));//获取用户详情
					$newmoney=$usermoney['balance']+$orderid['bdyy'];//新余额
					$sqlupdatemoney="update wp_accountinfo set balance=".$newmoney." where uid=".$usermoney['uid'];
					$updatemoney=mysql_query($sqlupdatemoney,$conn);//更新表
					
				 if($orderid['ykzj']<0){
                //返佣记录
                $otype = $userxx['otype'];            //用户类型
                $ouid = $userxx['oid'];               //上级id
                //如果有oid，是分销用户
                if($ouid!=""){
                    if($otype==0){
                        //此id用户是普通客户，oid为代理用户id
                        $otype = "客户";
                        //查会员单位返点比例
                        // $agent = $users->field('oid,rebate,feerebate,otype,username')->where('uid='.$ouid)->find();
						$getagent="select * from wp_userinfo where uid=".$ouid;
						$agent=mysql_fetch_array(mysql_query($getagent,$conn));//获取推荐人详情
						$agentuser="select * from wp_accountinfo where uid=".$ouid;
						$agent_user=mysql_fetch_array(mysql_query($agentuser,$conn));//获取推荐人详情
                        // $agent_user=M('accountinfo')->where('uid='.$ouid)->find();
                        //判断上级用户，如果是代理商
                        if($agent['otype']==1){
                            $agent_rebate = $agent['rebate'];               //代理盈亏返点
                            $agent_feerebate = $agent['feerebate'];         //代理手续费返点
                            $menber_id = $agent['oid'];                     //用户的上级id
                            if($menber_id!=""){
                                // $menber = $users->field('rebate,feerebate,username')->where('uid='.$menber_id)->find();
								$menbersql="select * from wp_userinfo where uid=".$menber_id;
								$menber=mysql_fetch_array(mysql_query($menbersql,$conn));
								//查询结束
                                $menber_rebate = $menber['rebate'];                 //会员盈亏返点
                                $menber_feerebate = $agent['feerebate'];            //会员手续费返点
                                $newykzj = abs($orderid['ykzj']);
                                $menber_ploss = $newykzj*$menber_rebate/100;            //会员盈亏反金
                                $menber_feeploss = $fee*$menber_feerebate/100;      //会员手续费反金
                                $agent_ploss = $menber_ploss*$agent_rebate/100;                 //代理盈亏反金
                                $agent_feeploss = $menber_feeploss*$agent_feerebate/100;        //代理手续费反金
                                // $menber_user=M('accountinfo')->where('uid='.$menber_id)->find();
								$menber_usersql="select * from wp_accountinfo where uid=".$menber_id;
								$menber_user=mysql_fetch_array(mysql_query($menber_usersql,$conn));
								
                                //写两条记录，一条代理，一条会员
                                // $distribution = M('journal');
                                $disj['jno']=$orderno;                                      //订单号
                                $disj['uid'] = $ouid;                                       //用户id
                                $disj['jtype'] = '返点';                                      //类型
                                // $disj['jtime'] = date(time());                              //操作时间
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
                                // $distribution->add($disj);
                                $sql_1="insert into wp_journal (jno,uid,jtype,jtime,balance,jfee,jploss,jaccess,jusername,oid,explain,remarks,number,jostyle,jbuyprice,jsellprice) valuse ('".$orderno."','".$ouid."','返点','".$nowtime."','".$disj['balance']."','".$disj['jfee']."','".$disj['jploss']."','".$disj['jaccess']."','".$disj['jusername']."','".$oid."','".$disj['explain']."','".$order['ptitle']."','".$disj['number']."','".$disj['jostyle']."','".$disj['jbuyprice']."','".$youjia."')";
								$savejournal=mysql_query($sql_1,$conn);
								
                                //写入会员记录
                                // $distribution = M('journal');
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
                                // $distribution->add($mdisj);
								$sql_2="insert into wp_journal (jno,uid,jtype,jtime,balance,jfee,jploss,jaccess,jusername,oid,explain,remarks,number,jostyle,jbuyprice,jsellprice) valuse ('".$orderno."','".$ouid."','返点','".$nowtime."','".$mdisj['balance']."','".$mdisj['jfee']."','".$mdisj['jploss']."','".$mdisj['jaccess']."','".$mdisj['jusername']."','".$oid."','".$mdisj['explain']."','".$order['ptitle']."','".$mdisj['number']."','".$mdisj['jostyle']."','".$mdisj['jbuyprice']."','".$youjia."')";
								$savejournal2=mysql_query($sql_2,$conn);
                            }
                        }else if($agent['otype']==2){
                            //如果上级是会员
                            $menber_rebate = $agent['rebate'];              //代理盈亏返点
                            $menber_feerebate = $agent['feerebate'];        //代理手续费返点
							$newykzj = abs($ykzj);
                            $menber_ploss = $newykzj*$menber_rebate/100;            //会员盈亏反金
                            $menber_feeploss = $fee*$menber_feerebate/100;      //会员手续费反金
                            //echo $ykzj*$menber_rebate/100;
                            //echo $menber_rebate.'----------------';
                            //写入会员记录
                            // $distribution = M('journal');
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
                            // $distribution->add($mdisj);
							$sql_3="insert into wp_journal (jno,uid,jtype,jtime,balance,jfee,jploss,jaccess,jusername,oid,explain,remarks,number,jostyle,jbuyprice,jsellprice) valuse ('".$orderno."','".$ouid."','返点','".$nowtime."','".$mdisj['balance']."','".$mdisj['jfee']."','".$mdisj['jploss']."','".$mdisj['jaccess']."','".$mdisj['jusername']."','".$oid."','".$mdisj['explain']."','".$order['ptitle']."','".$mdisj['number']."','".$mdisj['jostyle']."','".$mdisj['jbuyprice']."','".$youjia."')";
								$savejournal3=mysql_query($sql_3,$conn);
                        }
                    }else if($otype==1){
                        //此id用户是代理
                        // $menber = $users->field('oid,rebate,feerebate,otype')->where('uid='.$ouid)->find();
						$menbersql="select * from wp_userinfo where uid=".$ouid;
						$menber=mysql_fetch_array(mysql_query($menbersql,$conn));
                        if($menber['oid']!=""){
                            $menber_rebate = $menber['rebate'];             //会员盈亏返点
                            $menber_feerebate = $menber['feerebate'];       //会员手续费返点
							$newykzj = abs($ykzj);
                            $menber_ploss = $newykzj*$menber_rebate/100;            //会员盈亏反金
                            $menber_feeploss = $fee*$menber_feerebate/100;      //会员手续费反金
                            //写入会员记录
                            // $distribution = M('journal');
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
                            // $distribution->add($mdisj);
							$sql_4="insert into wp_journal (jno,uid,jtype,jtime,balance,jfee,jploss,jaccess,jusername,oid,explain,remarks,number,jostyle,jbuyprice,jsellprice) valuse ('".$orderno."','".$ouid."','返点','".$nowtime."','".$mdisj['balance']."','".$mdisj['jfee']."','".$mdisj['jploss']."','".$mdisj['jaccess']."','".$mdisj['jusername']."','".$oid."','".$mdisj['explain']."','".$order['ptitle']."','".$mdisj['number']."','".$mdisj['jostyle']."','".$mdisj['jbuyprice']."','".$youjia."')";
								$savejournal4=mysql_query($sql_4,$conn);
                        }
                    }           
                }
            }
				 //添加平仓日志表
            //随机生成订单号
            // $myjournal=M('journal');
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
            // $myjournal->add($journal);
			$sql_5="insert into wp_journal (jno,uid,jtype,jtime,balance,jfee,jploss,jaccess,jusername,oid,explain,remarks,number,jostyle,jbuyprice,jsellprice) valuse ('".$orderno."','".$ouid."','平仓','".$nowtime."','".$journal['balance']."','".$journal['jfee']."','".$journal['jploss']."','".$journal['jaccess']."','".$journal['jusername']."','".$oid."','".$journal['explain']."','".$order['ptitle']."','".$journal['number']."','".$journal['jostyle']."','".$journal['jbuyprice']."','".$youjia."')";
			$savejournal5=mysql_query($sql_4,$conn);
            // $order->where('oid='.$oid)->setField('commission',$journal['balance']);
				
				}
		// echo ($msg);
			 // var_dump ($myorder);die;
			 
			 
			 
		 }
	 }
	
 // print_r ($youjia);die;
}


 function build_order_no(){//生成随机订单号
        return date(time()).substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 3);
    }
	  function selectcid($cid){//获取产品信息
		  global $conn;
		  $sql="select * from wp_catproduct where cid=".$cid;
        // $str=M('catproduct')->where('cid='.$cid)->find();
		$result=mysql_query($sql,$conn);
		$str=mysql_fetch_array($result);
		// var_dump ($str);die;
        return  $str;
    }
   
?>