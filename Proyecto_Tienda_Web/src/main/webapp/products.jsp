<%@page import="javax.swing.JOptionPane"%>
<%@page import="connection.Conexion"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<title>Ingresar Productos</title>
<!--  <link rel="stylesheet" href="css/estilos_1.css">-->
<link rel="stylesheet" href="css/estilos_2.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/5c755a5e47.js"
	crossorigin="anonymous"></script>
</head>
<body>

	<div id="main-content">
		<header id="header">
			<!--<jsp:include page="header.jsp" />-->
			<!--Bienvenido ${sessionScope.usuario.nombre}-->
		</header>
		<!-- CAPA CONTENEDORA MENU DE NAVEGACION WEB -->
		<jsp:include page="./components/principalmenu.jsp" />


		<%
		Conexion con = new Conexion();
		con.getConexion();
		String d = "", u = "", c = "", r = "", e = "";
		if (request.getParameter("doc") != null) {
			d = request.getParameter("doc");
			u = request.getParameter("us");
			c = request.getParameter("cl");
			r = request.getParameter("ro");
			e = request.getParameter("es");
			JOptionPane.showMessageDialog(null, d + u + c + r + e);
		}
		%>

		<div class="container">
			<br>
	<br>
		<div class="alert alert-info">
				<i class="fa fa-info-circle" aria-hidden="true"></i> Elija el
				archivo .csv para ingresar los productos masivamente
			</div>
			<h5 class="text-center mt-5">Registro Productos</h5>

			
			<br> <br> <br>

			<form action="ServletGestionUsuario" method="post">

				<div class="form-row">
					<div class="col-md-3"></div>
					<div class="input-group col-md-7">
						<input type="file" class="form-control" id="inputGroupFile04"
							aria-describedby="inputGroupFileAddon04" aria-label="Examinar">

					</div>
					<br> <br>

					<div class="col-md-6"></div>
					<div class="center-btn">

						<button class="btn  btn-success" type="button"
							id="inputGroupFileAddon04">Cargar</button>

					</div>
					
			</form>
			

		</div>
	


	</div>

	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="row">
		<div class="center-btn footer-style">


			<jsp:include page="./components/footer.jsp" />

		</div>
	</div>



	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
</body>
</html>