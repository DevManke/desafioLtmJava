package com.desafiolatam.daos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.desafiolatam.entidades.CursoDTO;

public class CursoDao {
	
	/**
	 * Metodo encargado de obtener todos los cursos disponibles
	 * @return Lista de cursos CursoDTO
	 * @throws SQLException 
	 * @autor desafioLatam
	 */
	public List obtieneCursos() throws SQLException {
		
		//creamos la lista de objetos que devolveran los resultados
		List<CursoDTO> listaDeCursos = new ArrayList<CursoDTO>();
		
		//creamos la consulta a la base de datos
		String consultaSql = " SELECT id_curso, descripcion, precio " 
				   		   + " FROM curso ";
		
		//conexion a la base de datos y ejecucion de la sentencia
		Connection conexion = null;
		String url = "jdbc:mysql://localhost:8080/reservaCursos";
		conexion = DriverManager.getConnection(url,"usuario","password");
		
		try(PreparedStatement stmt = conexion.prepareStatement(consultaSql)){
	
			ResultSet resultado = stmt.executeQuery();
			while(resultado.next()) {
				CursoDTO cursoDto = new CursoDTO();
				cursoDto.setIdCurso(resultado.getInt("idcurso"));
				cursoDto.setDescricion(resultado.getString("descripcion"));
				cursoDto.setPrecio(resultado.getDouble("precio"));
				listaDeCursos.add(cursoDto);
			}	
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return listaDeCursos;
	}
}
