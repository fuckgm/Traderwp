<?php
error_reporting(0);
function getData($code){
	if($code=='conc' || $code=='tjxag'|| $code=='tjcu'){
	$url = "http://m.kxt.com/hQuotes/chart?code=conc";
	$html = GetFile($url,2,1);
//print_r($html);echo 22;die;
	if(!empty($html)){
		$data = array();
    	preg_match_all('/<div class="price-info">(.*?)<h1>(.*?)<\/h1>(.*?)<h2 class="gbcolor">(.*?)<\/h2>(.*?)<span>(.*?)<\/span>(.*?)<span>(.*?)<\/span>(.*?)<i>(.*?)<\/i>(.*?)<i>(.*?)<\/i>(.*?)<i>(.*?)<\/i>(.*?)<i>(.*?)<\/i>(.*?)<\/div>/s',$html,$data);
		
		
		$diff = strpos($data[6][0],"-")!==false?$data[6][0]:"+".$data[6][0];
		$diffRate = strpos($data[8][0],"-")!==false?$data[8][0]:"+".$data[8][0];
		return array("name"=>$data[2][0],"price"=>$data[4][0],"diff"=>$diff,"diffRate"=>$diffRate,"jk"=>$data[10][0],"zk"=>$data[12][0],"zg"=>$data[14][0],"zd"=>$data[16][0],"class"=>$data[4][0]);
		
		
	}}else{
			echo '参数非法';
		}
}


function GetFile($url,$way=1,$coding){
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

function getHtml($url,$data = null){
	$curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
    curl_setopt($curl, CURLOPT_SSLVERSION, CURL_SSLVERSION_TLSv1);
    if (!empty($data)){
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
    }
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($curl, CURLOPT_TIMEOUT,20);
    $output = curl_exec($curl);
    curl_close($curl);
    return $output;
}
?>