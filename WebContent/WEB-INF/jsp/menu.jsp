<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Menu</title>
</head>
<body>

	<div
		class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">
		<form action="add">
			<button type="submit"
				class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Dodaj
				klienta</button>
		</form>

		<form action="delete">
			<button type="submit"
				class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Usuń
				klienta</button>
		</form>

		<form action="modify">
			<button type="submit"
				class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Zmień
				dane</button>
		</form>

		<form action="search">
			<button type="submit"
				class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Wyszukaj
				kontrahenta</button>
		</form>
	</div>

</body>
</html>
