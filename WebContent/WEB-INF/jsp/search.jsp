<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/search_style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
td, th {
	border: 1px solid #dddddd;
}
</style>

<title>Wyszukaj kontrahenta</title>
</head>
<body>
	<div
		class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">
		<h3 class="w3-center w3-text-red">${info}</h3>
		<c:if test="${empty clients}">
			<h2 class="w3-center">Brak klientów w bazie danych</h2>
		</c:if>

		<table
			class="w3-table-all w3-striped w3-bordered w3-border w3-hoverable w3-text-blue-grey w3-centered w3-cell-middle"
			style="size: inherit;">
			<c:forEach items="${clients}" var="client" varStatus="status">
				<c:if test="${status.count == 1}">
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
				</c:if>
				<tr>
					<td style="vertical-align: middle;">${status.count}</td>
					<td style="vertical-align: middle;">${client.name}</td>
					<td style="vertical-align: middle;">${client.nip}</td>
					<td style="vertical-align: middle;">${client.postalcode}</td>
					<td style="vertical-align: middle;">${client.city}</td>
					<td style="vertical-align: middle;">${client.street}</td>
					<td style="vertical-align: middle;">${client.phone}</td>
					<td style="vertical-align: middle;">${client.email}</td>
					<td style="vertical-align: middle;">${client.tag}</td>
					<td style="vertical-align: middle;"><form action="modify" method="post">
							<button type="submit" name= "fromModify" value="${client.nip}"
								class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Zmień
								dane</button></form></td>
					<td style="vertical-align: middle;"><form action="search"
							method="post">
							<button type="submit" name="delete" value="${client.nip}"
								class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Usuń</button>
						</form></td>
				</tr>
			</c:forEach>
		</table>
		<form action="menu">
			<input type="submit" value="Wróć"
				class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">
		</form>
	</div>
</body>
</html>