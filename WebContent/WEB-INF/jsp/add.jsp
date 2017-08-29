<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/style.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Clients</title>
</head>
<body>
	<form action="add" method="post" class="w3-container">
    <h2 class="w3-row w3-section">Formularz</h2>

		<input type="text" name="name" placeholder="Nazwa firmy" required>
		<input type="text" name="nip" placeholder="NIP" required>
		<input type="text" name="postalcode" placeholder="Kod pocztowy" min="1" required>
		<input type="text" name="city" placeholder="Miasto" required>
		<input type="text" name="street" placeholder="Ulica" required>
		<input type="text" name="housenumber" placeholder="Numer domu" min="1" required>
		<input type="number" name="localnumber" placeholder="Numer mieszkania" min="1">
		<input type="tel" name="phone" placeholder="Numer telefonu" required>
		<input type="email" name="email" placeholder="Email">
		<input type="text" name="tag" placeholder="TAG">
		<input type="submit" value="Zatwierdź">
	</form>
	<form action="menu">
		<input type="submit" value="Do MENU" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">
	</form>
</body>
</html>
