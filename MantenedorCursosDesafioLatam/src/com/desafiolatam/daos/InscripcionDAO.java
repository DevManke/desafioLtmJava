package com.desafiolatam.daos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.desafiolatam.entidades.CursoDTO;
import com.desafiolatam.entidades.FormaDePagoDTO;
import com.desafiolatam.entidades.InscripcionDTO;

public class InscripcionDAO {
	
	/**
	 * Metodo encargado de guardar la inscripcion de un curso
	 * @return Lista formas de pago FormaDePagoDTO
	 * @throws SQLException 
	 * @autor desafioLatam
	 */
	public int insertarInscripcion(InscripcionDTO dto) throws SQLException {
		
		int max = 0;
		
		//Query para obtener el una secuencia y asignar un id
		String consultaProximoId = " SELECT MAX(id_inscripcion)+1 " 
				   		   + " FROM inscripcion ";
		
		//Query que insertara el valor
		String insertarInscripcion = " INSERT INTO inscripcion("
				                   + " idInsc, nombre, celular, idCurso, idFormaDePago "
				                   + " VALUES (?,?,?,?,?) ";
		
		//conexion a la base de datos y ejecucion de la sentencia
		Connection conexion = null;
		String url = "jdbc:mysql://localhost:8080/reservaCursos";
		conexion = DriverManager.getConnection(url,"usuario","password");
		
		try(
				PreparedStatement stmt1 = conexion.prepareStatement(consultaProximoId);
				PreparedStatement stmt2 = conexion.prepareStatement(insertarInscripcion);
				
		   ){
	
			ResultSet resultado = stmt1.executeQuery();
			if(resultado.next()) {
				max = resultado.getInt("id_inscripcion");
				stmt2.setInt(1, max);
				stmt2.setString(2, dto.getNombre());
				stmt2.setString(3, dto.getCelular());
				stmt2.setInt(4, dto.getIdCurso());
				stmt2.setInt(5, dto.getIdFormaDePago());
				
				if(stmt2.executeUpdate() != 1) {
					throw new RuntimeException("A ocurrido un error inesperado");
				}
			}	
			
		}catch(Exception ex) {
			ex.printStackTrace();
			throw new RuntimeException("A ocurrido un error inesperado" + ex);
		}
		return max;
	}
}
