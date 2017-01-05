$(function(){
	var deal_product = 'BTC';
	var capital_one = 'BTC';
	var data_setInt = 0;
	var data_setInt_option = 0;
	var default_order = 100;//下单默认金额
	var order_dirt =0; //0看涨1看空
	var deal_time = 0;//到期时间
	var time_limit = 0;
	var inteval_time = 1000;
	var diff_one = 1; //1min 5min 5min 60min
    var chgsta = 0;   //记录循环的变量
    if(FLAG==1){
        default_order = MIN_ORDER;
    }
	//资产切换start
	$(".main_M_tit div div a").click(function() {//资产切换
        var inx = $(this).parent().index();
		
		$(this).parent().parent().parent().find('a').removeClass('A_active');
        $(this).addClass('A_active');
        var key_t = $(this).attr('prokey');
        deal_product = key_t;
		getOption_type(deal_product);
    });


   var apri = new Array();
   apri["60"] = WINNERT;
   apri["180"] = WINNERT;
   apri["300"] = WINNERT;
   apri["900"] = WINNERT;
   apri["1800"] = WINNERT;
   apri["60"] = 0.75;
   apri["180"] = 0.77;
   apri["300"] = 0.80;
   apri["900"] = 0.82;
   apri["1800"] = 0.85;

$("#selectmenu4").change(function(){
	var f = $("#selectmenu4").val();
	var deal_amount = parseInt($("#deal_amount").val());
	$("#yield_show").text(apri[f]*100+"%");
	$("#yield_winner").text(apri[f]);
	wr = 100*apri[f]*deal_amount/100+deal_amount;
	$("#winner_rate").text("¥"+wr);
	WINNERT = apri[f];
	

});

	function getOption_type(deal_product){
		/*$.ajax({
			type : 'post',
			url : ROOT+'/getoption.php',
			data : {deal_product:deal_product},
			dataType : 'JSON',
			async : true,
			timeout: 900, 
			success : function(data_t) {
				data_t = eval('(' + data_t+ ')');//result = JSON.parse( data.data );
				 $("#selectmenu3").empty();
				 $.each(data_t,function(n,value){
					if(value.capital_key==capital_one){
						$("#selectmenu3").append("<option value="+value.capital_key+" selected='selected'>"+value.capital_name+"</option>");
					}else{
						$("#selectmenu3").append("<option value="+value.capital_key+">"+value.capital_name+"</option>");
					}
					$('#selectmenu3').selectmenu('refresh', true); 
				})
				$("#trade_chart_img").html("<img style=' width:35px; height:23px; padding:5px 3px 4px 0; float:left;' src='" + IMAGES + "/" +  $("#selectmenu3").children('option:selected').val()+ ".png' />");
				capital_one = $("#selectmenu3").children('option:selected').val();
			},
			error : function(data) {
				//alert("获取资产类型失败！");
			}
		});*/
	}
	//getOption_type(deal_product);//默认显示
	$('#selectmenu3').change(function(){ 
	    //改变资产类型，重新以1min方式画图
        $("#time_diff").find("a").removeClass("m_on");
        $("#time_diff").find("a").eq(0).addClass("m_on");
        diff_one = 1; //默认为按照   1min 画图
        clearInterval(chgsta);
        
		var p = $(this).children('option:selected').val();
		capital_one = p;
		$("#trade_chart_img").html("<img style=' width:35px; height:23px; padding:5px 3px 4px 0; float:left;' src='" + IMAGES + "/" +p+ ".png' />");
	
		$("#nowpotis").html("0");
	}) 
	//资产切换end

	//金额显示
	// $('#deal_amount').keyup(function() {
		// var con_t = $(this).val();
		// con_t = con_t.replace("金额¥ ", "");
		// profit_change(0, con_t);

	// });
	$('#deal_amount').change(function(){ 
	    var con_t = $(this).children('option:selected').val();
		profit_change(0, con_t);
	}) 
	function profit_change(index, valu_t) {

		var failer_rate = jQuery("#yield_fail").text();
		var winner_rate = jQuery("#yield_winner").text();

		if (valu_t == 0)
		{
			valu_t = default_order;
		}

		var profit;
		var dif_profit;
		profit = $("#winner_rate");
		dif_profit = $("#failer_rate");

		var str = 0;
		var str_t = 0;
		var va_index = 1;
		var va_rate = (parseInt(va_index)*100 + parseInt(winner_rate * 100)) / 100;
		str = valu_t * va_rate+"";
		if (str.indexOf(".") > 0) {
			str = str.substring(0, str.indexOf(".") + 3);
		}

		va_rate = parseInt(failer_rate*100);
		str_t = valu_t * va_rate / 100 + "";
		if (str_t.indexOf(".") > 0) {
			str_t = str_t.substring(0, str_t.indexOf(".") + 3);
		}

		profit.text("¥" + str);
		dif_profit.text("¥" + str_t);
	}
	
	$('.M_zhang').click(function() {
		order_dirt = 1;
		set_order_message();
	});

	$('.M_die').click(function() {
		order_dirt = 0;
		set_order_message();
	});

	function set_order_message()
    {
        $("#flow_span_dir").text("");
        $("#flow_span").text("");
        $("#flow_span_value").text("");
        $("#flow_span_mount").text("");
        $("#flow_span_time").text("");
        $("#flow_span_profit").text("");

		if (order_dirt == 0) {
			$("#flow_span_dir").text("看跌");
		} else {
			$("#flow_span_dir").text("看涨");
		}

		var amount = jQuery("#deal_amount").val();
		amount = amount.replace("金额¥ ", "");
		if (amount == 0) amount = default_order;
		
		$("#flow_span_mount").text("¥" + amount);
		//$("#flow_span_time").text(jQuery("#finish_time").text().trim());
		//var aaaa= $("#selectmenu4 ").val();
		$("#flow_span_time").text($("#selectmenu4 option:selected").text());
		var expect_profit = amount*1+100*WINNERT*amount/100;//$("#winner_rate").html().trim();
		//expect_profit = expect_profit.replace("￥", ""); //去除￥
		$("#flow_span_profit").text(expect_profit);
		$("#flow_span").text(capital_one);
		$("#flow_span_value").text(($.trim($("#nowpotis").text())));
		document.getElementById("gmjg").value =text(($.trim($("#nowpotis").text())));
		// $("#gmjg").value(($.trim($("#nowpotis").text())));
    }
    
    //判断是否允许1分钟下单
    //
    //
    $("#selectmenu4").click(function(){
    	$.ajax({
    		url:'onemin',
			method:'POST',
			success:function(data){
				if(data==1) {

					$("#selectmenu4 option[value='60']").css("display", "");
					//select_td();		
				} else {
					//$("#selectmenu4 option[value='60']").remove();
					//$("#selectmenu4 option[value='60']").css("display", "none");
				}

			}
    	});
    	
    	//alert("00-01");
    	//alert($(this).find('option[selected]').index());
    	
    });

//	$("#selectmenu4").on('change', function(){	
//		alert("000-09");	
//	});


	$("#st_order").click(function() {
        /*$("#st_order").css("display", "none");
    	$("#ct_order").css("display", "none");
    	$("#msg_order").removeAttr("hidden");
		jQuery.ajax({
    		url:ROOT+"/index.php/trading/delay",
    		dataType: 'JSON',
    		async: true,
    		error: function(data){
    			//无法获取信息则正常下单
				$("#submittrad").popup("close");
		        deal_ajax(order_index, order_dirt);
    			return	0;
    		},
    		success: function(data_t){
    			//json_data = eval(data_t);
    			if(data_t['is_delay'] == 1){
			    	var	order_timeHand=setInterval(function(){	
						$("#submittrad").popup("close");
				        deal_ajax(order_dirt);
				        clearInterval(order_timeHand);
					},1000);
    			}else{
					$("#submittrad").popup("close");
			         deal_ajax(order_dirt);
    			}
    			return	0;
    		}
    	});*/
    });

	//下单发送ajax
	function deal_ajax(dirc) {

        var deal_amount; //下单金额
        var captial; //资产种类
        var captial_id;
        var product; //资产
        var finish_time; //到期时间
        var direction; //方向
        var deal_value; //下单点位
        var yield; //收益率
        var expect_profit; //收益值
        var faild_profit; //保底值
        var msg;
        //获取收益率
        yield = $("#yield_winner").html();
        //expect_profit = $("#winner_rate").html();
        //expect_profit = expect_profit.replace("¥", ""); //去除￥
        faild_profit = $("#failer_rate").html();
        faild_profit = faild_profit.replace("¥", ""); //去除￥

        deal_amount = $("#deal_amount").val();
		deal_amount = deal_amount.replace("金额¥ ", "");
        if (!deal_amount) {
            deal_amount = default_order;
        } else if (deal_amount < default_order) { //最低下单金额限制
            //alert('下单金额过低！无法交易！');
            /*alert('下单金额过低！无法交易！');
            return;*/
			$("#msg_order").attr("hidden","hidden");
			$("#st_order").css("display", "");
			$("#ct_order").css("display", "");	
           setTimeout(function(){
                $("#popdiv p").html("下单金额过低！无法交易！");     //20151106
                $("#popdiv").popup();
                $("#popdiv").popup("open");}, 1000);
            return 0;
        }
        expect_profit = deal_amount * (1 + WINNERT);
        captial = $("#selectmenu3 ").val();

        deal_value = $("#nowpotis").text();
        var deal_value_s = deal_value;

        //finish_time = $("#selectmenu4 option:selected").text();
        finish_time = $("#selectmenu4 option:selected").val();

        /*jQuery.ajax({
            type: 'post',
            //url: ROOT+"/mobile.php/mobile/deal_dq",
            url: ROOT+"/index.php/trading/deal",
            data: "amount=" + deal_amount + "&trade_time=" + deal_time + "&capital=" + captial + "&product=" + deal_product + "&direction=" + dirc + "&sec=" + finish_time + "&deal_value=" + deal_value + "&yield=" + yield + "&expect_profit=" + expect_profit + "&faild_profit=" + faild_profit + "&market=msht",
            dataType: 'JSON',
            async: true,
            //timeout: 900, 
            error: function(data) {
                $("#popdiv p").html("下单失败！");
				$("#popdiv").popup();
				$("#popdiv").popup("open");
				$("#msg_order").attr("hidden","hidden");
		    	$("#st_order").css("display", "");
		    	$("#ct_order").css("display", "");	
                //jbox_message("下单提示", '下单失败！');
                return 0;
            },
            success: function(data_t) {
                //var json_data = eval('(' + data_t + ')');
                var json_data = eval(data_t);
                if (json_data['type'] == 'success') {
                    var deal_value = json_data['deal_value'];
                    msg = '您已成功下单！位置：' + deal_value + ',金额：' + json_data['amount'];
                    if (json_data['direction'] == 0) {
                        msg += '，方向：看空';
                    } else {
                        msg += '，方向： 看涨';
                    }
			
			$('#flow_span_s').text(captial);
			$('#flow_span_dir_s').text("看涨");
			$('#flow_span_value_s').text(deal_value_s);
			$('#flow_span_mount_s').text(deal_amount);
			$('#flow_span_time_s').text(finish_time);
			if(dirc == 0) {
				$('#flow_span_dir_s').text("看跌");
			}
			$("#continued").popup("open");


                    //alert(msg);
					//$("#popdiv").trigger("create") ;
					 $("#popdiv p").html("下单成功");
					 $("#popdiv").popup();
					 $("#popdiv").popup("open");
                    //jbox_message("下单提示",msg);
                } else if (json_data['type'] == 'error') {
                    	//alert(json_data['error']);
						$("#popdiv p").html(json_data['error']);
						$("#popdiv").popup();
						$("#popdiv").popup("open");
                    //jbox_message("下单提示", json_data['error']);
                }
				$("#msg_order").attr("hidden","hidden");
		    	$("#st_order").css("display", "");
		    	$("#ct_order").css("display", "");	
                return 0;
            }
        });*/

    }
	Date.prototype.format = function(format) {
		var o = {
			"M+": this.getMonth() + 1,
			// month
			"d+": this.getDate(),
			// day
			"h+": this.getHours(),
			// hour
			"m+": this.getMinutes(),
			// minute
			"s+": this.getSeconds(),
			// second
			"q+": Math.floor((this.getMonth() + 3) / 3),
			// quarter
			"S": this.getMilliseconds()
			// millisecond
		};

		if (/(y+)/.test(format)) {
			format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
		}

		for (var k in o) {
			if (new RegExp("(" + k + ")").test(format)) {
				format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
			}
		}
		return format;
	};
	function change_time(time_xt) {//1436868000
        //var now = new Date(time_xt * 1000).format("yyyy-MM-dd hh:mm:ss");
        var now = new Date(time_xt * 1000).format("hh:mm");
        return now;
    }

	//根据deal_time选择设置时间间隔
    function set_dif_time() {
        if (deal_time <= 0) {
            return;
        }

        var deal_time_t = deal_time + 300;
		var time_one = Math.ceil(deal_time_t / 900);
		time_one = time_one * 900;
		time_limit = time_one;
		var inx = 4;
		$("#selectmenu4").empty();
		while (inx-->0) {
			var time_txt = change_time(time_one);	
			//if (inx == 3) {
			//	$(".main_M_S .ui-block-b .ui-select .ui-btn-text").text(time_txt);
			//}
			if (inx == 3) {
				$("#selectmenu4").append("<option value="+time_one+" selected='selected'>"+time_txt+"</option>");
			}else{
				$("#selectmenu4").append("<option value="+time_one+">"+time_txt+"</option>");
			}
			//$('#selectmenu4').selectmenu('refresh', true); 
			time_one = time_one + 900;
		}
    }
	function getTime(){
		/*$.ajaxSettings.async = false;  
		$.getJSON( ROOT+'/mobile.php/Mobile/get_time', 
			function (data) {
				deal_time = data;
			}
		);*/
	}
	
	
    //选择 1min 5min 或 15min等
    $("#time_diff a").click(function(){
        //如果选择时间间隔，就中断原有更新函数；
        var str = $(this).text();
        $("#time_diff a").removeClass("m_on");
        $(this).addClass("m_on");
        diff_one = str.match(/[0-9]*/);
        
        clearInterval(chgsta);
        chgsta = window.setInterval(function() {draw(diff_one,capital_one);}, inteval_time);
        
        window.clearInterval(data_setInt); // 中断之前的interval（）函数下的draw()循环
    });

	function draw(inx,capital_key,code='') {
		$.ajax({
				type : 'post',
				//url : ROOT+'/mobile.php/Mobile/getJqplot/inx/'+inx+'/captype/'+capital_key+'',
				url : ROOT+'/index.php/Home/index/getdata/capital_key/BTC',
				data: 'type='+diff_one,
				//data : {inx:inx,capital_key:capital_key},
				dataType : 'JSON',
//				async : true,
//				timeout: 900, 
				success : function(data) {
					var str = data['data'];
					var json_str = eval(str);
					var t_max = data['max'];
					var t_min = data['min'];
					var t_current = data['last'];
					var t_open = data['last_open'];
					var str_capital = data['capital_type'];
					var capital_dot = data['capital_dot'];
					//  alert(capital_dot);
			   
					//deal_time = data['time_t']; //获取时间戳
					var base_cursor_top = 10;
					var jqPlot_height = 210;

					var fix_t = 0;

					draw_highchart(0, fix_t, t_open, t_current, t_min, t_max, str, str_capital,data['min_time'],data['max_time'], capital_dot);
					///getTime();//获取系统时间
					deal_time = data['time_t'];
					//set_dif_time();
				},
				error : function(data) {
					//alert("获取数据失败");
				}
			});
	}

	function draw_highchart(index, fix_t, t_prelast, t_current, t_min, t_max, json_str, str_capital, min_time, max_time, capital_dot) {

			if (index == 1) {
				var elementId = "#chartdiv2";
				if ($(elementId)) {
					$(elementId).unbind();
					// for iexplorer
					$(elementId).empty();
				}
			}
			else {
				var elementId = "#chartdiv";
				if ($(elementId)) {
					$(elementId).unbind();
					// for iexplorer
					$(elementId).empty();
				}
			}


			//var t_max = data['max'];
			//var t_min = data['min'];
			var max_time = json_str['max_time'];
			var min_time = json_str['min_time'];
			var max = json_str['max'];
			var min = json_str['min'];
		   // alert(max_time);

			var plot2 = "#chartdiv";
			var str_div = 'chartdiv';
			if (index == 1) {
				plot2 = '#chartdiv2';
				str_div = 'chartdiv2';
			}

			if ($(plot2)) {
				$(plot2).unbind();
				$(plot2).empty();
			}

			//highchart设置
			var data = eval(json_str);
			//alert(json_str);
			
			//alert(data.length);
			var ohlc = [],
				volume = [],
				dataLength = data.length,
				// set the allowed units for data grouping
				groupingUnits = [[
					'week',                         // unit name
					[1]                             // allowed multiples
				], [
					'month',
					[1, 2, 3, 4, 6]
				]],

				i = 0;

			 for (i; i < dataLength; i += 1) {
				ohlc.push([
					data[i][0], // the date
					data[i][1], // open
					data[i][2], // high
					data[i][3], // low
					data[i][4] // close
				]);

			} 

			 Highcharts.setOptions({

				global: {
					useUTC: false//时区设置
				},

				credits: {
					enabled: false//去掉右下角的标志
				},

				zoom: {
					enabled: false//去掉右下角的标志
				},

				animation: {
					enabled: false//去掉动画
				},
				exporting: {
					enabled: false//去掉截图
				}

			}); 


			//alert(t_max);
			// create the chart
			//	$(plot2).highcharts('StockChart', {
			 var options = {
				xAxis: {
					gridLineWidth: 0.3,
					gridLineColor: '#d0d0d3',
					tickPixelInterval: 80,
					ordinal: false,
					min: min_time,
					max: max_time,
					showLastLabel: true,
					labels: {
						align: 'top',
						y: 13,
						x: -17,
					}
				},
				yAxis: {
					gridLineWidth: 0.3,
					allowDecimals: true,
					gridLineColor: '#d0d0d3',
					min: t_min,
					max: t_max,
					showLastLabel: true,
					tickPixelInterval: 80,
					labels: {
						align: 'left',
						x: 8,
						y: 5,
						formatter: function () {
							// alert(this.value);
							return this.value.toFixed(capital_dot);
						}
					},
				},
				chart: {
					margin: [10, 60, 15, 10],
					plotBorderWidth: 1,
					backgroundColor: '#f8f8f8',
					plotBorderColor: '#c6e3ec',
					renderTo: str_div,
					plotShadow: true,
					//borderWidth:1,

				},
				rangeSelector: {
					enabled: false
				},
				navigator: {
					enabled: false
				},
				scrollbar: {
					enabled: false
				},
				credits: {
					enabled: false
				},
				series: [{
					name: str_capital,
					data: data,
					type: 'candlestick',
					threshold: null,
					//	fillColor: '#fff',
				}],
				plotOptions: {
					//修改蜡烛颜色
					candlestick: {
						color: '#33AA11',
						upColor: '#DD2200',
						lineColor: '#33AA11',
						upLineColor: '#DD2200',
						maker: {
							states: {
								hover: {
									enabled: true,
								}
							}
						}
					},
					line: {
						lineWidth: 1,
						color: '#000',
						dataGrouping: {
							enabled: false
						},
						allowPointSelect: true,
						marker: {
							states: {
								hover: {
									radius: 2
								}
							}
						},

					},
					area: {
						lineWidth: 1,
						color: '#000',
						dataGrouping: {
							enabled: false
						},
						allowPointSelect: false,
						marker: {
							states: {
								hover: {
									radius: 2
								}
							}
						},
						events: {
							click: function (event) {
							}
						}
					},
					series: {
						//color: lineColor,
						lineWidth: 1,
						states: {
							hover: {
								lineWidth: 1,
							}
						}
					}
				},
				tooltip: {
					crosshairs: [true, true],
				}
			};
	 
			 var chart1 = new Highcharts.StockChart(options);

			var base_cursor_top = 10;
			var jqPlot_height = 160;

			fix_t = base_cursor_top + jqPlot_height / (chart1.yAxis[0].max - chart1.yAxis[0].min) * (chart1.yAxis[0].max - t_current);
			//alert(1);
			//移动线和框的设置
			if (index == 1) {

				document.getElementById("data_cursor2").style.top = fix_t + "px";

				if (t_prelast < t_current) {
					$("#move_line_data2").css("background", "#f00");
					$("#move_line_data2").css("color", "#fff");
					$("#data_cursor2").css("borderTopColor", "#f00");
				} else if (t_prelast > t_current) {
					$("#move_line_data2").css("background", "#22bb22");
					$("#move_line_data2").css("color", "#fff");
					$("#data_cursor2").css("borderTopColor", "#22bb22");
				}
				$("#move_line_data2").text(t_current);
				$('#flow_span_value').text(t_current);
				jQuery(".cur_value").eq(1).html(t_current);

			} else if (index == 0) {

				document.getElementById("data_cursor").style.top = fix_t + "px";
				if (t_prelast < t_current) {
					$("#move_line_data").css("background", "#f00");
					$("#move_line_data").css("color", "#fff");
					$("#data_cursor").css("borderTopColor", "#f00");
				} else if (t_prelast > t_current) {
					$("#move_line_data").css("background", "#22bb22");
					$("#move_line_data").css("color", "#fff");
					$("#data_cursor").css("borderTopColor", "#22bb22");
				}
				$("#move_line_data").text(t_current);
				
				//alert(t_current);4833.3
				//var preone = t_current.slice(0,t_current.length-3);
				//var pretwo = t_current.slice(t_current.length-3,t_current.length);
				
				var patt1 = new RegExp("/#f00/");
				
				/*if(patt1.test(st)){ 
					$('#nowpotis').css('color','#f00');
				} else {
					$('#nowpotis').css('color','#22bb22');
				}*/
				var fontcolor = $("#data_cursor").css("border-top-color");
				//$('#nowpotis').css('color',fontcolor);
				//$('#nowpotis').html(preone+"<span>"+pretwo+"</span>");
				
				
				$('#flow_span_value').text(t_current);
				$('#danjia').val(t_current);
				$('#flow_span_value_n').text(t_current);
				flow_time = parseInt($('#flow_span_time_s').text());
				if(flow_time<=1)
				{
					$("#continued").popup("close");
				}else{
				$('#flow_span_time_s').text(flow_time-1);
				flow_span_dir_s = $('#dz2').text();
				flow_span_value_s = $('#flow_span_value_s').text();
				var jg = $('#jg').text();
				if(flow_span_dir_s=="买涨")
				{
					if(t_current>jg)
					{
						$('#yk').html('<font color="red">盈</font>');
					}else if(t_current==jg)
					{
						 $('#yk').text("平");
					}else{
						$('#yk').html('<font color="green">亏</font>');
					}
				}else
				{
					if(t_current>jg)
                    {
                        $('#yk').html('<font color="green">亏</font>');
                    }else if(t_current==jg)
                    {
                        $('#yk').text("平");
                    }else{
                        $('#yk').html('<font color="red">盈</font>');
                    }
				}		
				}
				
				//	alert($("#move_line_data").css("background"));
				jQuery(".cur_value").eq(0).html(t_current);
			} 
		}

	function setdata(){
		window.clearInterval(data_setInt_option);
		getOption_type(deal_product);//默认显示
		data_setInt_option = window.setInterval(function() {getOption_type(deal_product);}, 1*inteval_time); 
		 window.clearInterval(data_setInt);
		 //draw(1,capital_one,code);
		 data_setInt = window.setInterval(function() {draw(1,capital_one);}, inteval_time); 
	}
	
	setdata();

});
