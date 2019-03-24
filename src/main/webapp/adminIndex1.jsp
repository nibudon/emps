<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="cn">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8" />
    <title>管理员主页</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    
    <link href="/js/bootstrap.min.js" rel="stylesheet" type="text/css">
	<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    
    <link href="public/media/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="public/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
    <link href="public/media/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="public/media/css/style-metro.css" rel="stylesheet" type="text/css" />
    <link href="public/media/css/style.css" rel="stylesheet" type="text/css" />
    <link href="public/media/css/style-responsive.css" rel="stylesheet" type="text/css" />
    <link href="public/media/css/default.css" rel="stylesheet" type="text/css" id="style_color" />
    <link href="public/media/css/uniform.default.css" rel="stylesheet" type="text/css" />
    <!-- mask alert -->
    <link href="public/media/css/jquery-ui-1.10.1.custom.min.css" rel="stylesheet" type="text/css" />
    <link href="public/media/css/bootstrap-modal.css" rel="stylesheet" type="text/css" />
    <!-- mask alert -->
    <!-- END GLOBAL MANDATORY STYLES -->
    <link rel="shortcut icon" href="public/media/image/favicon.png" />
    <!-- END COPYRIGHT -->
    <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
    <!-- BEGIN CORE PLUGINS -->
    <script src="public/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
    <script src="public/media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
    <script src="public/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
    <script src="public/media/js/bootstrap.min.js" type="text/javascript"></script>
    <!--[if lt IE 9]>

    <script src="public/media/js/excanvas.min.js"></script>

    <script src="public/media/js/respond.min.js"></script>  

    <![endif]-->
    <script src="public/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="public/media/js/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="public/media/js/jquery.cookie.min.js" type="text/javascript"></script>
    <script src="public/media/js/jquery.uniform.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script src="public/media/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="public/media/js/jquery.backstretch.min.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="public/media/js/app.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script src="public/media/js/bootstrap-modal.js" type="text/javascript"></script>
    <script src="public/media/js/bootstrap-modalmanager.js" type="text/javascript"></script>
    <script src="public/media/js/ui-modals.js"></script>
</head>
<!-- END HEAD -->
<!-- BEGIN PAGE LEVEL STYLES -->
<!-- color引用 -->
<link rel="stylesheet" href="public/media/css/colpick.css" type="text/css" />
<link rel="stylesheet" href="public/static/css/website.css" type="text/css" />
<link rel="stylesheet" href="public/swiper/dist/css/swiper.min.css" type="text/css" />
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN BODY -->
<style>
.setbg input[type="text"],
.setcol .yu_bgcol {
    background-color: initial!important;
}
</style>

<body class="page-header-fixed">
<input type="hidden" id="hAdminId" value="${currentadmin.id }">
    <!-- BEGIN HEADER -->
    <div class="header navbar navbar-inverse navbar-fixed-top">
        <!-- BEGIN TOP NAVIGATION BAR -->
        <div class="navbar-inner">
            <div class="container-fluid">
                <!-- BEGIN LOGO -->
                <a class="brand" href="index.html">
                    <img src="public/media/image/logo.png" alt="logo" />
                </a>
                <!-- END LOGO -->
                <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                    <img src="public/media/image/menu-toggler.png" alt="" />
                </a>
                <!-- END RESPONSIVE MENU TOGGLER -->
                <!-- BEGIN TOP NAVIGATION MENU -->
                <ul class="nav pull-right">
                    <!-- BEGIN NOTIFICATION DROPDOWN -->
<!--                     <li class="dropdown" id="header_notification_bar"> -->
<!--                         <a href="#" class="dropdown-toggle" data-toggle="dropdown"> -->
<!--                             <i class="icon-warning-sign"></i> -->
<!--                             <span class="badge">6</span> -->
<!--                         </a> -->
<!--                         <ul class="dropdown-menu extended notification"> -->
<!--                             <li> -->
<!--                                 <p>其他服务</p> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="#"> -->
<!--                                     <span class="label label-success"><i class="icon-plus"></i></span> 功能介绍 -->
<!--                                     <span class="time"></span> -->
<!--                                 </a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="#"> -->
<!--                                     <span class="label label-important"><i class="icon-bolt"></i></span> 使用指南 -->
<!--                                     <span class="time"></span> -->
<!--                                 </a> -->
<!--                             </li> -->
<!--                         </ul> -->
<!--                     </li> -->
                    <!-- END NOTIFICATION DROPDOWN -->
                    <!-- BEGIN USER LOGIN DROPDOWN -->
                    <li class="dropdown user">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img alt="" src="public/media/image/avatar1_small.jpg" />
                            <span class="username"></span>
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
<!--                             <li><a href=""><i class="icon-lock"></i> 修改密码</a></li> -->
                            <li><a href="javascript:loginOut('${currentadmin.id }')"><i class="icon-key"></i> 退出</a></li>
                        </ul>
                    </li>
                    <!-- END USER LOGIN DROPDOWN -->
                </ul>
                <!-- END TOP NAVIGATION MENU -->
            </div>
        </div>
        <!-- END TOP NAVIGATION BAR -->
    </div>
    <!-- End HEADER -->
    <!-- BEGIN CONTAINER -->
    <div class="page-container row-fluid">
        <!-- BEGIN SIDEBAR -->
        <div class="page-sidebar nav-collapse collapse">
            <!-- Begin SIDEBAR MENU -->
            <!-- BEGIN SIDEBAR MENU -->
            <ul class="page-sidebar-menu">
                <li>
                    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                    <div class="sidebar-toggler hidden-phone"></div>
                    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                </li>
                <li class="start">
                    <a href="">
                        <i class=" icon-reorder"></i>
                        <span class="title">菜单</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="icon-comments"></i>
                        <span class="title">员工管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="javascript:loc(1)">员工列表</a>
                            <a href="javascript:loc(2)">添加员工</a>
<!--                             <a href="">留言列表</a> -->
<!--                             <a href="">黑名单列表</a> -->
                        </li>
                    </ul>
                </li>
<!--                 <li> -->
<!--                     <a href=""> -->
<!--                         <i class="icon-home"></i> -->
<!--                         <span class="title">抢购</span> -->
<!--                     </a> -->
<!--                 </li> -->
                <!--  <li><a href="">360全景</a></li> -->
                <li>
                    <a href="javascript:;">
                        <i class="icon-bullhorn"></i>
                        <span class="title">任务查看</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="javascript:loc(3)">所有任务</a>
<!--                             <a href="">客服管理</a> -->
<!--                             <a href="">客服评价</a> -->
                        </li>
                    </ul>
                </li>
<!--                 <li> -->
<!--                     <a href="javascript:;"> -->
<!--                         <i class="icon-picture"></i> -->
<!--                         <span class="title">微相册</span> -->
<!--                         <span class="arrow "></span> -->
<!--                     </a> -->
<!--                     <ul class="sub-menu"> -->
<!--                         <li> -->
<!--                             <a href="">创建相册</a> -->
<!--                             <a href="">相册管理</a> -->
<!--                         </li> -->
<!--                     </ul> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href=""> -->
<!--                         <i class="icon-home"></i> -->
<!--                         <span class="title">微官网</span> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="javascript:;"> -->
<!--                         <i class="icon-credit-card"></i> -->
<!--                         <span class="title">微名片</span> -->
<!--                         <span class="arrow "></span> -->
<!--                     </a> -->
<!--                     <ul class="sub-menu"> -->
<!--                         <li> -->
<!--                             <a href="">名片模板</a> -->
<!--                             <a href="">员工列表</a> -->
<!--                         </li> -->
<!--                     </ul> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="javascript:;"> -->
<!--                         <i class="icon-book"></i> -->
<!--                         <span class="title">微杂志</span> -->
<!--                         <span class="arrow "></span> -->
<!--                     </a> -->
<!--                     <ul class="sub-menu"> -->
<!--                         <li> -->
<!--                             <a href="">我的杂志</a> -->
<!--                             <a href="">消息编辑</a> -->
<!--                             <a href="">杂志评论</a> -->
<!--                         </li> -->
<!--                     </ul> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="javascript:;"> -->
<!--                         <i class="icon-group"></i> -->
<!--                         <span class="title">微团购</span> -->
<!--                         <span class="arrow "></span> -->
<!--                     </a> -->
<!--                     <ul class="sub-menu"> -->
<!--                         <li> -->
<!--                             <a href="">商品管理</a> -->
<!--                             <a href="">商品类型管理</a> -->
<!--                             <a href="">商品规格管理</a> -->
<!--                             <a href="">商品属性管理</a> -->
<!--                             <a href="">团购管理</a> -->
<!--                         </li> -->
<!--                     </ul> -->
<!--                 </li> -->
            </ul>
            
            <!-- END SIDEBAR MENU -->
        </div>
        <!-- END SIDEBAR -->
        <!-- BEGIN PAGE -->
        <div class="page-content">
            <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <div id="portlet-config" class="modal hide">
                <div class="modal-header">
                    <button data-dismiss="modal" class="close" type="button"></button>
                    <h3>Widget Settings</h3>
                </div>
                <div class="modal-body">
                    <p>Here will be a configuration form</p>
                </div>
            </div>
            <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <div class="container-fluid">
                <!-- BEGIN PAGE HEADER-->
                <div class="row-fluid">
                    <div class="span12">
                        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                        <h3 class="page-title">

                            <div id="title"></div> <small></small>

                        </h3>
                        <div class="dome_menu">
<!--                             <ul id="bar"> -->
<!--                                 <li class="music"><i class="icon-music"></i><p>音乐</p></li> -->
<!--                                 <li class="picture"><i class="icon-picture"></i> -->
<!--                                     <p>图片</p> -->
<!--                                 </li> -->
<!--                                 <li class="pencil"><i class="icon-pencil"></i> -->
<!--                                     <p>文本</p> -->
<!--                                 </li> -->
<!--                                 <li class="banner"><i class="icon-columns"></i> -->
<!--                                     <p>滚动图</p> -->
<!--                                 </li> -->
<!--                                 <li class="backg"><i class="icon-th-large"></i> -->
<!--                                     <input name='file90' type="file" id="up_FILE90" class="imghide setbg" /> -->
<!--                                     <img src="" onclick="upload(this,90,2)" src="public/media/image/favicon.png" class="setbgimg opalpha" width="40" height="40" /> -->
<!--                                     <p>背景图</p> -->
<!--                                 </li> -->
<!--                             </ul> -->
<!--                             BEGIN FORM -->
<!--                             <div class="savewebsite"> -->
<!--                                 <button onclick="savewebsite()" class="btn blue "><i class="icon-ok"></i>发布</button> -->
<!--                                 <a class=" btn yellow hide alertdome" data-toggle="modal" href="#static">View Demo</a> -->
<!--                             </div> -->
                            <!-- END FORM-->
                        </div>
                        <!-- END PAGE TITLE & BREADCRUMB-->
                    </div>
                </div>
                <!-- END PAGE HEADER-->
                <!-- Begin page-->
                <div class="ui-widget ui-helper-clearfix">
                
                	<!-- 查看员工列表 -->
                	<div id="empList" style="display: none;">
                		<table id="emps" class="table">
                			<tr>
                				<td>编号</td>
                				<td>用户名</td>
                				<td>真实姓名</td>
                				<td>电话</td>
                				<td>操作</td>
                			</tr>
                		</table>
                    </div>
                    
                	<!-- 添加员工账号 -->
                	<div id="addEmpDiv" style="display: none;">
                		用户名：<input name="username" onblur="checkUsername()" id="username"><br />
                		<div id="musername"></div>
                		真实姓名：<input name="realname" id="realname"><br />
                		密码：<input name="pass" id="pass" type="password"><br />
                		电话：<input name="telphone" id="telphone"><br />
                		<div id="maddEmp"></div>
                		<button id="addEmpBtn" onclick="addEmp()">添加</button>
                    </div>
                    
                    <!-- 查看所有任务信息 -->
                	<div id="getAllInfoDiv" style="display: none;">
                   			<table id="infos" class="table">
                			<tr>
                				<td>编号</td>
                				<td>提交人</td>
                				<td>时间</td>
                				<td>内容</td>
                			</tr>
                		</table>
                    </div>
                </div>
<!--                 <div class="ui-widget ui-helper-clearfix"> -->
<!--                     <div class="dome_exp"> -->
<!--                         <div id="website" class="ui-widget-content ui-state-default"> -->
<!--                             dom begin -->
<!--                             <ul id="wraps" class="website ui-helper-reset ui-helper-clearfix"> -->
<!--                             </ul> -->
<!--                             dom end -->
<!--                         </div> -->
<!--                         <div class="datainfo"></div> -->
<!--                     </div> -->
<!--                 </div> -->
                <!-- END page-->
<!--                 <h3>提示</h3> -->
<!--                 <h5>主体js文件地址：public/media/js/website.js</h5> -->
<!--                 <h5>上传图片形式以单击形式上传，图片php控制器:Website.php More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></h5> -->
            </div>
            <!-- END PAGE CONTAINER-->
        </div>
        <!-- end PAGE -->
        <!-- **** -->
        <!-- **** -->
        <!-- === -->
        <div id="static" class="modal hide fade" tabindex="-1" data-backdrop="static" data-keyboard="false">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h3 id="titler"></h3>
            </div>
            <div class="modal-body">
                <p id="contenter"></p>
            </div>
            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn">确定</button>
                <button type="button" data-dismiss="modal" class="btn green">关闭会话</button>
            </div>
        </div>
        <!-- === -->
    </div>
    <!-- END CONTAINER -->
    <!-- BEGIN FOOTER -->
    <!-- END FOOTER -->
    <!-- <script type="text/javascript" src="/media/js/yy_card.js"></script> -->
    <script src="public/media/js/colpick.js"></script>
    <script src="public/media/js/plugin.js"></script>
    <script src="public/media/js/website.js"></script>
    <script src="public/media/js/jquery.upload.js"></script>
    <!--     <script src="/media/js/jquery.rotate.min.js"></script> -->
    <script src="public/swiper/dist/js/swiper.min.js"></script>
    <script>
    jQuery(document).ready(function() {
        App.init();
        UIModals.init();
        // var swiper = new Swiper('.swiper-container');
        $('.datainfo .span12,.loading').hide();
    });


    //上传图片
    function upload(obj, num, b) {
        $.upload({
            // 上传地址
            url: "{:url('user/website/ajax_upload')}",
            // 文件域名字
            fileName: 'file' + num,
            // 其他表单数据
            // 上传完成后, 返回json, text
            dataType: 'json',
            // 上传之前回调,return true表示可继续上传
            onSend: function() {
                return true;
            },
            // 上传之后回调
            onComplate: function(data) {
                if (b == 1) {
                    if (data.errcode == 1) {
                        // alert("上传成功");
                        $(obj).attr('src', data.errmsg);
                    } else {
                        alert("网络错误");
                    }
                } else {
                    $('#wraps').css({
                        'background': 'url(' + data.errmsg + ')  no-repeat',
                        'background-size': '100%',
                    });
                    // $("#containment-wrapper").attr('background','url('+data.errmsg+')');
                }
            }
        });
    }
    //保存

    function savewebsite() {

        var content = $(".dome_exp").html(); //后台元素    
        $("#website .maininfo img").attr('ondblclick', '');
        $('.ui-widget-header,.ui-resizable-handle').remove();
        $('.datahref :text').attr("disabled", "disabled");

        var web = $("#website").html(); //前台展示
        $.ajax({
            url: "{:url('user/website/savewebsite')}",
            type: 'POST',
            data: {
                "web": web,
                'con': content
            },
            dataType: "json",
            success: function(data) {
                if (data == 1) {
                    alert("提示", "保存成功！")
                } else {
                    alert("提示", "保存失败！")
                }
                setTimeout(function() {
                    location = location;
                }, 8000);
            }
        });
    }

    function keepdomafter() {
        play();

        $('.loading').hide();
        $('.ui-resizable-se').nextAll().remove();
        var swiper = new Swiper('.swiper-container', {
            // pagination: '.swiper-pagination',
            // paginationClickable: true,
            // nextButton: '.swiper-button-next',
            // prevButton: '.swiper-button-prev',
            // spaceBetween: 30,
            // effect: 'fade',
            // grabCursor: true,
            // autoplay: 2000,
        });

    }
    
    function getAllEmps(){
    	$.ajax({
			url : "${pageContext.request.contextPath }/employee/getAllEmps.html",
			type : "post",
			cache : false,
			dataType : "text",
			beforeSend : function(datas) {
				//alert("before");
			},
			async : true,
			success : function(datas) {
				var jsons = eval('('+datas+')');
				$("#emps").html("");
				var hTr = "<tr><td>编号</td><td>用户名</td><td>真实姓名</td><td>电话</td><td>操作</td></tr>";
				$("#emps").append(hTr);
				if(jsons.hasData != false){
					$("#emps").append(tr);
					for (var i = 0; i < jsons.length; i++) {
    					var data=jsons[i];
    					var tr="<tr><td>"+(i+1)+"</td><td>"+data.username+"</td><td>"+data.realname+"</td><td>"+data.telphone+"</td><td><a href=\"javascript:deleteEmp('"+data.id+"')\">删除</a></td></tr>"
    					$("#emps").append(tr);
    				}
				}
			},
			error : function() {
				alert("error");
			}
		});
    }
    
    function loc(i){
//     	console.log(i);
    	if(i == 1){
    		getAllEmps();
    		document.getElementById("title").innerText="查看员工列表";
    		document.getElementById("getAllInfoDiv").style.display="none";
    		document.getElementById("addEmpDiv").style.display="none";
    		document.getElementById("empList").style.display="block";
    	}
    	if(i == 2){
    		document.getElementById("title").innerText="添加员工";
    		document.getElementById("getAllInfoDiv").style.display="none";
    		document.getElementById("addEmpDiv").style.display="block";
    		document.getElementById("empList").style.display="none";
    	}
    	if(i == 3){
    		$.ajax({
    			url : "${pageContext.request.contextPath }/info/getAllInfo.html",
    			type : "post",
    			cache : false,
    			dataType : "text",
    			beforeSend : function(datas) {
    				//alert("before");
    			},
    			async : true,
    			success : function(datas) {
    				$("#infos").html("");
    				var hTr = "<tr><td>编号</td><td>提交人</td><td>时间</td><td>内容</td></tr>";
    				$("#infos").append(hTr);
    				var jsons = eval('('+datas+')');
    				for (var i = 0; i < jsons.length; i++) {
    					var data=jsons[i];
    					var tr="<tr><td>"+(i+1)+"</td><td>"+data.employee.username+"</td><td>"+data.subTime+"</td><td>"+data.content+"</td></tr>"
    					$("#infos").append(tr);
    				}
    			},
    			error : function() {
    				alert("error");
    			}
    		});
    		document.getElementById("title").innerText="查看任务信息";
    		document.getElementById("getAllInfoDiv").style.display="block";
    		document.getElementById("addEmpDiv").style.display="none";
    		document.getElementById("empList").style.display="none";
    	}
    }
    
    function loginOut(id){
    	location.href="admin/exit.html?id="+id;
    }
    
    function addEmp(){
    	var username = document.getElementById("username").value;
    	var realname = document.getElementById("realname").value;
    	var pass = document.getElementById("pass").value;
    	var telphone = document.getElementById("telphone").value;
    	var param = "username="+username+"&realname="+realname+"&pass="+pass+"&telphone="+telphone;
    	$.ajax({
			url : "${pageContext.request.contextPath }/employee/register.html",
			data : param,
			type : "post",
			cache : false,
			dataType : "text",
			beforeSend : function(datas) {
				//alert("before");
			},
			async : true,
			success : function(datas) {
				var json = eval('('+datas+')');
				$("#maddEmp").text(json.message);
			},
			error : function() {
				alert("error");
			}
		});
    }
    
    function updateEmp(){
    	var eid = document.getElementById("hEmpId").value;
    	var username = document.getElementById("username").value;
    	var realname = document.getElementById("realname").value;
    	var telphone = document.getElementById("telphone").value;
    	var param = "id="+eid+"&username="+username+"&realname="+realname+"&telphone="+telphone;
    	$.ajax({
			url : "${pageContext.request.contextPath }/employee/updateEmp.html",
			data : param,
			type : "post",
			cache : false,
			dataType : "text",
			beforeSend : function(datas) {
				//alert("before");
			},
			async : true,
			success : function(datas) {
				var json = eval('('+datas+')');
				$("#meditinfo").text(json.message);
			},
			error : function() {
				alert("error");
			}
		});
    }
    
    function deleteEmp(id){
    	if(confirm("确认删除该员工?")){
    		var param = "id="+id;
    		$.ajax({
    			url : "${pageContext.request.contextPath }/employee/deleteEmp.html",
    			data : param,
    			type : "post",
    			cache : false,
    			dataType : "text",
    			beforeSend : function(datas) {
    				//alert("before");
    			},
    			async : true,
    			success : function(datas) {
    				var json = eval('('+datas+')');
    				if(json.success){
	    				alert("删除成功!");
    				}else{
    					alert("删除失败!");
    				}
    				getAllEmps();
    			},
    			error : function() {
    				alert("error");
    			}
    		});
    	}
    }
    
    function checkUsername(){
		var username = document.getElementById("username").value;
		var param = "username="+username;
		if(username != ""){
			$.ajax({
				url : "${pageContext.request.contextPath }/employee/checkUsername.html",
				data : param,
				type : "post",
				cache : false,
				dataType : "text",
				beforeSend : function(datas) {
					//alert("before");
				},
				async : true,
				success : function(datas) {
					var json = eval('('+datas+')');
					document.getElementById("musername").innerText=json.message;
				},
				error : function() {
					alert("error");
				}
			});
		}else{
			document.getElementById("musername").innerText="用户名不能为空!";
		}
	}
    </script>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>
