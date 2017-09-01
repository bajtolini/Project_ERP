<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodaj klienta</title>
</head>
<body>

	<div style="padding-left: 33%;">
		<div
			class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin"
			style="width: 50%;">
			<form action="add" method="post">
				<h2 class="w3-center">Formularz</h2>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-user"></i>
					</div>
					<div class="w3-rest">
						<input type="text" class="w3-input w3-border" name="name"
							placeholder="Nazwa firmy" required>
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-user"></i>
					</div>
					<div class="w3-rest">
						<input type="text" class="w3-input w3-border" name="nip"
							placeholder="NIP" required>
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-address-book-o"></i>
					</div>
					<div class="w3-rest">
						<input type="text" class="w3-input w3-border" name="postalcode"
							placeholder="Kod pocztowy" min="1" required>
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-plus"></i>
					</div>
					<div class="w3-rest">
						<input type="text" class="w3-input w3-border" name="city"
							placeholder="Miasto" required>
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-road"></i>
					</div>
					<div class="w3-rest">
						<input type="text" class="w3-input w3-border" name="street"
							placeholder="Ulica" required>
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-plus"></i>
					</div>
					<div class="w3-rest">
						<input type="text" class="w3-input w3-border" name="housenumber"
							placeholder="Numer domu" min="1" required>
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-plus"></i>
					</div>
					<div class="w3-rest">
						<input type="number" class="w3-input w3-border" name="localnumber"
							placeholder="Numer mieszkania" min="1">
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-phone"></i>
					</div>
					<div class="w3-rest">
						<input type="tel" class="w3-input w3-border" name="phone"
							placeholder="Numer telefonu" required>
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-envelope-o"></i>
					</div>
					<div class="w3-rest">
						<input type="email" class="w3-input w3-border" name="email"
							placeholder="Email">
					</div>
				</div>

				<div class="w3-row w3-section">
					<div class="w3-col" style="width: 50px">
						<i class="w3-xxlarge fa fa-tag"></i>
					</div>
					<div class="w3-rest">
						<input type="text" class="w3-input w3-border" name="tag"
							placeholder="TAG">
					</div>
				</div>

				<input type="submit" value="Zatwierdź"
					class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">
			</form>
			<form action="menu">
				<input type="submit" value="Wróć"
					class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">
			</form>
		</div>
	</div>

</body>
</html>
