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
    <title>Giảng viên - Thông tin</title>
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
		<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://node179311-group16wed.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8" user="root" password="RAYatq42331" />

			<sql:query dataSource="${dbsource}" var="result">
           			 SELECT * 
           			 from khoahoc
           			 where IDKH=${param.id } 
            
        </sql:query>
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
                <a class="navbar-brand" href="HVindex.html"></a>
            </div>
            <!-- Collect the nav links for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse navbar-right">
                <ul class="nav navbar-nav">
                    <li><a href="GVindex.html">TRANG CHỦ</a>
                    </li>                  
                    <li><a href="#contact">LIÊN HỆ</a>
                    </li>
                      <li class="dropdown">
                      <a class="dropdown-toggle r" data-toggle="dropdown" href="#"><%=session.getAttribute("userid")%>
                      <span class="caret"></span></a>
                      <ul class="dropdown-menu">
                        <li><a  class="r" href="HVthongtin.html">Thông tin</a></li>
                        <li><a class="r" href="dangnhap.html">Thoát</a></li>
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

     
<section class="for-full-back color-light padding-top g-pad-bottom">
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

              <div class="col-sm-8">
              <form action="HVdanhgiaDB.jsp">
              <div class="row" style="background:white">
              
                <h3 class="tieude text-center"> Đánh giá giảng viên</h3>
             <p> 1.Không đồng ý    2.Bình thường    3.Đồng ý </p>
                <table class="table table-striped" style="border: solid 1px">
        <thead>
                        <tr>
                          <th > Stt</th>
                            <th >Nội chung </th>
                            <th >1</th>
                            <th>2</th>
                            <th>3</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                          <td>1</td>
                          <c:forEach var="row" items="${result.rows}">
                        
                        	<input type="hidden" name="IDKH" value="${param.id }" > </td>
                          </c:forEach>
                            <td>Tôi được giới thiệu rõ ràng về đề cương chi tiết môn học</td>
                            <td><label class="radio-inline">
                             <input type="radio" name="optradio" value="0" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio" value="0.5" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio" value="1" required></td>
                          </tr>
                          <tr>
                           <td>2</td>
                            <td> Giảng viên dạy dễ hiểu</td>
                            <td><label class="radio-inline">
                             <input type="radio" name="optradio1" value="0" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio1" value="0.5" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio1" value="1" required ></td>
                          </tr>
                        <tr>
                            <td>3</td>
                            <td>  Nội dung giảng dạy hay và tạo hứng thú khi học</td>
                            <td><label class="radio-inline">
                             <input type="radio" name="optradio2" value="0" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio2" value="0.5" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio2" value="1" required> </td>
                          </tr>
                          <tr>
                            <td>4</td>
                            <td> Giảng viên thường liên hệ thực tế trong quá trình giảng dạy</td>
                            <td><label class="radio-inline">
                             <input type="radio" name="optradio3" value="0" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio3" value="0.5" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio3" value="1" required> </td>
                          </tr><tr>
                            <td>5</td>
                            <td>  Giảng viên thông báo về hình thức và nội dung kiểm tra, đánh giá môn học một cách rõ ràng</td>
                            <td><label class="radio-inline">
                             <input type="radio" name="optradio4" value="0" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio4" value="0.5" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio4" value="1" required> </td>
                          </tr>
                          <tr>
                            <td>6</td>
                            <td> Giảng viên quan tâm và giúp đỡ khi sinh viên gặp khó khăn</td>
                            <td><label class="radio-inline">
                             <input type="radio" name="optradio8" value="0" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio8" value="0.5" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio8" value="1" required> </td>
                          </tr>
                          <tr>
                            <td>7</td>
                            <td> Giảng viên nhiệt tình trả lời mọi câu hỏi của sinh viên</td>
                            <td><label class="radio-inline">
                             <input type="radio" name="optradio5" value="0" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio5" value="0.5" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio5" value="1" required> </td>
                          </tr>
                          <tr>
                            <td>8</td>
                            <td> Trong quá trình học tôi đã được đánh giá và phản hồi kịp thời để cải tiến việc học</td>
                            <td><label class="radio-inline">
                             <input type="radio" name="optradio6" value="0" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio6" value="0.5" required> </td>
                             <td><label class="radio-inline">
                             <input type="radio" name="optradio6" value="1" required> </td>
                          </tr>
                         
                            

                    </tbody>
        </table>
        <button type="submit" class="btn btn-primary ">Gửi đánh giá</button>
              </div>
              </form>
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

