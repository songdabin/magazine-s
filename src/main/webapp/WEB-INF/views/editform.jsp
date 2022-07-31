<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<title>Magazine B</title>
	<link rel="stylesheet" href="${path}/resources/CSS/style_login.css"></link>
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
        <li><a href="login">MyPage</a></li>
        <li><a href="login">Login</a></li>
        <li><a href="#">Cart[0]</a></li>
        <div class="global_logo" ><img src="${path}/resources/img/icon_header_global_black.png" class="global_logo"></div>
        <li><a href="#">KR</a></li>
      </ul>
      </div>
    </div>
  </div>
  
  <div class="register">
	<form action="../editadminsave" method="post">
      <table class="register-form">
		<tr><td class="row">아이디 *</td></tr>
		<tr><td><input type="text" name="id"/></td></tr>  
		<tr><td class="row">비밀번호 *</td></tr>
		<tr><td><input type="password" name="password"/></td></tr>
		<tr><td class="row">이름 *</td></tr>
		<tr><td><input type="text" name="name"/></td></tr>  
		<tr><td class="row">휴대전화</td></tr>
		<tr><td><input type="text" name="phonenumber"/></td></tr>
		<tr><td class="row">이메일 *</td></tr>
		<tr><td><input type="email" name="email"/></td></tr>  
		<tr><td><input class="reg_btn" type="submit" value="수정하기"/></td></tr>  
		</table>
	</form>
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
</body>
</html>