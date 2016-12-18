<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import ="java.sql.*" %>

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
                        <li><a class="r" href="logout.jsp">Thoát</a></li>
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
  <li><a class="r" href="HVdsbaithi.jsp">Làm bài thi</a></li>
    <li class="dropdown">
    <a class="dropdown-toggle r" data-toggle="dropdown" href="#">Tin nhắn
    <span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a class="r" href="HVnhaninadmin.jsp">ADmin</a></li>
      <li><a class="r" href="HVtinnhangv.jsp">Giảng viên</a></li>
    </ul>
  </li>
  </div>
  <div class="col-sm-9">
    <%
String id = request.getParameter("id");    
String pwd = request.getParameter("password");
String c1 = request.getParameter("optradio1");
String c2 = request.getParameter("optradio2");
String c3 = request.getParameter("optradio3");
String c4 = request.getParameter("optradio4");
String c5 = request.getParameter("optradio5");
String c6 = request.getParameter("optradio6");
String c7 = request.getParameter("optradio7");
String c8 = request.getParameter("optradio8");
String c9 = request.getParameter("optradio9");
String c10 = request.getParameter("optradio10");
String c11 = request.getParameter("optradio11");
String c12 = request.getParameter("optradio12");
String c13 = request.getParameter("optradio13");
String c14 = request.getParameter("optradio14");
String c15 = request.getParameter("optradio15");
String c16 = request.getParameter("optradio16");
String c17 = request.getParameter("optradio17");
String c18 = request.getParameter("optradio18");
String c19 = request.getParameter("optradio19");
String c20 = request.getParameter("optradio20");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://node179275-group16.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8",
        "root", "FZDool70036");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from baithi where id='" + id + "'");
int points=0;
while(rs.next()){
	
	if(rs.getString("c1").equals(c1)==true){
		points++;
	}
	if(rs.getString("c2").equals(c2)==true){
		points++;
	}
	if(rs.getString("c3").equals(c3)==true){
		points++;
	}
	if(rs.getString("c4").equals(c4)==true){
		points++;
	}
	if(rs.getString("c5").equals(c5)==true){
		points++;
	}
	if(rs.getString("c6").equals(c6)==true){
		points++;
	}
	if(rs.getString("c7").equals(c7)==true){
		points++;
	}
	if(rs.getString("c8").equals(c8)==true){
		points++;
	}
	if(rs.getString("c9").equals(c9)==true){
		points++;
	}
	if(rs.getString("c10").equals(c10)==true){
		points++;
	}
	if(rs.getString("c11").equals(c11)==true){
		points++;
	}
	if(rs.getString("c12").equals(c12)==true){
		points++;
	}
	if(rs.getString("c13").equals(c13)==true){
		points++;
	}
	if(rs.getString("c14").equals(c14)==true){
		points++;
	}
	if(rs.getString("c15").equals(c15)==true){
		points++;
	}
	if(rs.getString("c16").equals(c16)==true){
		points++;
	}
	if(rs.getString("c17").equals(c17)==true){
		points++;
	}
	if(rs.getString("c18").equals(c18)==true){
		points++;
	}
	if(rs.getString("c19").equals(c19)==true){
		points++;
	}
	if(rs.getString("c20").equals(c20)==true){
		points++;
	}
	
}
	
%>
	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://node179275-group16.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8"
                           user="root"  password="FZDool70036"/>
 
     			<sql:query dataSource="${dbsource}" var="result">
         				   SELECT  khoahoc.IDKH,khoahoc.GV,khoahoc.TenKH,baithi.id,baithi.tendethi,baithi.linkdethi 
         				   from khoahoc,baithi where khoahoc.IDKH=baithi.idkh and baithi.id = ${param.id} ;
         				  
               </sql:query>
	
				<form >
				<center><h3 class ="tieude">Điểm của bạn là </h3></center>
				<c:forEach var="row" items="${result.rows}">
					<table id="mytable" class="table table-bordred table-striped">
					<tr>
					<input type="hidden" value=<%=session.getAttribute("userid")%> name="ten"/>
					<input type="hidden" value="${param.idkh }" name="idkh"/>
					<td>Tên bài thi:</td>
					<td> <input type="text"value="${row.tendethi}" name="tendethi" disabled/></td>
					</tr>
					<tr>
					<td>GV:</td>
					<td><input type="text" name="GV" value ="${row.GV}"  disabled/></td>
					</tr>				
					<tr>
					<td>Điểm:</td>
					<td><input type="text" name="diem" value="<%=points*0.5%>" disabled/></td>
					</tr>
					
					</table>
					
				
				
				 <a type="submit" href="HvdiemthiDB.jsp?idkh=<c:out value="${param.idkh }"/>&ten=<c:out value="${userid }"/>&GV=<c:out value="${row.GV}"/>&tendethi=<c:out value="${row.tendethi}"/>&diem=<%=points*0.5%>" class="btn btn-primary" >Xác nhận </a>
				 </c:forEach>
				</form>
	</div>
	
  </div>
  
</div>
</div>
</section>
    <!--end menu-->
 
     <!-- Pricing Section -->
   
  <section class="for-full-back color-dark " id="price-sec"  >
   <div class="container" >
          <div class="row text-center" >

            <div class="col-md-12 g-pad-bottom" >
        
                <img src="assets/img/8.jpg" width="100%" alt="">

                

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

