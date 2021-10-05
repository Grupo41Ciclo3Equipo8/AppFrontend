<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- FRAMEWORK BOOTSTRAP  -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

<!-- ICONOS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

<!--css -->
<link rel="stylesheet" href="./css/estilos_1.css">
<title>Login</title>
</head>
<body class="container">
<h1 align="center">Bienvenidos a Tienda Generica</h1>
<div class="modal-dialog text-center">
	<div class="col-sm-8 main-section">
		<div class="modal-content">
			<div class="col-12 login-img">
			<img src="./img/login-image.png">
			</div>
			<form class="col-12 m" action="">
				<div class="form-group id="user-group">
					<input type="text" class="form-control " id="input-id" placeholder="Nombre de usuario"/>	
				</div>
				<div class="form-group id="password-group">
					<input type="password" class="form-control" placeholder="Contraseña"/>
				</div>
				
				<button type="button" class="btn btn-danger">CANCELAR</button> 
				<button type="button" class="btn btn-primary">ACEPTAR <i class="fas fa-sign-in-alt"></i></button>
				
			
			</form>
			<br>
			<a href="./users.jsp" >Registrate</a>
		</div>
	</div>
</div>
<jsp:include page="./components/footer.jsp" />
</body>
</html>