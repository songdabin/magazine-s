<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.javatpoint.dao.UserDao"%> 
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<c:set var="path" value="${pageContext.request.contextPath}"/>
 
<jsp:useBean id="u" class="com.javatpoint.beans.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i = UserDao.delete(u);
response.sendRedirect("login.jsp");  
%>