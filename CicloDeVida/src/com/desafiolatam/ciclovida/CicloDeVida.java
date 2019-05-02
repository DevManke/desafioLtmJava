package com.desafiolatam.ciclovida;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cicloVida")
public class CicloDeVida extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String saludo;
	
	public void init() throws ServletException {
	      saludo = "Hola, servlet inicializando...";
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		      throws ServletException, IOException {	      
		      // Seteamos el tipo de response, un html
		      response.setContentType("text/html");

		      // Declaramos la logica
		      PrintWriter out = response.getWriter();
		      out.println("<h1>" + saludo + "</h1>");
	}
	public void destroy() {
	      // Se destruye el servlet, nada que hacer
	}
}
