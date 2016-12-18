<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
    <title>Học viên</title>
     <!--REQUIRED STYLE SHEETS-->
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- VEGAS STYLE CSS -->
    <link href="assets/scripts/vegas/jquery.vegas.min.css" rel="stylesheet" />
       <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/animte.css" rel="stylesheet" />
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
	<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")||(session.getAttribute("role") != "1")) {
    	response.sendRedirect("dangnhap.jsp");	
    	
	}  
 
	%>
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
            <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://node179275-group16.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8"
                           user="root"  password="FZDool70036"/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from members where uname=?;
            <sql:param value="${param.id}" />
        </sql:query>
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
                <a class="navbar-brand" href="HVindex.jsp"></a>
            </div>
            <!-- Collect the nav links for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse navbar-right">
                <ul class="nav navbar-nav">
                    <li><a href="HVindex.jsp">TRANG CHỦ</a>
                    </li>                  
                    <li><a href="#contact">LIÊN HỆ</a>
                    </li>
                      <li class="dropdown">
                      <a class="dropdown-toggle r" data-toggle="dropdown" href="#"><%=session.getAttribute("userid")%>
                      <span class="caret"></span></a>
                      <ul class="dropdown-menu">
                        <li><a  class="r" href="HVthongtin.jsp">Thông tin</a></li>
                        <li><a class="r" href="dangnhap.jsp">Thoát</a></li>
                      </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav> 
     <!--End Navigation -->

    <!--About Section-->
    <section class="for-full-back color-white " id="about"  >
   <div class="container" >
                
            </div>
        
        <div class="row text-center g-pad-bottom" >
                <div class="col-md-12">



                    
                </div>
                
            </div>
     
</section>
    <!--End About Section-->

    <!-- About Team Section -->  

  <!--menu-->
<section class="for-full-back color-light padding-top">
    <div class="container">
<div class="row">
  <div class="col-sm-3">
    <ul class="nav nav-pills nav-stacked">
  <li class="r"><a href="HVthongtin.jsp">Thông tin</a></li>
  <li class="dropdown">
    <a class="dropdown-toggle r" data-toggle="dropdown" href="#">Khóa học
    <span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a class="r" href="HVkhoahocdk.jsp">Khóa học DK</a></li>
      <li><a class="r" href="HVkhoahoc.jsp">Các Khóa học</a></li>
      <li><a class="r" href="HVdecuongchitiet.jsp">Chi tiết khóa học</a></li> 
    </ul>
  </li>
   <li class="dropdown">
    <a class="dropdown-toggle r" data-toggle="dropdown" href="#">Bài thi
    <span class="caret"></span></a>
    <ul class="dropdown-menu">
    <li><a class="r" href="HVdsbaithi.jsp">Làm bài thi</a></li>
     <li><a class="r" href="HVdiembaithi.jsp">Điểm bài thi</a></li>
      
    </ul>
  </li>
  
    <li class="dropdown">
    <a class="dropdown-toggle r" data-toggle="dropdown" href="#">Tin nhắn
    <span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a class="r" href="HVnhaninadmin.jsp">ADmin</a></li>
      <li><a class="r" href="HVtinnhangv.jsp">Giảng viên</a></li>
    </ul>
  </li>
  </ul>
  </div>
  <div class="col-sm-8" style="background:white">
    <div class="row">
        <h3 class="tieude text-center"> ĐỔI EMAIL</h3>
        <div id="main" ng-app="demoApp" ng-controller="RegisterCtrl">
    <form action="updateemailDB.jsp" class="form-horizontal" name="form" ng-submit="register()" novalidate>
            <div class="form-group">
            <div ng-show="success" class="text-success text-center">Đổi thành công !</div>
            </div>
            <input type="hidden" value="${param.uname}" name="uname"/>
             <div class="form-group">
        <label for="email" class="col-xs-3 control-label required">Email cũ</label>
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
        <label for="email" class="col-xs-3 control-label required">Email mới</label>
        <div class="col-xs-9">
            <input name="email1" type="email" id="pass1" class="form-control" placeholder="Email" ng-model="email1" autocomplete="off" required >
            <i class="fa fa-check text-success" ng-show="form.email1.$dirty && form.email1.$valid"></i>
            <div ng-show="form.email1.$dirty && form.email1.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
                <span ng-show="form.email1.$error.required">Bạn chưa nhập địa chỉ email</span>
                <span ng-show="form.email1.$error.email">Không đúng định dạng email</span>
            </div>
        </div>

    </div>
       <div class="form-group">
        <label for="password" class="col-xs-3 control-label required">Xác nhận email</label>
        <div class="col-xs-9">
            <input name="email2" type="email" id="pass2" class="form-control" placeholder="Email" ng-model="email2" autocomplete="off" required  onkeyup="checkPass(); return false;">
            
            
                <span ng-show="form.email2.$error.required">Bạn chưa nhập địa chỉ email</span>
                <span id="confirmMessage" class="confirmMessage"></span>
            </div>
        </div>
             

    <div class="form-group">
        <div class="col-sm-offset-3 col-xs-9">
            <button type="submit" value="Update" class="btn btn-primary" ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)">Đổi </button>
        </div>
    </div>
</form>
</div>             
      </div>
  </div>
  
</div>
</div>
</section>
    <!--end menu-->
 
     <!-- Pricing Section -->
   


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
