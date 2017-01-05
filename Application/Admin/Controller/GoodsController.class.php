<?php
// 本类由系统自动生成，仅供测试用途
namespace Admin\Controller;
use Think\Controller;
class GoodsController extends Controller {
    public function gadd()
	{
		//判断用户是否登陆
		$user= A('Admin/User');
		$user->checklogin();
		
		//实例化数据表
		$goods = D('productinfo');
		$goodtype = D('catproduct');
		//获取所有商品分类			
		$catgood = $goodtype->select();
		$this->assign('catgood',$catgood);
		//判断如果是post提交，则添加数据，否则显示视图
		if(IS_POST){
			if($goods->create()){
				$result = $goods->add();
				if($result){
//					echo "<script> alert('添加商品成功');window.location.href='{:U('Goods/glist')}';</script>";
					$this->success('添加商品成功',U('Goods/glist'));
				}else{
					$this->error('添加商品失败');
				}
			}else{
				$this->error($goods->getError());
			}
		}else{
			$this->display();
		}
	}
	public function glist(){
		//判断用户是否登陆
		$user= A('Admin/User');
		$user->checklogin();
		
		$tq=C('DB_PREFIX');
		$goods = D('productinfo');
		$step = I('get.step');
		
		if($step == "search"){
			$keywords = '%'.I('post.keywords').'%';
			$where['ptitle|uprice|feeprice'] = array('like',$keywords);
			$goodlist = $goods->join($tq.'catproduct on '.$tq.'catproduct.cid='.$tq.'productinfo.cid')->where($where)->order($tq.'productinfo.pid desc')->select();			
			if($goodlist){
				$this->ajaxReturn($goodlist);	
			}else{
				$this->ajaxReturn("null");
			}
		}else{
			$count = $goods->count();
	        $pagecount = 20;
	        $page = new \Think\Page($count , $pagecount);
	        $page->parameter = $row; //此处的row是数组，为了传递查询条件
	        $page->setConfig('first','首页');
	        $page->setConfig('prev','&#8249;');
	        $page->setConfig('next','&#8250;');
	        $page->setConfig('last','尾页');
	        $page->setConfig('theme','%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END% ');
			
	        $show = $page->show();
			$goodlist = $goods->join($tq.'catproduct on '.$tq.'catproduct.cid='.$tq.'productinfo.cid')->order($tq.'productinfo.pid desc')->limit($page->firstRow.','.$page->listRows)->select();
			
			$this->assign('goodlist',$goodlist);
			$this->assign('page',$show);
		}
		$this->display();
	}
	public function gtype()
	{
		//判断用户是否登陆
		$user= A('Admin/User');
		$user->checklogin();
		
		$goodtype = D('catproduct');
		$typelist = $goodtype->select();
		
		$this->assign('typelist',$typelist);
		$this->display();
	}
	
	public function gtypeadd()
	{
		//判断用户是否登陆
		$user= A('Admin/User');
		$user->checklogin();
		if(IS_POST){
			//实例化数据表
			$goodtype = D('catproduct');
			//自动验证表单
			if($goodtype->create()){
				//添加数据
				$result = $goodtype->add();
				if($result){
					$this->success('添加成功',U('Goods/gtype'));
				}else{
					$this->error('添加失败');
				}
			}else{
				//自动验证返回结果
				$this->error($goodtype->getError());
			}
		}else{
			$this->display();	
		}		
	}
	public function gedit()
	{
		//判断用户是否登陆
		$user= A('Admin/User');
		$user->checklogin();
		
		$tq=C('DB_PREFIX');
		$pinfo = D('productinfo');
		$catp = D('catproduct');
		//判断执行，如果是post提交，执行修改方法，否则显示页面
		if(IS_POST){
			//自动验证表单
			if($pinfo->create()){
				//获取修改表单的数据，并做处理
				$postpid = I('post.pid');
				$data['ptitle'] = I('post.ptitle');
				$data['company'] = I('post.company');
				$data['buytime'] = I('post.buytime');
				$data['uprice'] = I('post.uprice');
				$data['feeprice'] = I('post.feeprice');
				// $data['wave'] = I('post.wave');
				$data['wave'] = I('post.wave');
				$data['patx'] = I('post.patx');
				$data['patj'] = I('post.patj');
				$data['company'] = I('post.company');
				
				$result = $pinfo->where('pid='.$postpid)->save($data);
				if($result === FALSE){
					$this->error("修改失败！");
				}else{
					$this->success("修改成功",U('Goods/glist'));
				}
			}else{
				//自动验证返回结果
				$this->error($pinfo->getError());
			}
		}else{
			//通过获取的id查找该条数据
			$getpid = I('get.pid');
			$editgood = $pinfo->join($tq.'catproduct on '.$tq.'productinfo.cid='.$tq.'catproduct.cid')->where('pid='.$getpid)->find();
			//商品分类获取
			$pclist = $catp->select();
			//获取油，白银，铜的实时价格
			$this->assign('pclist',$pclist);
			$this->assign('editgood',$editgood);
			$this->display();
		}
	}
		
		//分类修改20161113@241035173
		public function gtedit()
	{
		//判断用户是否登陆
		$user= A('Admin/User');
		$user->checklogin();
		
		$tq=C('DB_PREFIX');
		$pinfo = D('catproduct');
		//判断执行，如果是post提交，执行修改方法，否则显示页面
		if(IS_POST){
			//自动验证表单
			if($pinfo->create()){
				//获取修改表单的数据，并做处理
				$postpid = I('post.cid');
				$data['myat'] = I('post.myat');
				$data['myatjia'] = I('post.myatjia');
				$result = $pinfo->where('cid='.$postpid)->save($data);
				if($result === FALSE){
					$this->error("修改失败！");
				}else{
					$this->success("修改成功",U('Goods/gtype'));
				}
			}else{
				//自动验证返回结果
				$this->error($pinfo->getError());
			}
		}else{
			//通过获取的id查找该条数据
			$getpid = I('get.cid');
			$editgood = $pinfo->where('cid='.$getpid)->find();
			//商品分类获取
			//获取油，白银，铜的实时价格
			$this->assign('gt',$editgood);
			$this->display();
		}
	}

	public function gdel(){
		$pinfo = D('productinfo');
		//批量删除id
		$arrpid = I('post.pid');
		//单个删除
		$pid = I('get.pid');
		
		if(IS_POST){
			//批量删除
			$result = $pinfo->where('pid in('.implode(',',$arrpid).')')->delete();
			if($result!==FALSE){
				$this->success("成功删除{$result}条！",U("Goods/glist"));
			}else{
				$this->error('删除失败！');
			}
		}else{
			//单条记录删除
			$result = $pinfo->where('pid='.$pid)->delete();
			if($result!==FALSE){
				$this->success("成功删除！",U("Goods/glist"));
			}else{
				$this->error('删除失败！');
			}
		}
	}
//	//删除栏目
//	public function newtypedel(){
//		$newsclass = D('newsclass');
//		//单个删除
//		$fid = I('get.fid');
//		$result = $newsclass->where('fid='.$fid)->delete();
//		if($result!==FALSE){
//			$this->success("成功删除！",U("News/typelist"));
//		}else{
//			$this->error('删除失败！');
//		}
//	}
	//获取动态油的价格，显示到页面
    public function price(){
         $source=file_get_contents("xh/you.txt");
         $msg = explode(',',$source);
         $myprice[0] = str_replace('price:', '',str_replace('"','',$msg[1]));//最新
         $myprice[8] = str_replace('jk:', '',str_replace('"','',$msg[4]));//今开
         $myprice[7] = str_replace('zk:', '',str_replace('"','',$msg[5]));//昨开
         $myprice[4] = str_replace('zg:', '',str_replace('"','',$msg[6]));//最高
         $myprice[5] = str_replace('zd:', '',str_replace('"','',$msg[7]));//最低
         //$myprice[12] = $myprice[0]-$myprice[8];   
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
         //$myprice[12] = $myprice[0]-$myprice[8];
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
         //$myprice[12] = $myprice[0]-$myprice[8];
         $this->ajaxReturn($myprice);
    }
	
		//获取动态比特币的价格，显示到页面
    public function pricebt(){
         $source=file_get_contents("xh/btcoin.txt");
         $msg = explode(',',$source);
         $myprice[0] = str_replace('price:', '',str_replace('"','',$msg[1]));//最新
         $myprice[8] = str_replace('jk:', '',str_replace('"','',$msg[4]));//今开
         $myprice[7] = str_replace('zk:', '',str_replace('"','',$msg[5]));//昨开
         $myprice[4] = str_replace('zg:', '',str_replace('"','',$msg[6]));//最高
         $myprice[5] = str_replace('zd:', '',str_replace('"','',$msg[7]));//最低
         //$myprice[12] = $myprice[0]-$myprice[8];   
		 $this->ajaxReturn($myprice);
    }
 
	
	//调取分类的点差
    public function diancha($cname){
        $at= M('catproduct')->where("cname='$cname'")->find();
        return $at;
    }
}