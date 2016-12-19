<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
<title>E-learning</title>
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
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
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
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")||(session.getAttribute("role") != "3")) {
    	response.sendRedirect("dangnhap.jsp");	
    	
	}  
 
	%>
	<!--Header section  -->
	<div class="container" id="home">
		<div class="row text-center">
			<div class="col-md-12">
				<h1 class="head-main">Học mọi nơi</h1>
				<h2 class="head-sub-main">Trải nghiệm cảm giác mới</h2>
				<h3 class="head-last">Thầy cô, bạn bè khắp mọi nới</h3>
			</div>


		</div>

	</div>

	<!--End Header section  -->

	<!-- Navigation -->
	<nav class="navbar-inverse" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="ADquanlitaikhoan.jsp"></a>
			</div>
			<!-- Collect the nav links for toggling -->
			<div
				class="collapse navbar-collapse navbar-ex1-collapse navbar-right">
				<ul class="nav navbar-nav">
					<li><a href="ADquanlitaikhoan.jsp">TRANG CHỦ</a></li>

					<li class="dropdown"><a class="dropdown-toggle r"
						data-toggle="dropdown" href="#"><%=session.getAttribute("userid")%>
							<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="r" href="logout.jsp">Thoát</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<!--End Navigation -->

	<!--About Section-->
	<section class="for-full-back color-white " id="about">
		<div class="container"></div>

		<div class="row text-center g-pad-bottom">
			<div class="col-md-12"></div>

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
						<li><a class="r" href="ADquanlitaikhoan.jsp">Quản lý tài khoản</a></li>
				</div>
				<div class="col-sm-9">
					<div class="row">
						<h2 class="text-center" style="background: #333; color: #0adb48">Quản lý tài khoản</h2>
						<div class="row">

							<div class="col-md-12">
								<div class="table-responsive">


									<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://node179311-group16wed.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8"
                           user="root"  password="RAYatq42331"/>
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE members SET uname = ?, email=?, pass=?, role=?
            WHERE id='${param.id}'
            <sql:param value="${param.uname}" />
            <sql:param value="${param.email}" />
            <sql:param value="${param.pass}" />
            <sql:param value="${param.role}" />
        </sql:update>
        <c:choose>
        <c:when test="${count>=1}">
            <center><font size="5" color='green'> Update tài khoản thành công</font></center>
             <center> <p><a href="ADquanlitaikhoan.jsp">Quay lại</a>   </p>   </center>    
        </c:when>
        <c:otherwise>
        	<font size="5" color='green'> Update tài khoản không thành công</font>
              <p><a href="ADquanlitaikhoan.jsp">Quay l?i</a>   </p>       
        </c:otherwise>
        </c:choose>

								</div>

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
                <h3>Liên h? v?i chúng tôi</h3>
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
