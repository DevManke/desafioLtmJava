<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Usando JSTL</title>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
	.container{
	margin-top:39px;
		border:solid 1px; black;
		padding-top : 30px;
		padding-bottom: 30px;'
	}
</style>
</head>
<body>

<div class="container">
  <div class="row">
    <div class="col">
      <form action="procesaForm.jsp" method="POST">
		  <div class="form-group">
		    <label for="exampleInputEmail1">Direccion de correo</label>
		    <input type="email" class="form-control" id="correo" name="correo" aria-describedby="emailHelp" placeholder="Enter email" required>
		  </div>
		  <div class="form-group">
		    <label for="exampleInputEmail1">Nombre Completo</label>
		    <input type="text" class="form-control" id="nombre" name="nombre"  placeholder="Ingresa Nombre" required>
		  </div>
		  <div class="form-group">
		    <label for="exampleInputEmail1">Direccion</label>
		    <input type="text" class="form-control" id="direccion" name="direccion"  placeholder="Ingresa Direccion" required>
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1">Password</label>
		    <input type="password" class="form-control" id="pass" nombre="pass" placeholder="Password" required>
		    No le des la contraseña de tu correo a alguien mas
		  </div>
  		<button type="submit" class="btn btn-primary">Enviar</button>
	</form>
    </div>
  </div>
</div>
</body>
</html>