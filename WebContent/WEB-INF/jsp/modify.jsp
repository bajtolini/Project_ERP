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
<title>Zmień dane</title>
</head>
<body>
	<div
		class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">
		<form action="modify" method="post">

			<h2 class="w3-center">Formularz zmiany danych</h2>
			<p class="w3-center w3-large w3-text-indigo">Wprowadź NIP
				klienta, którego dane chcesz zmienić</p>
			<div class="w3-row w3-section">
				<div class="w3-col" style="width: 50px">
					<i class="w3-xxlarge fa fa-pencil"></i>
				</div>
				<div class="w3-rest">
					<input type="text" name="nip" placeholder="NIP"
						class="w3-input w3-border" required>
				</div>
				<br>${info}
			</div>
			<button type="submit" name="search" value="${look}"
				class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Wyszukaj</button>
		</form>
		<form action="menu">

			<input type="submit" value="Wróć"
				class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">
		</form>

	</div>
	<div
		class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">
		<form action="modify" method="post">
			<c:if test="${not empty result}">
				<hr>
				<p class="w3-center w3-large w3-text-indigo">Zmień dane i
					kliknij 'Zatwierdź'</p>
				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-user"></i>
					</div>
					<div class="w3-rest">
						<input type="text" class="w3-input w3-border" name="name"
							value="${name}">
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-user"></i>
					</div>
					<div class="w3-rest">
						<input type="text" class="w3-input w3-border" name="nip"
							value="${nip}">
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-address-book-o"></i>
					</div>
					<div class="w3-rest">
						<input type="text" class="w3-input w3-border" name="postalcode"
							value="${postalcode}">
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-plus"></i>
					</div>
					<div class="w3-rest">
						<input type="text" class="w3-input w3-border" name="city"
							value="${city}">
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-plus"></i>
					</div>
					<div class="w3-rest">
						<input type="text" class="w3-input w3-border" name="street"
							value="${street}">
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-plus"></i>
					</div>
					<div class="w3-rest">
						<input type="text" class="w3-input w3-border" name="housenumber"
							value="${housenumber}">
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-plus"></i>
					</div>
					<div class="w3-rest">
						<input type="number" class="w3-input w3-border" name="localnumber"
							value="${localnumber}">
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-phone"></i>
					</div>
					<div class="w3-rest">
						<input type="tel" class="w3-input w3-border" name="phone"
							value="${phone}">
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-envelope-o"></i>
					</div>
					<div class="w3-rest">
						<input type="email" class="w3-input w3-border" name="email"
							value="${email}">
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-pencil"></i>
					</div>
					<div class="w3-rest">
						<input type="text" class="w3-input w3-border" name="tag"
							value="${tag}">
					</div>
				</div>

				<input type="submit" value="Zatwierdź" name="submit"
					class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">
			</c:if>
			${added}
		</form>
	</div>


</body>
</html>