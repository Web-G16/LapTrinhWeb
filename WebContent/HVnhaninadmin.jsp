<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>Học viên - Tin nhắn </title>
     <!--REQUIRED STYLE SHEETS-->
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- VEGAS STYLE CSS -->
    <link href="assets/scripts/vegas/jquery.vegas.min.css" rel="stylesheet" />
       <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
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
          <h3 class="head-last"> Thầy cô, bạn bè khắp mọi nơi </h3>n>
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
                <a class="navbar-brand" href="HVindex.jsp"></a>
            </div>
            <!-- Collect the nav links for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse navbar-right">
                <ul class="nav navbar-nav">
                    <li><a href="GVindex.jsp">TRANG CHỦ</a>
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
	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://node179311-group16wed.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8"
                           user="root"  password="RAYatq42331"/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from members where uname = '<%=session.getAttribute("userid")%>' ;
            
        </sql:query>
    <!--About Section-->
    <section class="for-full-back color-white " id="about"  >
   <div class="container" >
                
            </div>
        
        <div class="row text-center g-pad-bottom" >
                <div class="col-md-12">



                    
                </div>
                
            </div>
      </div>
</section>
    <!--End About Section-->

    <!-- About Team Section -->  

  <!--menu-->
<section class="for-full-back color-light padding-top">
    <div class="container">
<div class="row">
  <div class="col-sm-2">
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
  <li><a class="r" href="HVlambai.jsp">Làm bài</a></li>
    <li class="dropdown">
    <a class="dropdown-toggle r" data-toggle="dropdown" href="#">Tin nhắn
    <span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a class="r" href="HVnhaninadmin.jsp">Admin</a></li>
      <li><a class="r" href="HVtinnhangv.jsp">Giảng viên</a></li>
    </ul>
  </li>
  </div>
  <div class="col-sm-8" style="margin-bottom:20px">
      <h2 class="tieude">TIN NHẮN ĐẾN ADMIN</h2>
      <div class="row" style="border:1px solid black">
      <h4 class="text-center" style="color:red">* Mọi liên hệ - góp ý của các bạn cho Ban quản trị sẽ được trả lời bạn quan mail đã đăng kí</h4>
      <form action="senmailadmin.jsp" style="margin-left:80px">
      						<div class="row">
                              <div class="col-md-10 col-sm-6">
                                    <div class="form-group">
                                    	<c:forEach var="row" items="${result.rows}">
                                      <p>Email:</p>
                                        <input type="text" value="${row.email}" name="email" class="form-control" required="required" placeholder="Email address">
                                    	</c:forEach>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-10 col-sm-6">
                                    <div class="form-group">
                                          <p>Tiêu đề:</p>
                                        <input type="text" name="tieude" class="form-control" required="required" placeholder="Name">
                                    </div>
                                </div>
                                
                            </div>
                            
                            <div class="row">
                                <div class="col-md-10 col-sm-12">
                                    <div class="form-group">
                                      <p>Nội dung:</p>
                                        <textarea name="noidung" id="message" required="required" class="form-control" rows="3"  placeholder="Message"></textarea>
                                    </div>
                                    
                                </div>
                            </div>
                             <div class="row">
                                <div class="col-md-10 col-sm-6">
                                    <div class="form-group">
                                          <p>Xác nhận mk emmail:</p>
                                        <input type="password" name="pass" class="form-control" required="required" placeholder="Name">
                                    </div>
                                    <div class="form-group">
                                        <button style="background-color:#0adb48" type="submit" class="btn btn-default">Gửi</button>
                                    </div>
                                </div>
                                
                            </div>
                           
                        </form>
        </div>          
  </div>
  <div class="col-sm-2" >
    <h3 class="tieude">THÔNG BÁO</h3>
    <div class=".col-md-12">
      <ul style="background:white">
      <li><a href="">Thông báo 1</a></li>
      <li><a href="">Thông báo 2</a></li>
      <li><a href="">Thông báo 3</a></li>
      <li><a href="">Thông báo 4</a></li>
      <li><a href="">Thông báo 5</a></li>
    </ul>
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
            <div class="col-md-5 contact-cls" >
                <h3>Our Contact Details</h3>
					<div >
						<span><i class="fa fa-home"> </i> Address: Ho Chi Minh City</span>
                        <br />
						<span><i class="fa fa-phone"> </i> Phone: 08-080-808-080</span>
                        <br />
						<span><i class="fa fa-envelope-o"> </i>E-Mail: indo@yourdomain.com</span>
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
               
          
         2014 www.yourdomain.com | All Right Reserved
         
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
