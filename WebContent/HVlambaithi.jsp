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
    <title>E-learning</title>
     <!--REQUIRED STYLE SHEETS-->
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- VEGAS STYLE CSS -->
    <link href="assets/plugins/vegas/jquery.vegas.min.css" rel="stylesheet" />
       <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
     <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
         <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
   <!--  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.23/jquery-ui.min.js"></script> -->
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
	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://node179311-group16wed.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8"
                           user="root"  password="RAYatq42331"/>
 
        <sql:query dataSource="${dbsource}" var="result">
         				   SELECT  khoahoc.IDKH,khoahoc.GV,khoahoc.TenKH,baithi.id,baithi.tendethi,baithi.linkdethi 
         				   from khoahoc,baithi where khoahoc.IDKH=baithi.idkh and baithi.id= ${param.id};
         				  
               </sql:query>
	

	
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
  <div class="col-sm-6 forgotquiz" style="margin-bottom:20px;" >
  <c:forEach var="row" items="${result.rows}">
        <iframe src="${row.linkdethi}/preview" style="height: 7500px; width: 550px;margin-top:50px" align="center"></iframe>
        </c:forEach>
    </div>

                <div class="col-sm-3" style="padding-right:10px">



                <div class="row" style="/*margin-top:80px;border:1px solid black*/">
                <c:forEach var="row" items="${result.rows}">
                    <ul>
                      <li>Tiêu đề: <c:out value="${row.tendethi}" /></li>
                      <li>Giảng viên: <c:out value="${row.GV}" /></li>
                      <li>Thời gian: 20 phút 
                      <span id="h"></span> 
                          <span id="m"></span> :
                           <span id="s"> </span></li>
                    </ul>
                    </c:forEach>
                    <div>
            
        </div>
              <script language="javascript">
 
            
            var m = 20; // Phút
            var s = 00; // Giây
             
            var timeout = null; // Timeout
             
            function start()
            {
                // Code
            }
             
            function stop(){
                clearTimeout(timeout);
            }
        </script>
        
<script language="javascript">
    function start()
{
    /*BƯỚC 1: LẤY GIÁ TRỊ BAN ĐẦU*/
    if (h === null)
    {
        h = parseInt(document.getElementById('h_val').value);
        m = parseInt(document.getElementById('m_val').value);
        s = parseInt(document.getElementById('s_val').value);
    }
 
    /*BƯỚC 1: CHUYỂN ĐỔI DỮ LIỆU*/
    // Nếu số giây = -1 tức là đã chạy ngược hết số giây, lúc này:
    //  - giảm số phút xuống 1 đơn vị
    //  - thiết lập số giây lại 59
    if (s === -1){
        m -= 1;
        s = 59;
    }
 
    // Nếu số phút = -1 tức là đã chạy ngược hết số phút, lúc này:
    //  - giảm số giờ xuống 1 đơn vị
    //  - thiết lập số phút lại 59
    if (m === -1){
        h -= 1;
        m = 59;
    }
 
    // Nếu số giờ = -1 tức là đã hết giờ, lúc này:
    //  - Dừng chương trình
    if (h == -1){
        clearTimeout(timeout);
        alert('Hết giờ');
        return false;
    }
 
    /*BƯỚC 1: HIỂN THỊ ĐỒNG HỒ*/
   
    document.getElementById('m').innerText = m.toString();
    document.getElementById('s').innerText = s.toString();
 
    /*BƯỚC 1: GIẢM PHÚT XUỐNG 1 GIÂY VÀ GỌI LẠI SAU 1 GIÂY */
    timeout = setTimeout(function()
  {
        s--;
        start();
    }, 1000);
}
    
    </script>
      </div>

              
                <button onclick="ayantogglequiz();start();"  href="javascript:;">Bắt đầu</button> 
                <div class="submit">
                

                
                  <div class="row" style="background:white"> 
          <div class="col-md-12 forgotquiz disble" style="" >


								<form action="diemthiresult.jsp">
									<div class="form-group">
										<h5>câu 1</h5>
										 <c:forEach var="row" items="${result.rows}">
										<input type="hidden" value="${row.id}" name="id">
										<input type="hidden" value="${row.idkh}" name="idkh">
										 </c:forEach>
										<label class="radio-inline"> <input type="radio"
											name="optradio1" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio1" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio1" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 2</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio2" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio2" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio2" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 3</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio3" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio3" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio3" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 4</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio4" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio4" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio4" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 5</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio5" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio5" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio5" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 6</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio6" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio6" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio6" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 7</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio7" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio7" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio7" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 8</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio8" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio8" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio8" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 9</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio9" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio9" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio9" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 10</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio10" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio10" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio10" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 11</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio11" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio11" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio11" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 12</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio12" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio12" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio12" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 13</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio13" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio13" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio13" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 14</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio14" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio14" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio14" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 15</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio15" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio15" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio15" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 16</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio16" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio16" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio16" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 17</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio17" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio17" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio17" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 18</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio18" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio18" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio18" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 19</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio19" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio19" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio19" value="C">C
										</label>
									</div>
									<div class="form-group">
										<h5>câu 20</h5>
										<label class="radio-inline"> <input type="radio"
											name="optradio20" value="A">A
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio20" value="B">B
										</label> <label class="radio-inline"> <input type="radio"
											name="optradio20" value="C">C
										</label>
									</div>
									<button class="btn btn-default"  type="submit" id="emc-submit" onclick="stop()">Submit Answers</button>
								</form>
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
