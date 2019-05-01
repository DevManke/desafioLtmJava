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
<style>
p{
	
}
#texto{
	margin:0 auto;
	width:500px;
	height:80px;
	border:solid 1px black;
	padding-left:30px;
	padding-top: 30px;
}
#cabecera{
    margin:0 auto;
	width:500px;
	border:solid 1px black;
	padding-left:30px;
	background-color:green;
	color:white;
}
</style>
</head>
<body>
	<div id="cabecera">
		<h3>FORMULARIO DE ENVÍO</h3>
	</div>
	<div id="texto">
		<form action="primerUsoJstl.jsp" method="POST"method="POST">
			<label>Nombre</label>
			<input type="text" placeHolder="Ingrese nombre" id="nombre" name="nombre">
			<label>Apellido</label>
			<input type="text" placeholder="Ingrese apellido" id="apellido" name="apellido">
			<input type="submit" value="enviar">
		</form>
	</div>
</body>
</html>