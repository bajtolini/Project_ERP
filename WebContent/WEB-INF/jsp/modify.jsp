<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Modify</title>
</head>
<body>
	<form action="modify" method="post">
		<label><p>Wprowadź NIP klienta, którego dane chcesz zmienić.</p> <input
			type="text" name="nip" placeholder="NIP" required> </label>
		<button type="submit">Wyszukaj</button>
		<br>
		<c:if test="${not empty result}">
		<input type="text" name="name" value="${name}">
		<input type="text" name="nip" value="${nip}">
		<input type="text" name="postalcode" value="${postalcode}">
		<input type="text" name="city" value="${city}">
		<input type="text" name="street" value="${street}">
		<input type="text" name="housenumber" value="${housenumber}">
		<input type="number" name="localnumber" value="${localnumber}">
		<input type="tel" name="phone" value="${phone}">
		<input type="email" name="email" value="${email}">
		<input type="text" name="tag" value="${tag}">
		</c:if>
	</form>
	<form action="menu">
		<input type="submit" value="Do MENU">
	</form>
</body>
</html>