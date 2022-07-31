<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Magazine B</title>
</head>
<body>
	<h3 style="color:red">${filesuccess}</h3>  
	<form:form method = "POST" modelAttribute = "fileUpload"
         enctype = "multipart/form-data">
         Please select a file to upload : 
         <input type = "file" name = "file" />
         <input type = "submit" value = "upload" />
    </form:form>
</body>
</html>