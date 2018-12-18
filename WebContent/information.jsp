
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="./css/Demo3.css" type="text/css">
    <title> 选项卡</title>
    <script type="text/javascript">
        // JS实现选项卡切换
        window.onload = function(){
            var myTab = document.getElementById("tab");    //整个div
            var myUl = myTab.getElementsByTagName("ul")[0];//一个节点
            var myLi = myUl.getElementsByTagName("li");    //数组
            var myDiv = myTab.getElementsByTagName("div"); //数组

            for(var i = 0; i<myLi.length;i++){
                myLi[i].index = i;
                myLi[i].onclick = function(){
                    for(var j = 0; j < myLi.length; j++){
                        myLi[j].className="off";
                        myDiv[j].className = "hide";
                    }
                    this.className = "on";
                    myDiv[this.index].className = "show";
                }
            }
        }
    </script>
    <script type="text/javascript">
        function imgPreview(fileDom){
            //判断是否支持FileReader
            if (window.FileReader) {
                var reader = new FileReader();
            } else {
                alert("您的设备不支持图片预览功能，如需该功能请升级您的设备！");
            }

            //获取文件
            var file = fileDom.files[0];
            var imageType = /^image\//;
            //是否是图片
            if (!imageType.test(file.type)) {
                alert("请选择图片！");
                return;
            }
            //读取完成
            reader.onload = function(e) {
                //获取图片dom
                var img = document.getElementById("preview");
                //图片路径设置为读取的图片
                img.src = e.target.result;

                // ajax 上传图片
                $.post("upload_h5.php", {img: e.target.result}, function(ret) {
                    if (ret.img!='') {
                        alert('upload success');
                        $('#showimg').html('<img src="' + ret.img + '">');
                    } else {
                        alert('upload fail');
                    }
                },'json');
            };
            reader.readAsDataURL(file);
        }
    </script>
</head>
 <body class="e">
<div class="g">

</div>
<div class="b">
    <img src='./img/${img}' style="width:110px ;height: 80px" />

    <!-- HTML页面布局 -->

    <div id = "tab">
        <ul>
            <a href="a:link">
                <a href="##"> <li class="on" style="border-radius:9px;">基本信息</li></a>
                <a href="##"> <li class="off" style="border-radius:9px;">工作经历</li></a>
                <a href="##"> <li class="off" style="border-radius:9px;">教育经历</li></a>
                <a href="##"> <li class="off" style="border-radius:9px;">修改头像</li></a>
                <a href="##"> <li class="off" style="border-radius:9px;">情感经历</li></a>
            </a>

        </ul>
        <div class="table">
            <form action="PersonalServlet" method="post" name="Information_modification">
                <table>
                    <tr>
                        <td align="right"> 姓名:</td>
                        <td align="left">
                            <input type="text" name="name" style="border-radius:9px;" value="${info.fullname}">
                        </td>
                        <td align="right"> 个人网站:</td>
                        <td align="left" >
                            <input type="text" name="Student_ID" style="border-radius:9px;" value="${info.personalWebsite}">
                        </td>
                    </tr>
                    <tr>
                        <td align="right"> 证件类型:</td>
                        <td align="left">
                            <input type="text" name="Document_type" style="border-radius:9px;" value="${info.documentType }">
                        </td>
                        <td align="right"> 证件号:</td>
                        <td align="left"   >

                            <input type="text" name="ID_number" style="border-radius:9px;" value="${info.idcard }">
                        </td>
                    </tr>
                    <tr>
                        <td align="right">性别:</td>
                        <td align="left">
                            <select name="sex" style="border-radius:9px; width: 350px;height:35px " value="${info.gender }">
                                <option value="男">男</option>
                                <option value="女">女</option>
                            </select>
                        </td>
                        <td align="right">手机号:</td>
                        <td align="left"  >
                            <input type="text" name="Cell_phone_number" style="border-radius:9px;" value="${user.phonenumber }">
                        </td>
                    </tr>
                    <tr>
                        <td align="right">出生日期:</td>
                        <td align="left">
                            <input type="text" name="Date_of_birth" style="border-radius:9px;" value="${info.birthdate }">
                        </td>
                        <td align="right">邮箱:</td>
                        <td align="left"  >
                            <input type="email" name="mailbox" style="border-radius:9px;" value="${user.mailbox }">
                        </td>
                    </tr>
                    <tr>
                        <td align="right">  Q&nbsp;Q</td>
                        <td align="left">
                            <input type="text" name="QQ" style="border-radius:9px;" value="${info.qq}">
                        </td>
                       
                    </tr>
                    <tr>
                        <td align="right"><spen >个人简介:</spen></td>
                        <td colspan="4">
                        <textarea name="Personal_profile" cols="115" rows="4"  style="border-radius:9px;" >
                        ${info.personalProfile }
                        </textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center">
                            <input type="submit" value="保存" name="Preservation" style="border-radius:9px;">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="hide">
            <form action="workServlet" method="post" name="Information_modification">
                <table>
                    <tr>
                        <td align="right">公司名称:</td>
                        <td align="left">
                            <input type="text" name="Corporate_name" style="border-radius:9px;" value="${work.corporateName}">
                        </td>
                        <td align="right">职位头衔:</td>
                        <td align="left" >
                            <input type="text" name="Position_title" style="border-radius:9px;" value="${work.positionTitle}">
                        </td>
                    </tr>
                    <tr>
                        <td align="right">工作城市:</td>
                        <td align="left">
                            <input type="text" name="Work_city" style="border-radius:9px;" value="${work.workCity}">
                        </td>
                        <td align="right">工作时间:</td>
                        <td align="left">

                            <input type="text" name="Working_hours" style="border-radius:9px;" value="${work.workingHours}">
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><span>相关技术:</span></td>
                        <td colspan="4">
                        <textarea name="Related_technology" cols="115" rows="4"  style="border-radius:9px;" value="${work.technology }">

                        </textarea>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><span>职位描述:</span></td>
                        <td colspan="4">
                        <textarea name="Position_describe" cols="115" rows="4"  style="border-radius:9px;" value="${work.positionDescribe}">

                        </textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center">
                            <input type="submit" value="保存" name="Preservation" style="border-radius:9px;">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div class = "hide">
            <form action="EducationServlet" method="post" name="Information_modification">
                <table>
                    <tr>
                        <td align="right"> 学院名称:</td>
                        <td align="left">
                            <input type="text" name="School_name" style="border-radius:9px;" value="${edu.schoolName}">
                        </td>
                        <td align="right"> 所学专业:</td>
                        <td align="left">
                            <input type="text" name="Major_studied" style="border-radius:9px;" value="${edu.majorStudied}">
                        </td>
                    </tr>
                    <tr>
                        <td align="right"> 入学时间:</td>
                        <td align="left">
                            <input type="text" name="Admission_time" style="border-radius:9px;" value="${edu.admissionTime}">
                        </td>
                        <td align="right"> 学历:</td>
                        <td align="left">

                            <input type="text" name="Education" style="border-radius:9px;" value="${edu.education}">
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><spen >相关技术:</spen></td>
                        <td colspan="4">
                        <textarea name="Related_skills" cols="115" rows="4"  style="border-radius:9px;" value="${edu.relatedSkils}">

                        </textarea>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><spen >取得成就:</spen></td>
                        <td colspan="4">
                        <textarea name="Achievements" cols="115" rows="4" style="border-radius:9px;" value="${edu.achievements}">

                        </textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center">
                            <input type="submit" value="保存" name="Preservation" style="border-radius:9px;" >
                        </td>
                    </tr>
                </table>
            </form>
        </div>


        <div class="hide">
            <img id="preview" style="width: 100px;height: 100px"/>
            <form action="UploadServlet" method="post">
                <br />
                <input type="file" name="file" accept="image/png,image/gif" id="imgFile" onchange="imgPreview(this)" />
                <br/>
                <input type="submit" value="上传">
                <br />
            </form>
            <p id="showimg"></p>
        </div>
        <div class = "hide">
            <form action="##" method="post" name="Information_modification">
                <table>
                	<tr>
                    <td align="right"><span>情感经历:</span></td>
                    <td colspan="4">
                        <textarea name="Personal_profile" cols="115" rows="4" style="border-radius:9px; height: 300px" value="${info.qq}">

                        </textarea>
                    </td>
                    </tr>
                </table>
            </form>

        </div>
    </div>

</div>

</body>
</html>