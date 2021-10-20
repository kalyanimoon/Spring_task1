<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<center>
<h3>Update Student Form</h3></center>
<div class="container-fluid">
<div class="row">
	<div class="col col-lg-2">
	</div>
	<div class="col col-lg-8">
	<form:form action="/Spring_crud_practice/update" method="post">
		<div class="form-group">
			<label>STUDENT_NO</label>
			<form:input path="STUDENT_NO" class="form-control"/>
		</div>
		<div class="form-group">
			<label>STUDENT_NAME</label>
			<form:input path="STUDENT_NAME" class="form-control"/>
		</div>
		<div class="form-group">
			<label>STUDENT_DOB</label>
			<form:input path="STUDENT_DOB" class="form-control"/>
		</div>
		<div class="form-group">
			<label>STUDENT_DOJ</label>
			<form:input path="STUDENT_DOJ" class="form-control"/>
		</div>
		
		<div class="form-group">
			<button class="btn btn-primary" type="submit">Update</button>
		</div>
	</form:form>
	</div>
	<div class="col col-lg-2">
	</div>
</div>
	
</div>
</body>
</html>