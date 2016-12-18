<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Đăng nhập</title>
     <!--REQUIRED STYLE SHEETS-->
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- VEGAS STYLE CSS -->
    <link href="assets/scripts/vegas/jquery.vegas.min.css" rel="stylesheet" />
       <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
     <!-- GOOGLE FONT -->
     <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
     <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
    </head>
<body>
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
    <script>
      var demoApp = angular.module('demoApp',[])
  .controller( "RegisterCtrl",['$scope', function($scope) {
    $scope.success=false;
        $scope.register = function(){
          $scope.success=true;
        }
    }]);
    </script>
 
    <!--Header section  -->
    <div class="container" id="home">
        <div class="row text-center">
      <div class="col-md-12" >
          <h1 class="head-main">  HỌC MỌI NƠI</h1>
           <h2 class="head-sub-main"> Trải nghiệm cảm giác mới</h2>
          <h3 class="head-last"> Thầy cô, bạn bè khắp mọi nơi </h3>
         
          </div>
          

            </div>

      </div>
    <!--End Header section  -->

     <!-- Navigation -->
      <nav class="navbar-inverse" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp"></a>
            </div>
            <!-- Collect the nav links for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse navbar-right">
                <ul class="nav navbar-nav">
                    <li><a href="index.jsp">TRANG CHỦ</a>
                    </li>                   
                    <li><a href="GioiThieu.jsp">GIỚI THIỆU</a>
                    </li>
                    <li><a href="#contact">LIÊN HỆ</a></li>
                     <li style="background:#2ba560"><a href="dangnhap.jsp">ĐĂNG NHẬP</a>
                        </li>
                         <li ><a href="dangky.jsp">ĐĂNG Ký</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav> 
     <!--End Navigation -->

    <!--About Section-->
    <section class="for-full-back padding-top" id="contact-sec" style="padding-bottom:50px;margin-top:50px;background:#000000">
        <p class="text-center"> <img src="assets/img/logo1.png" alt=""></p>
        <h2 class="text-center" style="color:white">LOGIN !</h2>
        <div class="row">
        <div class="col-md-6 col-md-offset-3">                   
                     <div id="main" ng-app="demoApp" ng-controller="RegisterCtrl">
    <form class="form-horizontal" name="form" action="logindb.jsp" ng-submit="register()" novalidate>
    
        <div class="form-group">
        
        <label for="fullname" class="col-xs-3 control-label required">Họ và tên</label>
        <div class="col-xs-9">
            <input id="fullname" name="fullname" type="text" class="form-control" placeholder="Họ và tên"  ng-model="fullname"  ng-minlength="6" ng-maxlength="50"  required>
            <i class="fa fa-check text-success" ng-show="form.fullname.$dirty && form.fullname.$valid"></i>
            <div ng-show="form.fullname.$dirty && form.fullname.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
            <span ng-show="form.fullname.$error.required">Tài khoản không được bỏ trống</span>
            <span ng-show="form.fullname.$error.minlength">Tài khoản phải dài hơn 6 kí tự</span>
            <span ng-show="form.fullname.$error.maxlength">Tài khoản phải ngắn hơn 50 kí tự</span>
            
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-xs-3 control-label required">Mật khẩu</label>
        <div class="col-xs-9">
            <input id="password" name="password" ng-model="password" type="password" value="" class="form-control" placeholder="Mật khẩu" ng-minlength="6" ng-maxlength="30" required>
            <i class="fa fa-check text-success" ng-show="form.password.$dirty && form.password.$valid"></i>
            <div ng-show="form.password.$dirty && form.password.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
            <span ng-show="form.password.$error.required">Mật khẩu không được bỏ trống</span>
            <span ng-show="form.password.$error.minlength">Mật khẩu phải dài hơn 6 kí tự</span>
            <span ng-show="form.password.$error.maxlength">Mật khẩu phải ngắn hơn 30 kí tự</span>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-3 col-xs-9">
            <div class="form-group">

    	<div class="col-sm-offset-3 col-xs-9">
    	    	 <form>
    <label class="radio-inline">
      <input type="radio" name="optradio" checked="checked" value="1"> Học Viên
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio" checked="checked" value="2"> Giảng Viên
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio" checked="checked" value ="3">Admin
    </label>
  </form>
    	</div>
    </div>
            <button type="submit" class="login" ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)">login <i class="fa fa-sign-in"></i></button>
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-3 col-xs-9">
            
        </div>
    </div>
</form>
</div>
<div class="col-sm-offset-3 col-xs-9">
                                <div class="clearfix"></div>
                                 <form action="forgotemail.jsp" method="post" id="logFrm1" class="log-frm" name="logFrm1"> 
                                <ul>                                    
                                    <li>
                                        <a class="for-got" onclick="ayantoggle();" href="javascript:;">Forgot your password?</a>
                                        <div class="forgot">
                                        <ul>                                          
                                        <li><p>Enter your Email Address here to receive a link to change password.</p></li>
                                        <li>Email Id</li>
                                        <li><input type="text" placeholder="Your email id" id="forgetemailId" class="form-control" name="forgetemailId"></li>
                                        <li><button type="submit" class="btn btn-default" >Send Mail</button></li>
                                    </ul> 
                                </div>
                            </li>
                        </ul>
                 </form>
</div>
        </div>
        </div>
    </section>
      <!--End Pricing Section -->

       
    <!-- Contact Section -->  
    <section class="for-full-back color-light " id="contact"  >
   <div class="container" >      
        
        
        <div class="row" >
            <div class="col-md-8 contact-cls" >
                <h3>Liên hệ với chúng tôi</h3>
					<div >
						<span><i class="fa fa-home"> </i> Address: Ho Chi Minh City</span>
                        <br />
						<span><i class="fa fa-phone"> </i> Phone: 01265108839</span>
                        <br />
						<span><i class="fa fa-envelope-o"> </i>E-Mail: 14110220@student.hcmute.edu.vn || 14110094@student.hcmute.edu.vn </span>
                        <br />
					</div>
					<br />
					<div id="social-icon">
						<a href="#"><i class="fa fa-facebook fa-2x"></i></a>
						<a href="#"><i class="fa fa-twitter fa-2x"></i></a>
						<a href="#"><i class="fa fa-linkedin fa-2x"></i></a>
						<a href="#"><i class="fa fa-google-plus fa-2x"></i></a>
						<a href="#"><i class="fa fa-pinterest fa-2x"></i></a>					
					</div>
            </div>
                <div class="col-md-7">
                </div>
                
            </div>
      </div>
</section>
<!--End Contact Section -->
    <!--footer Section -->
     <div  class="for-full-back "  id="footer" >
               
          
       Web hỗ trợ học trực tuyến - Nhóm 16
         
            </div>
    <!--End footer Section -->
     <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
     <!-- CORE JQUERY  -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
     <!-- BOOTSTRAP CORE SCRIPT   -->
    <script src="assets/plugins/bootstrap.js"></script>
    <!-- VEGAS SLIDESHOW SCRIPTS -->
    <script src="assets/plugins/vegas/jquery.vegas.min.js"></script>
     <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
     
</body>
</html>
