<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Usuń klienta</title>
</head>
<body>
	<div
		class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">
		<form action="delete" method="post">
			<p class="w3-center w3-large w3-text-indigo">Wprowadź NIP
				klienta, którego chcesz usunąć</p>
			<div class="w3-row w3-section">
				<div class="w3-col" style="width: 50px">
					<i class="w3-xxlarge fa fa-pencil"></i>
				</div>
				<div class="w3-rest">
					<input type="text" name="nip" placeholder="NIP"
						class="w3-input w3-border" required>
						${info}
					<button type="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Usuń</button>
					
		</form>
		<form action="menu">
			<input type="submit" value="Wróć" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">
		</form>
	</div>
</body>
</html>