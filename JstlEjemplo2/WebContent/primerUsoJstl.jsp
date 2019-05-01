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
	width:300px;
	height:100px;
	border:solid 1px black;
	padding-left:30px;
}
#cabecera{
    margin:0 auto;
	width:300px;
	border:solid 1px black;
	padding-left:30px;
	background-color:green;
	color:white;
}
</style>
</head>
<body>
	<div id="cabecera">
		<h3>Ejemplos con JSTL salida estandar </h3>
	</div>
	<div id="texto">
		<p>Nombre: <c:out value="${param.nombre}"/></p>
	    <p>Apellido:<c:out value="${param.apellido}"/></p>
	</div>
	
</body>
</html>