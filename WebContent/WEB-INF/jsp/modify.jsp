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
		<label><p>Wprowadź NIP klienta, którego dane chcesz
				zmienić.</p> <input type="text" name="nip" placeholder="NIP" required>
		</label>
		<button type="submit" name="search" value="${look}">Wyszukaj</button>
		</form>
		<form action="modify" method="post">
		<br>${info}
		<c:if test="${not empty result}">
			<hr>
			<label><p>Zmień dane i kliknij 'Zatwierdź':</p></label>
			<table>
				<tr>
					<td>Nazwa firmy</td>
					<td><input type="text" name="name" value="${name}"></td>
				</tr>
				<tr>
					<td>NIP</td>
					<td><input type="text" name="nip" value="${nip}"></td>
				</tr>
				<tr>
					<td>Kod pocztowy</td>
					<td><input type="text" name="postalcode" value="${postalcode}"></td>
				</tr>
				<tr>
					<td>Miasto</td>
					<td><input type="text" name="city" value="${city}"></td>
				</tr>
				<tr>
					<td>Ulica</td>
					<td><input type="text" name="street" value="${street}"></td>
				</tr>
				<tr>
					<td>Numer domu</td>
					<td><input type="text" name="housenumber"
						value="${housenumber}"></td>
				</tr>
				<tr>
					<td>Numer mieszkania</td>
					<td><input type="number" name="localnumber"
						value="${localnumber}"></td>
				</tr>
				<tr>
					<td>Numer telefonu</td>
					<td><input type="tel" name="phone" value="${phone}"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="email" name="email" value="${email}"></td>
				</tr>
				<tr>
					<td>Tag</td>
					<td><input type="text" name="tag" value="${tag}"></td>
				</tr>
			</table>
			<button type="submit" name="submit" value="Zatwierdź">Zatwierdź</button>
			<hr>
		</c:if>
	</form>
	${added}
	<form action="menu">
		<br><input type="submit" value="Wróć">
	</form>
</body>
</html>