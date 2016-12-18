<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <title>Đăng ký</title>
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
          <a class="btn btn-default-1" style="margin-bottom:100px" href="dangnhap.jsp" class="btn btn-default-1">Tham gia ngay</a>
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
    <form class="form-horizontal" action ="regDB.jsp" name="form" ng-submit="register()" novalidate>
            <div class="form-group">
            <div ng-show="success" class="text-success text-center">Đăng ký thành viên thành công !</div>
            </div>
                <div class="form-group">
        <label for="fullname" class="col-xs-3 control-label required">Tên tài khoản</label>
        <div class="col-xs-9">
            <input name="xfullname" type="text" class="form-control" placeholder="Họ và tên"  ng-model="xfullname"  ng-minlength="6" ng-maxlength="50"  required>
            <i class="fa fa-check text-success" ng-show="form.xfullname.$dirty && form.xfullname.$valid"></i>
            <div ng-show="form.xfullname.$dirty && form.xfullname.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
            <span ng-show="form.xfullname.$error.required">Họ tên không được bỏ trống</span>
            <span ng-show="form.xfullname.$error.minlength">Họ tên phải dài hơn 6 kí tự</span>
            <span ng-show="form.xfullname.$error.maxlength">Họ tên phải ngắn hơn 50 kí tự</span>
            <span ng-show="form.xfullname.$error.pattern">Họ tên chỉ bao gồm các kí tự chữ cái</span>
            </div>
        </div>
    </div>
             <div class="form-group">
        <label for="email" class="col-xs-3 control-label required">Email</label>
        <div class="col-xs-9">
            <input name="email" type="email" class="form-control" placeholder="Email" ng-model="email" autocomplete="off" required >
            <i class="fa fa-check text-success" ng-show="form.email.$dirty && form.email.$valid"></i>
            <div ng-show="form.email.$dirty && form.email.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
                <span ng-show="form.email.$error.required">Bạn chưa nhập địa chỉ email</span>
                <span ng-show="form.email.$error.email">Không đúng định dạng email</span>
            </div>
        </div>

    </div>
    <div class="form-group">
        <label for="password" class="col-xs-3 control-label required">Mật khẩu</label>
        <div class="col-xs-9">
            <input name="password" ng-model="password" id="pass1" type="password" value="" class="form-control" placeholder="Mật khẩu" ng-minlength="6" ng-maxlength="30" required>
            <i class="fa fa-check text-success" ng-show="form.password.$dirty && form.password.$valid"></i>
            <div ng-show="form.password.$dirty && form.password.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
            <span ng-show="form.password.$error.required">Mật khẩu không được bỏ trống</span>
            <span ng-show="form.password.$error.minlength">Mật khẩu phải dài hơn 6 kí tự</span>
            <span ng-show="form.password.$error.maxlength">Mật khẩu phải ngắn hơn 30 kí tự</span>
            </div>
        </div>
    </div>
       <div class="form-group">
        <label for="password" class="col-xs-3 control-label required">Xác nhận mật khẩu</label>
        <div class="col-xs-9">
            <input name="cpassword" ng-model="cpassword" id="pass2" type="password" value="" class="form-control" placeholder="Mật khẩu" ng-minlength="6" ng-maxlength="30" ng-pass="" required  onkeyup="checkPass(); return false;">
            <i class="fa fa-check text-success" ng-show="form.cpassword.$dirty && form.cpassword.$valid"></i>
            <div ng-show="form.cpassword.$dirty && form.cpassword.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
            <span ng-show="form.cpassword.$error.required">Mật khẩu không được bỏ trống</span>
            <span ng-show="form.cpassword.$error.minlength">Mật khẩu phải dài hơn 6 kí tự</span>
            <span ng-show="form.cpassword.$error.maxlength">Mật khẩu phải ngắn hơn 30 kí tự</span>
             <span id="confirmMessage" class="confirmMessage"></span>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for="fullname" class="col-xs-3 control-label required">Họ và tên</label>
        <div class="col-xs-9">
            <input name="fullname" type="text" class="form-control" placeholder="Họ và tên"  ng-model="fullname"  ng-minlength="6" ng-maxlength="50"  required>
            <i class="fa fa-check text-success" ng-show="form.fullname.$dirty && form.fullname.$valid"></i>
            <div ng-show="form.fullname.$dirty && form.fullname.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
            <span ng-show="form.fullname.$error.required">Họ tên không được bỏ trống</span>
            <span ng-show="form.fullname.$error.minlength">Họ tên phải dài hơn 6 kí tự</span>
            <span ng-show="form.fullname.$error.maxlength">Họ tên phải ngắn hơn 50 kí tự</span>
            <span ng-show="form.fullname.$error.pattern">Họ tên chỉ bao gồm các kí tự chữ cái</span>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for="birthday" class="col-xs-3 control-label">Ngày sinh</label>
        <div class="col-xs-9">
            <input name="birthday" type="text" ng-model="birthday" class="form-control" placeholder="yyyy-mm-dd" ng-pattern="/^([0-9]{4}|[0-9]{2})-([0]?[1-9]|[1][0-2])-([0]?[1-9]|[1|2][0-9]|[3][0|1])$/" required>
            <i class="fa fa-check text-success" ng-show="form.birthday.$dirty && form.birthday.$valid"></i>
            <div ng-show="form.birthday.$dirty && form.birthday.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>Nhập ngày sinh theo đúng định dạng dd-mm-yyyy {{birthday}}</div>
        </div>
    </div>
    <div class="form-group">
        <label for="phone" class="col-xs-3 control-label">Số điện thoại</label>
        <div class="col-xs-9">
            <input name="phone" type="text" ng-model="phone" class="form-control" placeholder="Số điện thoại" ng-minlength="10" ng-maxlength="11"  required>
            <i class="fa fa-check text-success" ng-show="form.phone.$dirty && form.phone.$valid"></i>
            <div ng-show="form.phone.$dirty && form.phone.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
            <span ng-show="form.phone.$error.required">SĐT không được bỏ trống</span>
            <span ng-show="form.phone.$error.minlength"> SĐT phải dài hơn 10 số</span>
            <span ng-show="form.phone.$error.maxlength">SĐT phải ngắn hơn 11 số</span>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-3 col-xs-9">
            <button type="submit" class="btn btn-primary" ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)">Đăng ký <i class="fa fa-sign-in"></i></button>
        </div>
    </div>
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

