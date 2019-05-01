package com.desafiolatam.cookies;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/generaCookie")
public class ManejoCookies extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Cookie cookie = new Cookie("userjorge","viernes2019");
		cookie.setMaxAge(9000);
		cookie.setComment("Cookie guardada con propositos educativos");
		response.addCookie(cookie);
		
		PrintWriter print = response.getWriter();
		print.println("<html><body>");
		print.println("<h2><i>Cookie guardada correctamente:</i></h2><br>");
		print.println("Valor de la cookie: "+ "<strong>" + cookie.getValue() + "</strong>");
		print.println("<br>");
		print.println("Tiempo de duracion de cookie: " + "<strong>"+cookie.getMaxAge()+"</strong>");
		print.println("<br>");
		print.println("Comentario: " + "<strong>" + cookie.getComment()+ "</strong>");
		print.println("</body></html>");
		
	}
	
}
