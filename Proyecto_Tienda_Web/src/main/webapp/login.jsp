<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- FRAMEWORK BOOTSTRAP  -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

<!-- ICONOS -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

<!--css -->
<link rel="stylesheet" href="./css/estilos_1.css">
<title>Login</title>
</head>
<body>
<h1 align="center">Bienvenidos a la Tienda Generica</h1>
<div class="modal-dialog text-center">
	<div class="col-sm-8 main-section">
		<div class="modal-content">
			<div class="col-12 login-img">
			<img src="./img/login-image.png">
			</div>
			<form class="col-12 m" action="">
				<div class="form-group id="user-group">
					<input type="text" class="form-control" placeholder="Nombre de usuario"/>	
				</div>
				<div class="form-group id="password-group">
					<input type="password" class="form-control" placeholder="Contraseña"/>
				</div>
				<button type="button" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i>ACEPTAR</button>
				<button type="button" class="btn btn-warning">CANCELAR</button> 
			</form>
		</div>
	</div>
</div>
<div class="container">
</div>
</body>
</html>