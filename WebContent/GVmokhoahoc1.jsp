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
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
<title>Giảng viên - Mở khóa học mới</title>
<!--REQUIRED STYLE SHEETS-->
<!-- BOOTSTRAP CORE STYLE CSS -->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLE CSS -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet" />

<script src="assets/js/jquery.validate.min.js"></script>
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
</head>
<body>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
	<script>
		var demoApp = angular.module('demoApp', []).controller("RegisterCtrl",
				[ '$scope', function($scope) {
					$scope.success = false;
					$scope.register = function() {
						$scope.success = true;
					}
				} ]);
	</script>
		<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")||(session.getAttribute("role") != "2")) {
    	response.sendRedirect("dangnhap.jsp");	
    	
	}  
 
	%>
	<!--Header section  -->
	<div class="container" id="home">
		<div class="row text-center">
			<div class="col-md-12">
				<h1 class="head-main">HỌC MỌI NƠI</h1>
				<h2 class="head-sub-main">Trải nghiệm cảm giác mới</h2>
				<h3 class="head-last">Thầy cô, bạn bè khắp mọi nơi</h3>
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
				<a class="navbar-brand" href="GVindex.jsp"></a>
			</div>
			<!-- Collect the nav links for toggling -->
			<div
				class="collapse navbar-collapse navbar-ex1-collapse navbar-right">
				<ul class="nav navbar-nav">
					<li><a href="GVindex.jsp">TRANG CHỦ</a></li>
					<li><a href="#contact">LIÊN HỆ</a></li>
					<li class="dropdown"><a class="dropdown-toggle r"
						data-toggle="dropdown" href="#"><%=session.getAttribute("userid")%>
							<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="r" href="GVthongtin.jsp">Thông tin</a></li>
							<li><a class="r" href="dangnhap.jsp">Thoát</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<!--End Navigation -->

	<!--About Section-->
	<section class="for-full-back color-dark padding-top" id="about">

	</section>
	<section class="for-full-back color-light ">
		<div class="container">
			<div class="row">
  <div class="col-sm-3">
    <ul class="nav nav-pills nav-stacked">
    
  <li class="r"><a href="GVthongtin.jsp">Thông tin</a></li>
  
  <li class="dropdown">
    <a class="dropdown-toggle r" data-toggle="dropdown" href="#">Khóa học
    <span class="caret"></span></a>
    
    <ul class="dropdown-menu">
      <li><a class="r" href="GVCackhoahocdamo.jsp">Khóa học đã mở</a></li>
      <li><a class="r" href="GVmokhoahoc1.jsp">Mở khóa học mới</a></li>
     
    </ul>
    
  </li>
  <li><li class="dropdown">
    <a class="dropdown-toggle r" data-toggle="dropdown" href="#">Bài tập - Đề thi
    <span class="caret"></span></a>
    <ul class="dropdown-menu">
     
      <li><a class="r" href="GVradethi.jsp">Ra đề thi</a></li>
      <li><a class="r" href="GVdsbaitapnop.jsp">Danh sách bài tập đã nộp</a></li>
      
     
    </ul>
  </li>
    
    <li><a class=" r"  href="GVmessAD.jsp">Liên lạc với Admin</a></li>
    
    
  </ul>
  
  </div>
  
				<div class="col-md-9">
					<div class="main">
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-10 all">
								<div class="post">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h3 class="panel-little tieude text-center">Mở khóa học
												mới</h3>
										</div>
										<div class="panel-body">
											<div class="col-md-12"></div>
											<div class="col-md-12">
												<div id="main" ng-app="demoApp" ng-controller="RegisterCtrl">
													<form  method="post" enctype="multipart/form-data"
														class="form-horizontal" action="a" name="form"
														
														ng-submit="register()" novalidate>
														<div class="form-group">
															<div ng-show="success" class="text-success text-center">Mở
																khóa học thành công !</div>
														</div>
														<div class="form-group">
															<input type="hidden" name="gv"
																value="<%=session.getAttribute("userid")%>"> <label
																for="TenKhoaHoc" class="col-xs-3 control-label required">Tên
																khóa học</label>
															<div class="col-xs-9">
																<input name="TenKhoaHoc" type="text"
																	class="form-control" placeholder="Tên khóa học"
																	ng-model="TenKhoaHoc" ng-minlength="6"
																	ng-maxlength="50" required> <i
																	class="fa fa-check text-success"
																	ng-show="form.TenKhoaHoc.$dirty && form.TenKhoaHoc.$valid"></i>
																<div
																	ng-show="form.TenKhoaHoc.$dirty && form.TenKhoaHoc.$invalid"
																	class="text-danger">
																	<i class="fa fa-times text-danger"></i> <span
																		ng-show="form.TenKhoaHoc.$error.required">Tên
																		khóa hoc không được bỏ trống</span>

																</div>
															</div>
														</div>


														<div class="form-group"">
															<label for="NgayBatDau" class="col-xs-3 control-label">Ngày
																Bắt đầu</label>
															<div class="col-xs-9">
																<input name="NgayBatDau" type="text"
																	ng-model="NgayBatDau" class="form-control"
																	placeholder="yyyy-mm-dd"
																	ng-pattern="/^([0-9]{4}|[0-9]{2})-([0]?[1-9]|[1][0-2])-([0]?[1-9]|[1|2][0-9]|[3][0|1])$/" required>
																<i class="fa fa-check text-success"
																	ng-show="form.NgayBatDau.$dirty && form.NgayBatDau.$valid"></i>
																<div
																	ng-show="form.NgayBatDau.$dirty && form.NgayBatDau.$invalid"
																	class="text-danger">
																	<i class="fa fa-times text-danger"></i>Nhập ngày bắt đầu
																	theo đúng định dạng dd-mm-yyyy {{birthday}}
																</div>
															</div>
														</div>

														<div class="form-group">
															<label for="NgayKetThuc" class="col-xs-3 control-label">Ngày
																Kết thúc</label>
															<div class="col-xs-9">
																<input name="NgayKetThuc" type="date"
																	ng-model="NgayKetThuc" class="form-control"
																	placeholder="dd-mm-yyyy"
																	ng-pattern="/^([0-9]{4}|[0-9]{2})-([0]?[1-9]|[1][0-2])-([0]?[1-9]|[1|2][0-9]|[3][0|1])$/" required>
																<i class="fa fa-check text-success"
																	ng-show="form.NgayKetThuc.$dirty && form.NgayKetThuc.$valid"></i>
																<div
																	ng-show="form.NgayKetThuc.$dirty && form.NgayKetThuc.$invalid"
																	class="text-danger">
																	<i class="fa fa-times text-danger"></i>Nhập ngày kết thúc
																	theo đúng định dạng dd-mm-yyyy {{birthday1}}
																</div>
															</div>
														</div>

														<div class="form-group">
															<label for="LichHoc"
																class="col-xs-3 control-label required">Lịch học
																hàng tuần</label>
															<div class="col-xs-9">
																<input name="LichHoc" type="text" class="form-control"
																	placeholder="Lịch học hàng tuần" ng-model="LichHoc"
																	required> <i class="fa fa-check text-success"
																	ng-show="form.LichHoc.$dirty && form.LichHoc.$valid"></i>
																<div
																	ng-show="form.LichHoc.$dirty && form.LichHoc.$invalid"
																	class="text-danger">
																	<i class="fa fa-times text-danger"></i> <span
																		ng-show="form.LichHoc.$error.required">Lịch học
																		hàng tuần không được bỏ trống</span>
																</div>
															</div>
														</div>

														<div class="form-group">
															<label for="DiaDiemHoc"
																class="col-xs-3 control-label required">Địa điểm
																học</label>
															<div class="col-xs-9">
																<input name="DiaDiemHoc" type="text"
																	class="form-control" placeholder="Địa điểm học"
																	ng-model="DiaDiemHoc" required> <i
																	class="fa fa-check text-success"
																	ng-show="form.DiaDiemHoc.$dirty && form.DiaDiemHoc.$valid"></i>
																<div
																	ng-show="form.DiaDiemHoc.$dirty && form.DiaDiemHoc.$invalid"
																	class="text-danger">
																	<i class="fa fa-times text-danger"></i> <span
																		ng-show="form.DiaDiemHoc.$error.required">Địa
																		điểm học không được bỏ trống</span>
																</div>
															</div>
														</div>
														<div class="form-group">
															<label for="tendecuong"
																class="col-xs-3 control-label required">Tên đề cương</label>
															<div class="col-xs-9">
																<input name="tendecuong" type="text"
																	class="form-control" placeholder="Tên đề cương"
																	ng-model="tendecuong" ng-minlength="6"
																	ng-maxlength="50" required> <i
																	class="fa fa-check text-success"
																	ng-show="form.tendecuong.$dirty && form.tendecuong.$valid"></i>
																<div
																	ng-show="form.tendecuong.$dirty && form.tendecuong.$invalid"
																	class="text-danger">
																	<i class="fa fa-times text-danger"></i> <span
																		ng-show="form.tendecuong.$error.required">Tên
																		đề cương không được bỏ trống</span>

																</div>

															</div>



														</div>
														<div class="form-group">
															<label for="tendecuong"
																class="col-xs-3 control-label required">Upload file</label>
															<div class="col-xs-9">
																<input type="file" name="decuong">
															</div>
														</div>
														<div class="form-group">
															<div class="col-sm-offset-3 col-xs-9">
																<button type="submit" class="btn btn-primary"
																	ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)">Xác
																	nhận</button>
															</div>
														</div>
													</form>
												</div>
												<div class="col-md-3"></div>
											</div>
										</div>
									</div>
								</div>
								<!--end all-->
								<div class="col-md-1"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	<!--End About Section-->

	<!-- About Team Section -->

	<!--menu-->

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
