<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.desafiolatam.entidades.CursoDTO" %>
<%@ page import="com.desafiolatam.entidades.FormaDePagoDTO" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario Inscripció</title>
</head>
<% 
	List<CursoDTO> cursos;
	List<FormaDePagoDTO> formasPago;
	// capturamos informacion que viene desde el request
	cursos     = (List)request.getAttribute("cursos");
	formasPago = (List)request.getAttribute("formaPago");
%>
<body>
	<form action="/postInscripcion">
		Nombre:<input type="text" name="nombre"><br>
		Telefono: <input type="text" name="telefono"><br>
		Cursos: 
				  <select name="isCurso">
				  <% 
				  	for(CursoDTO dto: cursos){
				  %>
				  	<option value="<%=dto.getIdCurso()%>">
				  			<%=dto.getDescricion()%>
				  	</option>
				  <% 
				  	}
				  %>
				  </select><br>
				  
		Formas de pago:
				  <select name="idFormaPago">
				  <% 
				  	for(FormaDePagoDTO dto : formasPago ){
				  %>
				  	<option value="<%=dto.getIdFormaDePago()%>">
				  			<%=dto.getDescripcion()%>
				  	</option>
				  <% 
				  	}
				  %>
				  
				  </select><br>
	</form>


</body>
</html>