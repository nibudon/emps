<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>管理员主页</title>
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
<input type="hidden" id="hAdminId" value="${currentadmin.id }">
<table width="100%" height="600px" border="1">
    <tr>
        <td align="center" height="50" width="300px;"><div id="title"></div></td>
        <td align="center">管理员主页</td>
        <td align="center" width="300px;">${currentadmin.username }  <a href="javascript:loginOut('${currentadmin.id }')"><i class="icon-key"></i> 退出</a></td>
    </tr>
    <tr>
        <td height="50" align="center"><a href="javascript:loc(1)">员工列表</a></td>
        <td colspan="2" rowspan="6" align="left" valign="top">
            <div style="width: 100%; height: 100%; overflow: scroll;">
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

                <!-- 查看取出任务信息 -->
                <div id="getOutInfoDiv" style="display: none;">
                    &nbsp;&nbsp;&nbsp;<input name="search1" id="search1"/>&nbsp;&nbsp;<a href="javascript:search1()">搜索</a>&nbsp;&nbsp;&nbsp;
                    <table id="outInfos" class="table">
                        <tr>
                            <td>编号</td>
                            <td>提交人</td>
                            <td>时间</td>
                            <td>内容</td>
                        </tr>
                    </table>
                </div>

                <!-- 查看所有任务信息 -->
                <div id="getAllInfoDiv" style="display: none;">
                    &nbsp;&nbsp;&nbsp;<input name="search2" id="search2"/>&nbsp;&nbsp;<a href="javascript:search2()">搜索</a>&nbsp;&nbsp;&nbsp;
                    <a href="javascript:outChecks()">取出选中任务</a>
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
        </td>
    </tr>
    <tr>
        <td height="50" align="center"><a href="javascript:loc(2)">添加员工</a></td>
    </tr>
    <tr>
        <td height="50" align="center"><a href="javascript:loc(4)">取出任务</a></td>
    </tr>
    <tr>
        <td height="50" align="center"><a href="javascript:loc(3)">所有任务</a></td>
    </tr>
    <tr>
        <td height="50" align="center"><a href="javascript:void(0)">更多~</a></td>
    </tr>
    <tr>
        <td align="center"></td>
    </tr>
</table>

<script type="text/javascript">
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
            document.getElementById("getOutInfoDiv").style.display="none";
        }
        if(i == 2){
            document.getElementById("title").innerText="添加员工";
            document.getElementById("getAllInfoDiv").style.display="none";
            document.getElementById("addEmpDiv").style.display="block";
            document.getElementById("empList").style.display="none";
            document.getElementById("getOutInfoDiv").style.display="none";
        }
        if(i == 3){
            getAllInfos();
            document.getElementById("title").innerText="查看任务信息";
            document.getElementById("getAllInfoDiv").style.display="block";
            document.getElementById("addEmpDiv").style.display="none";
            document.getElementById("empList").style.display="none";
            document.getElementById("getOutInfoDiv").style.display="none";
        }
        if(i == 4){
            getOutInfos();
            document.getElementById("title").innerText="已取出信息";
            document.getElementById("getAllInfoDiv").style.display="none";
            document.getElementById("addEmpDiv").style.display="none";
            document.getElementById("empList").style.display="none";
            document.getElementById("getOutInfoDiv").style.display="block";
        }
    }

    function loginOut(id){
        location.href="admin/exit.html?id="+id;
    }

    function getAllInfos(){
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
                var hTr = "<tr><td>&nbsp;&nbsp;&nbsp;全选/全不选<input onclick='checkAlls()' id='checkAll' type='checkbox'>&nbsp;&nbsp;编号</td><td>提交人</td><td>时间</td><td>内容</td><td>状态</td><td>操作</td></tr>";
                $("#infos").append(hTr);
                var jsons = eval('('+datas+')');
                for (var i = 0; i < jsons.length; i++) {
                    var data=jsons[i];
                    var status = "未取出";
                    var ops = "<a href=\"javascript:getOut('"+data.id+"')\">取出</a>";
                    if(data.isOut=="1"){
                        status = "已取出";
                        ops = "取出";
                    }
                    var tr="<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name='checkId' value=\""+data.id+"\" type='checkbox'>&nbsp;&nbsp;"+(i+1)+"</td><td>"+data.employee.realname+"</td><td>"+data.subTime+"</td><td>"+data.content+"</td><td>"+status+"</td><td>"+ops+"</td></tr>"
                    $("#infos").append(tr);
                }
            },
            error : function() {
                alert("error");
            }
        });
    }

    function addEmp(){
        var username = document.getElementById("username").value;
        var realname = document.getElementById("realname").value;
        var pass = document.getElementById("pass").value;
        var telphone = document.getElementById("telphone").value;
        var param = "username="+username+"&realname="+realname+"&pass="+pass+"&telphone="+telphone;
        $.ajax({
            url : "${pageContext.request.contextPath }/employee/addEmp.html",
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
                if(json.success==true){
                    document.getElementById("username").value="";
                    document.getElementById("realname").value="";
                    document.getElementById("pass").value="";
                    document.getElementById("telphone").value="";
                }
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

    function search1(){
        var key = $("#search1").val();
        var param = "key="+key;
        $.ajax({
            url : "${pageContext.request.contextPath }/info/searchInfo.html",
            type : "post",
            cache : false,
            data : param,
            dataType : "text",
            beforeSend : function(datas) {
                //alert("before");
            },
            async : true,
            success : function(datas) {
                $("#outInfos").html("");
                var hTr = "<tr><td>&nbsp;&nbsp;&nbsp;编号</td><td>提交人</td><td>时间</td><td>内容</td></tr>";
                $("#outInfos").append(hTr);
                var jsons = eval('('+datas+')');
                for (var i = 0; i < jsons.length; i++) {
                    var data=jsons[i];
                    var tr="<tr><td>&nbsp;&nbsp;&nbsp;"+(i+1)+"</td><td>"+data.employee.realname+"</td><td>"+data.subTime+"</td><td>"+data.content+"</td></tr>"
                    $("#outInfos").append(tr);
                }
            },
            error : function() {
                alert("error");
            }
        });
    }

    function search2(){
        var key = $("#search2").val();
        var param = "key="+key;
        $.ajax({
            url : "${pageContext.request.contextPath }/info/searchInfo.html",
            type : "post",
            cache : false,
            data : param,
            dataType : "text",
            beforeSend : function(datas) {
                //alert("before");
            },
            async : true,
            success : function(datas) {
                $("#infos").html("");
                var hTr = "<tr><td>&nbsp;&nbsp;&nbsp;全选/全不选<input onclick='checkAlls2()' id='checkAll2' type='checkbox'>&nbsp;&nbsp;编号</td><td>提交人</td><td>时间</td><td>内容</td><td>状态</td><td>操作</td></tr>";
                $("#infos").append(hTr);
                var jsons = eval('('+datas+')');
                for (var i = 0; i < jsons.length; i++) {
                    var data=jsons[i];
                    var status = "未取出";
                    var ops = "<a href=\"javascript:getOut('"+data.id+"')\">取出</a>";
                    if(data.isOut=="1"){
                        status = "已取出";
                        ops = "取出";
                    }
                    var tr="<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name='checkId2' value=\""+data.id+"\" type='checkbox'>&nbsp;&nbsp;"+(i+1)+"</td><td>"+data.employee.realname+"</td><td>"+data.subTime+"</td><td>"+data.content+"</td><td>"+status+"</td><td>"+ops+"</td></tr>"
                    $("#infos").append(tr);
                }
            },
            error : function() {
                alert("error");
            }
        });
    }

    function outChecks(){
        var chs = document.getElementsByName("checkId");
        var chs1 = document.getElementsByName("checkId2");
        var infoIds="";
        if(chs.length>0){
            for (var i = 0;i<chs.length;i++){
                if(chs[i].checked){
                    infoIds+=chs[i].value;
                    infoIds+=",";
                }
            }
        }

        if(chs1.length>0){
            for (var i = 0;i<chs1.length;i++){
                if(chs1[i].checked){
                    infoIds+=chs1[i].value;
                    infoIds+=",";
                }
            }
        }
        var param = "infoIds="+infoIds;
        $.ajax({
            url : "${pageContext.request.contextPath }/info/outInfo.html",
            type : "post",
            cache : false,
            data : param,
            dataType : "text",
            beforeSend : function(datas) {
                //alert("before");
            },
            async : true,
            success : function(datas) {
                var jsons = eval('('+datas+')');
                alert(jsons.message);
                getAllInfos();
            },
            error : function() {
                // alert("error");
            }
        });
    }

    function getOut(id){
        var param = "infoIds="+id;
        $.ajax({
            url : "${pageContext.request.contextPath }/info/outInfo.html",
            type : "post",
            cache : false,
            data : param,
            dataType : "text",
            beforeSend : function(datas) {
                //alert("before");
            },
            async : true,
            success : function(datas) {
                var jsons = eval('('+datas+')');
                alert(jsons.message);
                getAllInfos();
            },
            error : function() {
                // alert("error");
            }
        });
    }


    function getOutInfos() {
        $.ajax({
            url : "${pageContext.request.contextPath }/info/getOutInfos.html",
            type : "post",
            cache : false,
            dataType : "text",
            beforeSend : function(datas) {
                //alert("before");
            },
            async : true,
            success : function(datas) {
                $("#outInfos").html("");
                var hTr = "<tr><td>&nbsp;&nbsp;&nbsp;编号</td><td>提交人</td><td>时间</td><td>内容</td></tr>";
                $("#outInfos").append(hTr);
                var jsons = eval('('+datas+')');
                for (var i = 0; i < jsons.length; i++) {
                    var data=jsons[i];
                    var tr="<tr><td>&nbsp;&nbsp;&nbsp;"+(i+1)+"</td><td>"+data.employee.realname+"</td><td>"+data.subTime+"</td><td>"+data.content+"</td></tr>"
                    $("#outInfos").append(tr);
                }
            },
            error : function() {
                alert("error");
            }
        });
    }

    function checkAlls(){
        var all = document.getElementById("checkAll");
        var chs = document.getElementsByName("checkId");
        for (var i= 0; i<chs.length;i++){
            chs[i].checked=all.checked;
        }
    }

    function checkAlls1(){
        var all = document.getElementById("checkAll1");
        var chs = document.getElementsByName("checkId1");
        for (var i= 0; i<chs.length;i++){
            chs[i].checked=all.checked;
        }
    }

    function checkAlls2(){
        var all = document.getElementById("checkAll2");
        var chs = document.getElementsByName("checkId2");
        for (var i= 0; i<chs.length;i++){
            chs[i].checked=all.checked;
        }
    }


    document.getElementById("search1").oninput = function() {search1()};

    document.getElementById("search2").oninput = function() {search2()};

</script>
</body>
</html>
