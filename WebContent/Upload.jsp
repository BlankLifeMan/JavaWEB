<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>使用html5 FileReader获取图片并预览，并异步上传到服务器(not iframe)</title>
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
<body>
<img id="preview" style="width: 100px;height: 100px"/>
<form action="UploadServlet" method="post" enctype="multipart/form-data">
<br />
<input type="file" name="file" accept="image/png,image/gif" id="imgFile" onchange="imgPreview(this)" />
<br/>
 <input type="submit" value="上传">
</form>

<p id="showimg"></p>
</body>
<script type="text/javascript" src="../Public/js/jquery.min.js"></script>
</html>