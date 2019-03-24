<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>员工主页</title>
    <style type="text/css">
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }
    </style>
</head>
<script type="text/javascript" src="jquery-3.2.1.min.js"></script>

<link href="/js/bootstrap.min.js" rel="stylesheet" type="text/css">
<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<body>
<input type="hidden" id="hEmpId" value="${currentemp.id }">
<table width="100%" height="600px" border="1">
    <tr>
        <td align="center" height="50" width="300px;"><div id="title"></div></td>
        <td align="center">员工主页</td>
        <td align="center" width="300px;">${currentemp.realname }  <a href="javascript:loginOut('${currentemp.id }')"><i class="icon-key"></i> 退出</a></td>
    </tr>
    <tr>
        <td height="50" align="center"><a href="javascript:loc(1)">个人信息</a></td>
        <td colspan="2" rowspan="5" align="left" valign="top">
            <div style="width: 100%; height: 100%; overflow: scroll;">
                <!-- 查看我的任务 -->
                <div id="readMyInfo" style="display: none;">
                    <table id="myInfos" class="table">
                        <tr>
                            <td>编号</td>
                            <td>时间</td>
                            <td>内容</td>
                        </tr>
                    </table>
                </div>

                <!-- 提交任务 -->
                <div id="subInfo" style="display: none;">
                    <div style="display: inline; font-size: 16px;">内容:</div><input id="content" name="content" style="width: 500px; height: 30px;"><br />
                    <div id="msubinfo"></div>
                    <button onclick="subInfo()">提交</button>
                </div>

                <!-- 个人信息 -->
                <div id="updateEmp" style="display: none;">
                    <input type="hidden" name="id" value="${currentemp.id }">
                    用户名：<input name="username" id="username"><br />
                    真实姓名：<input name="realname" id="realname"><br />
                    电话：<input name="telphone" id="telphone"><br />
                    <div id="meditinfo"></div>
                    <button id="updateBtn" onclick="updateEmp()">修   改</button>
                </div>
            </div>
        </td>
    </tr>
    <tr>
        <td height="50" align="center"><a href="javascript:loc(2)">填写任务</a></td>
    </tr>
    <tr>
        <td height="50" align="center"><a href="javascript:loc(3)">我的任务</a></td>
    </tr>
    <tr>
        <td height="50" align="center"><a href="javascript:void(0)">更多~</a></td>
    </tr>
    <tr>
        <td align="center">&nbsp;</td>
    </tr>

</table>

<script type="text/javascript">
    function loc(i){
//     	console.log(i);
        if(i == 1){
            checkLogin();
            var eid = document.getElementById("hEmpId").value;
            var param = "id="+eid;
            $.ajax({
                url : "${pageContext.request.contextPath }/employee/editEmp.html",
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
                    document.getElementById("username").value=json.username;
                    document.getElementById("realname").value=json.realname;
                    document.getElementById("telphone").value=json.telphone;
                },
                error : function() {
                    alert("error");
                }
            });
            document.getElementById("title").innerText="查看我的信息";
            document.getElementById("readMyInfo").style.display="none";
            document.getElementById("subInfo").style.display="none";
            document.getElementById("updateEmp").style.display="block";
        }
        if(i == 2){
            checkLogin();
            $("#msubinfo").text("");
            document.getElementById("title").innerText="填写任务";
            document.getElementById("readMyInfo").style.display="none";
            document.getElementById("subInfo").style.display="block";
            document.getElementById("updateEmp").style.display="none";
        }
        if(i == 3){
            checkLogin();
            var eid = document.getElementById("hEmpId").value;
            var param = "id="+eid;
            $.ajax({
                url : "${pageContext.request.contextPath }/info/getMyInfos.html",
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
                    $("#myInfos").html("");
                    var hTr = "<tr><td>&nbsp;&nbsp;&nbsp;编号</td><td>时间</td><td>内容</td></tr>";
                    $("#myInfos").append(hTr);
                    for (var i = 0; i < json.length; i++) {
                        var data = json[i];
                        var tr = "<tr><td>&nbsp;&nbsp;&nbsp;"+(i+1)+"</td><td>"+data.subTime+"</td><td>"+data.content+"</td></tr>";
                        $("#myInfos").append(tr);
                    }
                },
                error : function() {
                    alert("error");
                }
            });
            document.getElementById("title").innerText="查看我的任务";
            document.getElementById("readMyInfo").style.display="block";
            document.getElementById("subInfo").style.display="none";
            document.getElementById("updateEmp").style.display="none";
        }
    }

    function loginOut(id){
        location.href="employee/exit.html?id="+id;
    }

    function subInfo(){
        var eid = document.getElementById("hEmpId").value;
        var content = document.getElementById("content").value;
        var param = "eid="+eid+"&content="+content;
        $.ajax({
            url : "${pageContext.request.contextPath }/info/subInfo.html",
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
                    $("#msubinfo").text(json.message);
                    document.getElementById("content").value="";
                }else{
                    $("#msubinfo").text(json.message);
                }
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

    function checkLogin(){
        var eid = document.getElementById("hEmpId").value;
        if(eid == ""){
            location.href="login.jsp";
        }
    }
</script>
</body>
</html>

