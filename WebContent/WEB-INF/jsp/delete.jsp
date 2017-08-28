<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/style.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete</title>
</head>
<body>
	<form action="delete" method="post">
		<label><p>Wprowadź NIP klienta, którego chcesz usunąć.</p> <input
			type="text" name="nip" placeholder="NIP" required> </label>
		<button type="submit">Usuń</button>
	</form>
</body>
</html>