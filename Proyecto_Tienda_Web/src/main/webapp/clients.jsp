<%@page import="javax.swing.JOptionPane"%>
<%@page import="connection.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CLIENTES</title>
<!--<link rel="stylesheet" href="css/estilos_1.css">  -->
<link rel="stylesheet" href="css/estilos_2.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
	
	
	
<!-- CAPA CONTENEDORA PRINCIPAL -->
<div id="main-content">
		<!-- CAPA CONTENEDORA CABEZOTE WEB -->
		<header id="header">
			 <jsp:include page="header.jsp" />
			Bienvenido ${sessionScope.usuario.nombre}
		</header>
		
		<!-- CAPA CONTENEDORA MENU DE NAVEGACION WEB -->
		<nav id="nav">
				<nav class="navbar navbar-expand-lg navbar-light nav-bg">
				  <div class="container-fluid">
				    <a class="navbar-brand" href="#">Tienda</a>
				    <div class="collapse navbar-collapse" id="navbarSupportedContent">
				      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
				        <li class="nav-item">
				          <a style="margin-left:10px; border:none" class="btn btn-outline-light" aria-current="page" href="principal.jsp">Inicio</a>
				        </li>
				        <li class="nav-item">
				          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Usuarios.jsp">Usuarios</a>
				        </li>
				        <li class="nav-item">
				          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Clientes.jsp">Clientes</a>
				        </li>
				        <li class="nav-item">
				          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Proveedores.jsp">Proveedores</a>
				        </li>
				        <li class="nav-item">
				          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Productos.jsp">Productos</a>
				        </li>
				        <li class="nav-item">
				          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="RegistrarVenta.jsp">Ventas</a>
				        </li>
				        <li class="nav-item">
				          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Reportes.jsp">Reportes</a>
				        </li>
				        </ul>
				    </div>
				  </div>
			</nav>
		</nav>
<%
Conexion con=new Conexion();
con.getConexion();
String d="",u="",c="",r="",e="";
if(request.getParameter("doc")!=null){
d=request.getParameter("doc");
u=request.getParameter("us");
c=request.getParameter("cl");
r=request.getParameter("ro");
e=request.getParameter("es");
JOptionPane.showMessageDialog(null, d+u+c+r+e);
}
%>

<div class= "usuario"">
<form action="" method="post">
<table width="55%" align="center" class="table">
  <thead>
    <tr>
      <th colspan="2" scope="col"><center>
        <h5>Formulario de  Registro Clientes</h5></th>
    </tr>
  </thead>
  <tbody>
    
    <tr>
      <th scope="row">Cedula</th>
      <td width="45%">Telefono</td>
      </tr>
    <tr>
      <th scope="row"><input class="form-control" name="cedula" type="text" id="cedula" placeholder = " # CEDULA"  value="<%=d%>" /></th>
      <td><input class="form-control" name="telefono" type="text" id="telefono"placeholder = " # TELEFONO"  value="<%=e%>" /></td>
      </tr>
    <tr>
      <th width="55%" scope="row">Nombre Completo</th>
      <td>Correo electronico</td>
    </tr>
    <tr>
      <th scope="row"><input class="form-control" name="nombres" type="text" id="nombres" placeholder = " # NOMBRE COMPLETO"  value="<%=u%>" /></th>
      <td><input class="form-control" name="correo" type="text" id="correo"placeholder = "CORREO"  value="<%=r%>" /></td>
    </tr>
    <tr>
      <th scope="row">Direccion</th>
      <td>&nbsp;</td>
      </tr>
    <tr>
      <th scope="row"><input class="form-control"name="direccion" type="text" id="direccion" placeholder = " # DIRECCION"  value="<%=u%>" /></th>
      <td>&nbsp;</td>
      </tr>
  </tbody>
</table>
</div>

<tr>
      <th colspan="2" scope="row"><input type="submit" name="btnins" value="Registrar" class="btn btn-primary" />
        <input type="submit" name="btncon" value="Consultar" class="btn btn-secondary" />
        <input type="submit" name="btnact" value="Actualizar" class="btn btn-success" />
        <input type="submit" name="btneli" value="Eliminar" class="btn btn-danger" /></th>
    </tr>

</form>
</div>
        
<footer class="footer-bg" >
  <div class = "container-body">
<!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2021 Copyright GRUPO41 "Grupo8" MisionMintic:
    <a href="https://misionticueb.myopenlms.net/login/index.php">UniBosque</a>
  </div>
  <!-- Copyright -->

</div>
</footer>
</div>
	</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
</html>