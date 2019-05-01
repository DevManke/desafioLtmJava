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
	#datos{
		padding-left:30px;
	}
</style>
</head>
<body>
	<div class="container">
		 <div id="datos">
		  <h1>Hemos recibido datos</h1>
		      <br>
		      <h2>Nombre enviado desde formulario: <c:out value="${param.nombre}"/></h2>
		      <br>
                     <h2>Direccion enviada desde formulario: <c:outvalue="${param.direccion}"/></h2>
		      <br>
		      <h2>Correo enviado desde formulario: <c:out value="${param.correo}"/></h2>
		      <br>
		      <h2>Password enviado desde formulario: no puedes verlo</h2>
		      <br>
		      <a href="formulario.jsp"><button type="button" class="btn btn-primary">Volver</button></a>
		 </div>	  
	</div>
</body>
