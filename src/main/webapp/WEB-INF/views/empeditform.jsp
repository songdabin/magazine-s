<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<c:set var="path" value="${pageContext.request.contextPath}"/>

<% request.setCharacterEncoding("utf-8");
response.setContentType("text/html; charset=UTF-8");
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
      <a href="${path}/resources/login-success.jsp">
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
        <li><a href="${path}/resources/mypage.jsp">My Page</a></li>
        <li><a href="${path}">Logout</a></li>
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
      <h3><a href="${path}/viewemp">VIEW ALL</a></h3>
    </div>
  </div>
  

	<h1 class="cart-title">Cart Edit</h1>
    <form:form method="POST" action="/mvc/editsave">  
   	<table class="cart-input">  
   	<tr>
   	<td></td>  
<%--       <td><form:hidden path="user_id" /></td> --%>
      </tr>
      <tr>  
       <td class="cart-td">아이디 </td> 
       <td><form:input class="text-field" path="user_id"  /></td>
      </tr>  
      <tr>  
       <td class="cart-td">상품번호 </td>  
       <td><form:input class="text-field" path="mag" /></td>
      </tr>
      <tr>  
       <td class="cart-td">수량 </td>  
       <td><form:input class="text-field" path="cnt" /></td>
      </tr> 
      
      <tr>  
       <td> </td>  
       <td><input type="submit" class="submit-btn" value="Edit Save" /></td>  
      </tr>  
     </table>  
    </form:form>  
  
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
      <ul class="sub-info"><li class="name">© B Media Company</li>
        <li>주소: 서울특별시 용산구 대사관로 35, 2층</li>
        <li>회사명: 비미디어컴퍼니(주)</li>
        <li>대표자: 김명수</li>
        <li>사업자등록번호: 455-86-01601</li>
        <li>통신판매업 신고번호: 제2020-서울용산-0129호</li>
        <li class="agreement"><a href="#">개인정보처리방침</a></li>
        <li class="agreement"><a href="#">이용약관</a></li>
        <li class="by">site by <a href="https://ba-ton.kr/" target="_blank">BATON</a></li>
      </ul>
    </div>
  </footer>

  <script type="text/javascript" src="${path}/resources/JS/modal.js"></script>
</body>
  
</html>