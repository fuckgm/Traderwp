<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/1/12
 * Time: 9:05
 */


//格式化打印数组
function p($arr){
    if(empty($arr)){
        header("Content-type: text/html; charset=utf-8"); 
        echo  '没有数据';
    }else{
        echo "<pre>";
        $arr = print_r($arr);
        echo "</pre>";
        return $arr;
    }
}
//判断是否存在二维数组中
function deep_in_array($value, $array) {   
    foreach($array as $item) {   
        if(!is_array($item)) {   
            if ($item == $value) {  
                return true;  
            } else {  
                continue;   
            }  
        }   
            
        if(in_array($value, $item)) {  
            return true;      
        } else if(deep_in_array($value, $item)) {  
            return true;      
        }  
    }   
    return false;   
}

//计算百分比
function bfb($number){
	$order = M('order')->order('onumber DESC')->select();
	$num = ($number/$order[0]['onumber'])*100;
	return $num+20;
}
