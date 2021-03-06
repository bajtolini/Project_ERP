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

	<div style="padding-left: 33%;">
		<div
			class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin"
			style="width: 50%;">
			<form action="modify" method="post">

				<h2 class="w3-center">Formularz zmiany danych</h2>
				<h4 class="w3-center w3-large w3-text-indigo">Wprowadź NIP
					klienta, którego dane chcesz zmienić</h4><br>
				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-pencil"></i>
					</div>
					<div class="w3-rest">
						<input type="text" name="nip" placeholder="NIP" value="${fromModify}"
							class="w3-input w3-border" required>
					</div>
					<div
								class="w3-padding w3-center w3-text-red w3-block w3-section">${info}</div>
					<input type="submit" name="search" value="Zmień dane"
						class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">
			</form>
			<form action="menu">
				<input type="submit" value="Wróć"
					class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">
			</form>

			<form action="modify" method="post">
				<c:if test="${not empty result}">
					<hr>
					<p class="w3-center w3-large w3-text-indigo">Zmień dane i
						kliknij 'Zatwierdź'</p>
					<div class="w3-row w3-section">
						<div class="w3-col" style="width: 140px">
							<div
								class="w3-grey w3-padding w3-center w3-text-indigo w3-small"
								style="width: 120px">Nazwa</div>
						</div>
						<div class="w3-rest">
							<input type="text" class="w3-input w3-border" name="name"
								value="${name}" placeholder="Pole wymagane" required>
						</div>
					</div>

					<div class="w3-row w3-section">
						<div class="w3-col" style="width: 140px">
							<div
								class="w3-grey w3-padding w3-center w3-text-indigo w3-small"
								style="width: 120px" >NIP</div>
						</div>
						<div class="w3-rest">
							<input type="text" class="w3-input w3-border" name="nip"
								value="${nip}" placeholder="Pole wymagane" required>
						</div>
					</div>

					<div class="w3-row w3-section">
						<div class="w3-col" style="width: 140px">
							<div
								class="w3-grey w3-padding w3-center w3-text-indigo w3-small"
								style="width: 120px">Kod pocztowy</div>
						</div>
						<div class="w3-rest">
							<input type="text" class="w3-input w3-border" name="postalcode"
								style="height: 40px"
								value="${postalcode}" placeholder="Pole wymagane" required>
						</div>
					</div>

					<div class="w3-row w3-section">
						<div class="w3-col" style="width: 140px">
							<div
								class="w3-grey w3-padding w3-center w3-text-indigo w3-small"
								style="width: 120px">Miasto</div>
						</div>
						<div class="w3-rest">
							<input type="text" class="w3-input w3-border" name="city"
						value="${city}" placeholder="Pole wymagane" required>
						</div>
					</div>

					<div class="w3-row w3-section">
						<div class="w3-col" style="width: 140px">
							<div
								class="w3-grey w3-padding w3-center w3-text-indigo w3-small"
								style="width: 120px">Ulica</div>
						</div>
						<div class="w3-rest">
							<input type="text" class="w3-input w3-border" name="street"
							value="${street}" placeholder="Pole wymagane" required>
						</div>
					</div>

					<div class="w3-row w3-section">
						<div class="w3-col" style="width: 140px">
							<div
								class="w3-grey w3-padding w3-center w3-text-indigo w3-small"
								style="width: 120px">Numer domu</div>
						</div>
						<div class="w3-rest">
							<input type="text" class="w3-input w3-border" name="housenumber"
							value="${housenumber}" placeholder="Pole wymagane" required>
						</div>
					</div>

					<div class="w3-row w3-section">
						<div class="w3-col" style="width: 140px">
							<div
								class="w3-grey w3-padding w3-center w3-text-indigo w3-small"
								style="width: 120px">Numer lokalu</div>
						</div>
						<div class="w3-rest">
							<input type="number" class="w3-input w3-border"
							name="localnumber"
								value="${localnumber}">
						</div>
					</div>

					<div class="w3-row w3-section">
						<div class="w3-col" style="width: 140px">
							<div
								class="w3-grey w3-padding w3-center w3-text-indigo w3-small"
								style="width: 120px">Telefon</div>
						</div>
						<div class="w3-rest">
							<input type="tel" class="w3-input w3-border" name="phone"
						value="${phone}" placeholder="Pole wymagane" required>
						</div>
					</div>

					<div class="w3-row w3-section">
						<div class="w3-col" style="width: 140px">
							<div
								class="w3-grey w3-padding w3-center w3-text-indigo w3-small"
								style="width: 120px">Email</div>
						</div>
						<div class="w3-rest">
							<input type="email" class="w3-input w3-border" name="email"
						value="${email}">
						</div>
					</div>

					<div class="w3-row w3-section">
						<div class="w3-col" style="width: 140px">
							<div
								class="w3-grey w3-padding w3-center w3-text-indigo w3-small"
								style="width: 120px">TAG</div>
						</div>
						<div class="w3-rest">
							<input type="text" class="w3-input w3-border" name="tag"
							 value="${tag}">
						</div>
					</div>

					<input type="submit" value="Zatwierdź" name="submit"
						class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">
				</c:if>
					<div
								class="w3-padding w3-center w3-text-red w3-block w3-section">${modified}</div>
			</form>
		</div>
	</div>

</body>
</html>