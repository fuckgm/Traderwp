<?php
namespace Home\Controller;
use Think\Controller;
class CommonController extends Controller {

        public function _initialize(){
         //判断用户是否已经登录
         /*
		 $this->redirect('Index/index'); 
		$czmcsy = CONTROLLER_NAME . ACTION_NAME;
		$czmc = ACTION_NAME;
		if($czmcsy<>'Indexindex'){
			if (!isset($_SESSION['uid'])) {
		$this->redirect('User/login'); 
			}
		}
		*/
		  
//		  if (!isset($_SESSION['uid'])) {
//        	//直接跳转页面
//            $this->redirect('User/login'); 
//         }
		  
         
        

    }



}