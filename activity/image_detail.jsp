<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>图片详情</title>
<meta name="description" content="Your Image page description"/>
<link href="https://fonts.googleapis.com/css?family=Arimo:400,600,700" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link rel="shortcut icon" type="image/png" href="images/logo/camera.png">
<link href="styles/main.css" rel="stylesheet">
</head>
<body id="top">
<div class="page">
    <header>
        <div style="background-color:#F8F3F3">
        </div>
        <div class="pp-header">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container"><a href="index.html"><img src="../images/logo/PA@small.png" class="navbar-brand"></a><a class="navbar-brand" href="index.html">西瓜像素</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item"><a class="nav-link" href="picture.jsp">活动首页</a></li>
                            <!--
                  <li class="nav-item"><a class="nav-link" href="about.html">About</a>
                  </li>
--> 
                            <!--<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a>
                  </li>--> 
                            <!--
                  <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
                  </li>
-->
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <div class="page-content">
        <div class="container">
            <div class="container pp-section">
                <div class="h3 font-weight-normal">摄影学会2019迎新报名</div>
                <img class="img-fluid mt-4" src="images/contents/display/image-detail.jpg"/>
                <div class="row mt-5">
                    <div class="col-md-3">
                        <div class="h5">Tags</div>
                        <a class="mr-1 badge badge-primary" href="#">培训</a>
                        <div class="h5 pt-4">Year</div>
                        <p>2019</p>
                    </div>
                    <div class="col-md-9">
                        <p>摄影学会招新文案</p>
                        <p>here</p>
						<br>
						<br>
						<form action="../getRegister" method="post" onsubmit="return check()">
							姓名：<input id="name" type="text" name="name"/><br><br>
							学号：<input id="number" type="text" name="number" /><br><br>
							学院：<input id="department" type="text" name="department"><br><br>
							邮箱：<input id="email" type="email" name="email"><br><br>
							<input type="submit" value="提交" class="btn btn-primary" style="margin-left: 111px"/>
						</form>
                    </div>
                </div>
            </div>
            <div class="pp-section"></div>
        </div>
    </div>
    <footer class="pp-footer">
        <div class="container py-5">
            <div class="row text-center">
                <div class="col-md-12"><a class="pp-facebook btn btn-link" href="#"><i class="fa fa-facebook fa-2x " aria-hidden="true"></i></a><a class="pp-twitter btn btn-link " href="#"><i class="fa fa-twitter fa-2x " aria-hidden="true"></i></a><a class="pp-google-plus btn btn-link" href="#"><i class="fa fa-google-plus fa-2x" aria-hidden="true"></i></a><a class="pp-instagram btn btn-link" href="#"><i class="fa fa-instagram fa-2x " aria-hidden="true"></i></a></div>
                <div class="col-md-12">
                    <p class="mt-3">Copyright &copy; 2019 NWPU Photography Association. All rights reserved.</p>
                </div>
            </div>
        </div>
    </footer>
</div>
<script src="js/jquery-3.2.1.min.js"></script> 
<script src="js/popper.min.js"></script> 
<script src="js/bootstrap.js"></script> 
<script src="scripts/main.js"></script>
<script type="text/javascript">
	
	function check(){
		if($("#name").val() == ""){
			alert('输入姓名');
			return false;
		}
		if($("#number").val() == ""){
			alert('输入学号');
			return false;
		}
		if($("#department").val() == ""){
			alert('输入学院');
			return false;
		}
		if($("#email").val() == ""){
			alert('输入邮箱');
			return false;
		}
		alert('提交成功');
		return true;
	}
</script>
</body>
</html>