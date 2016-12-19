<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
!DOCTYPE html>
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
    <title>Giới thiệu</title>
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
          <a style="margin-bottom:100px"  href="dangnhap.jsp" class="btn btn-default-1">Tham gia ngay</a>
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
    <section class="for-full-back color-white " id="about"  >
   <div class="container" >
                
            </div>
        
        <div class="row text-center g-pad-bottom" >
                <div class="col-md-12">

                  <img style="margin-top:20px" src="assets/img/onlinehome.jpg" alt="" width="90%">

                    
                </div>
                
            </div>
      </div>
</section>
    <!--End About Section-->

    <!-- About Team Section -->  
       <section class="for-full-back color-light padding-top" id="about-team"  >
   <div class="container" >
      
            <div class="row " >
                <div class="col-md-12  ">
                       <h3 style="color:#2ba560">GIỚI THIỆU TRANG WED </h3>
                    </h4>
                </div>
                
            </div>
        <div class="row " >
            <div class="col-md-12 g-pad-bottom" >
              <strong>Trang hỗ trợ học trực tuyến ra đời nhằm mục đích tạo ra 1 môi trường học năng đòng, ở bất kì nơi nào, khi bạn muốn. Tiết kiệm thời gian, tối ưu hóa việc trau dồi kiến thức. Mô hình hỗ trợ dạy học trực tuyến bắt đầu hoạt động các kháo học đầu tiên từ ngày 3/6/2015.</strong>
						</div>
					</div>
                 <div class="col-md-12 " >
						<div class="team-member">
							<h2 style="color:#2ba560">Mục tiêu</h2>
              <ul>
                <li>định hướng phát triển lâu dài</li>
                <li>tự do phát triển cá nhân</li>
                <li>hội nhập thế giới</li>
                <li>phát triển mô hình</li>
                <li>trang bị đầy đủ kiến thức cho học viên</li>
                <li>phát triển các kỹ năng phụ</li>
              </ul>
						</div>
					</div>
                 <div class="col-md-12">
						<div class="team-member">
							<h2 style="color:#2ba560">ĐỐI VỚI SINH VIÊN</h2>
              <ul>
                <li>Sẽ tự quyết định tiến độ của bản thân</li>
                <li>được học vài giảng của các giảng viên giỏi</li>
                <li>không gian mở</li>
              </ul>
						</div>
					</div>
					       <div class ="col-md-12" style="margin-bottom:40px"> 
                <strong>Các kháo học sẽ được học viên tự đăng kí,mỗi khóa học trong vòng vài tháng .Học viên lên lớp hoặc học trực tuyến qua các video bài giảng và tài liệu được chia sẽ qua mạng ..................................................................</strong>   
                 </div>
					
					
					
					
            </div>
        </div>
        
</section>
<!--End About Team Section -->

     <!-- Pricing Section -->
   
     <section  class="for-full-back color-dark " id="price-sec"  >
   <div class="container" ">
          <div class="row text-center" >

            <div class="col-md-12 g-pad-bottom" >
        
                <img src="assets/img/8.jpg" width="100%" alt="" >

                

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

