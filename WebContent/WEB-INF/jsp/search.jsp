<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link type="text/css" rel="stylesheet" href="css/search_style.css">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Witaj w panelu wyszukiwania</title>
</head>
<body>
	<div>
		<form action="menu">
			<input type="submit" value="Do MENU">
		</form>
	</div>
	<h2 style="align-content: center;">${info}</h2>
	<table>
		<tr>
			<th>ID</th>
			<th>Nazwa</th>
			<th>NIP</th>
			<th>Kod pocztowy</th>
			<th>Miasto</th>
			<th>Ulica</th>
			<th>Telefon</th>
			<th>Email</th>
			<th>TAG</th>
			<th>Edytuj</th>
			<th>Usuń</th>
		</tr>
		<c:forEach items="${clients}" var="client" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${client.name}</td>
				<td>${client.nip}</td>
				<td>${client.postalcode}</td>
				<td>${client.city}</td>
				<td>${client.street}</td>
				<td>${client.phone}</td>
				<td>${client.email}</td>
				<td>${client.tag}</td>
				<td>Link to modify</td>
				<td><form action="search" method="post"><button type="submit" name="delete" value="${client.nip}">Usuń</button></form></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>