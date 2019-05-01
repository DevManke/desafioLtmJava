package com.desafiolatam.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/procesaLogin")
public class ProcesaLogin extends HttpServlet {
	
	private final String LOGIN = "UsuarioRegistrado";
	private final String PASS= "admin";

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String requestLogin = "";
		String requestPass = "";
		
		PrintWriter out = response.getWriter();
		
		requestLogin = request.getParameter("login");
		requestPass = request.getParameter("pass");
		
		if(!LOGIN.contentEquals(requestLogin) || !PASS.contentEquals(requestPass)) {
			   out.println("<script type=\"text/javascript\">");
			   out.println("alert('Usuario o password incorrecto');");
			   out.println("location='index.jsp';");
			   out.println("</script>");
		}else {
			// creamos la sesion si el usuario existe
			HttpSession sesionUsuario= request.getSession(true);
			sesionUsuario.setAttribute("Nombre", requestLogin);
			RequestDispatcher rd = request.getRequestDispatcher("areaPrivada.jsp"); 
			rd.forward(request, response); 
		}
	}
}
