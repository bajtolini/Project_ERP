<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="clients" method="post">
<input type="text" name="name" placeholder="Nazwa firmy" required>
<input type="text" name="nip" placeholder="NIP" required>
<input type="number" name="postalcode" placeholder="Kod pocztowy" min="1" required>
<input type="text" name="city" placeholder="Miasto" required>
<input type="text" name="street" placeholder="Ulica" required>
<input type="text" name="housenumber" placeholder="Numer domu" min="1" required>
<input type="number" name="localnumber" placeholder="Numer mieszkania" min="1">
<input type="tel" name="phone" placeholder="Numer telefonu" required>
<input type="email" name="email" placeholder="Email">
<input type="text" name="tag" placeholder="TAG">
<input type="submit" value="Zatwierdź">
</form>
</body>
</html>