<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VISTA USUARIOS</title>
<link rel="stylesheet" href="css/estilos_1.css">
<link rel="stylesheet" href="css/estilos_2.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" type="text/javascript"></script>
</head>
<body>
	
	
	
<!-- CAPA CONTENEDORA PRINCIPAL -->
<div id="main-content">
		<!-- CAPA CONTENEDORA CABEZOTE WEB -->
<header id="header">
	<jsp:include page="encabezado.jsp" />
	Bienvenido ${sessionScope.usuario.nombre_usuario}
</header>
		
		<!-- CAPA CONTENEDORA MENU DE NAVEGACION WEB -->
<nav id="nav">
			<nav class="navbar navbar-expand-lg navbar-light bg-info">
				<div class="container-fluid">
					<a class="navbar-brand" href="#">Menu Tienda</a>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item"><a
								style="margin-left: 10px; border: none"
								class="btn btn-outline-light" aria-current="page"
								href="principal.jsp">Inicio</a></li>
							<li class="nav-item"><a
								style="margin-left: 10px; border: none"
								class="btn btn-outline-light" href="viewusers.jsp">Usuarios</a></li>
							<li class="nav-item"><a
								style="margin-left: 10px; border: none"
								class="btn btn-outline-light" href="Clientes.jsp">Clientes</a></li>
							<li class="nav-item"><a
								style="margin-left: 10px; border: none"
								class="btn btn-outline-light" href="Proveedores.jsp">Proveedores</a>
							</li>
							<li class="nav-item"><a
								style="margin-left: 10px; border: none"
								class="btn btn-outline-light" href="Productos.jsp">Productos</a>
							</li>
							<li class="nav-item"><a
								style="margin-left: 10px; border: none"
								class="btn btn-outline-light" href="RegistrarVenta.jsp">Ventas</a>
							</li>
							<li class="nav-item"><a
								style="margin-left: 10px; border: none"
								class="btn btn-outline-light" href="Reportes.jsp">Reportes</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</nav>

<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<h3>LISTADO DE USUARIOS</h3>  

<%  
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table border="1" width="90%" class="table caption-top">  
<tr><th>Identificaci??n</th><th>Nombre Usuario</th><th>Contrase??a</th><th>Email Usuario</th><th>Rol</th><th>Modificar</th><th>Eliminar</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getCedula_usuario()}</td><td>${u.getNombre_usuario()}</td><td>${u.getPassword()}</td>  
<td>${u.getEmail_usuario()}</td><td>${u.getUsuario()}</td> 
<td><a href="editform.jsp?cedula_usuario=${u.getCedula_usuario()}" class="btn btn-warning btn-sm">Editar</a></td>



<td><a href="deleteuser.jsp?cedula_usuario=${u.getCedula_usuario()}" class="btn btn-danger btn-sm">Eliminar</a></td></tr>  
</c:forEach>  
</table>
<a href="adduserform.jsp" class="btn btn-success btn-sm" role="button" aria-pressed="true">Agregar Nuevo Usuario</a>
<content id="content">
			
</content>
        
        <footer id="footer">
			<p>Pie de pagina</p>
        </footer>
	</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous" type="text/javascript"></script>
</body>
</html>