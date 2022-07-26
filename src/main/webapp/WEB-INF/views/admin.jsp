<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.beans.*,java.util.*"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<c:set var="path" value="${pageContext.request.contextPath}"/>

<% request.setCharacterEncoding("utf-8");
response.setContentType("text/html; charset=UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Magazine B Admin</title>
	<link rel="stylesheet" href="${path}/resources/CSS/style_login.css"></link>
</head>
<body>
	<div class="header">
	    <div class="logo">
	      	<a href="../">
	          <img src="${path}/resources/img/header_logo.svg" class="logo">
	        </a>
	    </div>
	    <div class="menu">
		      <div class="left-menu">
			      <ul>
			        <li><a href="#">New</a></li>
			        <li><a href="#">Magazine</a></li>
			        <li><a href="#">Books</a></li>
			        <li><a href="${path}/resources/jquery.html">Forest</a></li>
			      </ul>
		      </div>
		      <div class="right-menu">
			      <ul>
			        <li><a href="login">My Page</a></li>
			        <li><a href="login">Login</a></li>
			        <li><a href="#" id="myBtn">Cart[0]</a></li>
			        <div class="global_logo" >
			          	<img src="${path}/resources/img/icon_header_global_black.png" class="global_logo">
			        </div>
			        <li><a href="#">KR</a></li>
			      </ul>
		      </div>
	    </div>
  	</div>
  	
  	<div class="admin-title">Users List</div>
  	
  	<div class="admin">	  	
		<table class="admin-table">  
			<tr><th class="admin-th">Id</th><th class="admin-th">Name</th><th class="admin-th">Password</th><th class="admin-th">Email</th><th class="admin-th">Phonenumber</th><th class="admin-th">Edit</th><th class="admin-th">Delete</th></tr>  
			<c:forEach items="${list}" var="u">  
				<tr><td class="admin-td">${u.id}</td><td class="admin-td">${u.name}</td><td class="admin-td">${u.password}</td>  
				<td class="admin-td">${u.email}</td><td class="admin-td">${u.phonenumber}</td>
				<td class="admin-td"><a class="link" href="editform/${u.id}">Edit</a></td>  
				<td class="admin-td"><a class="link" href="admindelete/${u.id}">Delete</a></td></tr>
			</c:forEach>  
		</table>
		
		<br/><a class="link" href="userform">Add New User</a>
	</div>
	
  	<footer id="footer">
    <div class="footer">
      <div class="footer-logo">
        <img class="footer-width" src="${path}/resources/img/footer_logo.png">
      </div>

      <div class="footer-menu">
        <ul class="navi-list"><li class="navi-title">About Us</li>
          <li class="navi-item"><a href="#">Company</a></li>
          <li class="navi-item"><a href="#">Contact</a></li>
          <li class="navi-item"><a href="#">Media &amp; Service</a></li>
          <li class="navi-item"><a href="#">Partnership</a></li>
          <li class="navi-item"><a href="#">Stockists</a></li>
        </ul>
        <ul class="navi-list"><li class="navi-title">Customer Service</li>
          <li class="navi-item"><a href="#">Inquiry</a></li>
          <li class="navi-item"><a href="#">FAQ</a></li>
          <li class="navi-item"><a href="#">Notice</a></li>
        </ul>
        <ul class="navi-list"><li class="navi-title">SNS</li>
          <li class="navi-item"><a href="https://www.instagram.com/magazine.b/" target="_blank">Instagram<img src="https://magazine-b.co.kr/web/baton/images/icon/icon_footer_link.png"></a></li>
          <li class="navi-item"><a href="https://www.facebook.com/Brand.Magazine.B/" target="_blank">Facebook<img src="https://magazine-b.co.kr/web/baton/images/icon/icon_footer_link.png"></a></li>
          <li class="navi-item"><a href="https://www.youtube.com/user/MagazineB" target="_blank">Youtube<img src="https://magazine-b.co.kr/web/baton/images/icon/icon_footer_link.png"></a></li>
        </ul>
        <ul class="navi-list"><li class="navi-title">Follow Us</li>
          <li class="navi-item"><a href="https://www.podbbang.com/channels/13074" target="_blank">B Cast<img src="https://magazine-b.co.kr/web/baton/images/icon/icon_footer_link.png"></a></li>
          <li class="navi-item"><a href="https://music.apple.com/kr/curator/magazine-b/1256176657" target="_blank">B Playlist<img src="https://magazine-b.co.kr/web/baton/images/icon/icon_footer_link.png"></a></li>
          <li class="navi-item"><a href="http://magazineb.nicebook.kr/html/onestop/main_magazineb.php" target="_blank">Subscribe<img src="https://magazine-b.co.kr/web/baton/images/icon/icon_footer_link.png"></a></li>
        </ul>
      </div>
    </div>

    <div class="sub-info-wrapper">
      <ul class="sub-info"><li class="name">© songdabin</li>
        <li>이 홈페이지는 magazine-b.co.kr의 연습용 클론코딩 사이트입니다.</li>
        <li class="by">site by <a href="https://magazine-b.co.kr/" target="_blank">Magazine-B</a></li>
      </ul>
    </div>
  </footer>

  <script type="text/javascript" src="${path}/resources/JS/slider.js"></script>
  <script type="text/javascript" src="${path}/resources/JS/modal.js"></script>
</body>
  
</html>
