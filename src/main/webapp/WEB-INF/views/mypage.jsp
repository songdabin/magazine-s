<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.javatpoint.dao.UserDao, com.javatpoint.beans.User"%>  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<% request.setCharacterEncoding("utf-8");
response.setContentType("text/html; charset=UTF-8");
User u = (User)request.getAttribute("command");
%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="${path}/resources/CSS/style_login.css"></link>
  <title>Magazine B</title>
</head>

<body>  
  <div class="header">
    <div class="logo">
      <a href="login-success">
        <img src="${path}/resources/img/header_logo.svg" class="logo">
      </a>
    </div>
    <div class="menu">
      <div class="left-menu">
      <ul>
        <li><a href="fileUploadPage">Image</a></li>
        <li><a href="#">Magazine</a></li>
        <li><a href="#">Books</a></li>
        <li><a href="${path}/resources/jquery.html">Forest</a></li>
      </ul>
      </div>
      <div class="right-menu">
      <ul>
        <li><a href="mypage">My Page</a></li>
        <li><a href="logout">Logout</a></li>
        <li><a href="#" id="myBtn">Cart[0]</a></li>
        <div class="global_logo" ><img src="${path}/resources/img/icon_header_global_black.png" class="global_logo"></div>
        <li><a href="#">KR</a></li>
      </ul>
      </div>
    </div>
  </div>
  
  <!-- Cart Modal -->
  <div id="myModal" class="modal">
    <div class="modal-header">
      <span class="close">Close</span>
      <h2>Cart</h2>
    </div>
    <div class="modal-body">
      <p>장바구니가 비어 있습니다.</p>
    </div>
    <div class="modal-footer">
      <h3><a href="viewemp">VIEW ALL</a></h3>
    </div>
  </div>
  
 
  <div class="mem-page">
	  	<div class="mem-menu">
	  		<div class="mem-name"><%=u.getName()%>님</div>
	  		<div class="mem-submenu">회원 정보</div>
	  		<a href="logout"><input type="button" class="logout-btn" value="로그아웃"></a><a href="deleteuser/<%=u.getId()%>"><input type="button" class="my-red-btn" value="회원탈퇴"></a>
	  	</div>
  	<form:form action="editusersave" method="POST"> 
	  	<div class="mem-detail">
	  		<div class="info-header">기본정보</div>
			<div class="info">아이디 *<form:input id="info-id" class="info-input" name="id" path="id"/></div>
			<div class="info">비밀번호 *<form:input id="info-pwd" class="info-input" type="password" name="password" path="password"/></div>
			<div class="info">이름 *<form:input id="info-name" class="info-input" name="name" path="name"/></div>
			<div class="info">전화번호<form:input id="info-phone" class="info-input" name="phonenumber" path="phonenumber"/></div>
			<div class="info">이메일 *<form:input id="info-email" class="info-input" name="email" path="email"/></div>
	  		<div class="mem-btn"><input type="submit" class="my-black-btn" value="회원정보수정"></div>
	  	</div>
  	</form:form>
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

  <script type="text/javascript" src="JS/slider.js"></script>
  <script type="text/javascript" src="JS/modal.js"></script>
</body>
  
</html>