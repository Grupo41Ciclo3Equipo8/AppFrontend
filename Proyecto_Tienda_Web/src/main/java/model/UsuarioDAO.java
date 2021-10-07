package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.swing.JOptionPane;

import connection.Conexion;
import entities.UsuarioDTO;

public class UsuarioDAO{ 

	Conexion connection = new Conexion();
	Connection conn = connection.getConexion();
	PreparedStatement preparedStatement;
	ResultSet resultSet;
	UsuarioDTO user;
	
	
	
	
	@SuppressWarnings("null")
	public String create(UsuarioDTO user) {
		int x;
		String data="";
		try {
			UsuarioDTO userDto = user;
			user = consultUser(userDto);
			if(userDto == null) {
				preparedStatement=conn.prepareStatement("INSERT INTO usuarios(cedula_usuario, email_usuario, nombre_usuario, password, usuario) VALUES(?,?,?,?,?)");
				preparedStatement.setInt(1, userDto.getDocument());
				preparedStatement.setString(2, userDto.getEmail());
				preparedStatement.setString(3, userDto.getName());
				preparedStatement.setString(4, userDto.getPassword());
				preparedStatement.setString(5, userDto.getUser());
				x=preparedStatement.executeUpdate();
					if(x>0) {
						data="r";
					}
			}	
			else {
				data="nr";
			}
		} catch (SQLException e) {
			System.out.println("Error al insertar" + e);
			
			
		}
		
		
		return data;
	}
	
	
	
	public boolean edit(UsuarioDTO user) {
		
		return true;
	}
	
    public boolean delete(int document) {
		
		return true;
	}
    
    public List<UsuarioDTO> getAll() {
		
		return null;
	}
    
    public UsuarioDTO getById(int document) {
		
		return null;
	}
    
    public  UsuarioDTO consultUser(UsuarioDTO us) {
		
    	try {
    		preparedStatement=conn.prepareStatement("SELECT * FROM usuarios WHERE cedula_usaurio = ?");
    		preparedStatement.setInt(1, user.getDocument());
    		resultSet=preparedStatement.executeQuery();
    		if(resultSet.next()) {
    		   user=new UsuarioDTO(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5));
    					
    		}
    		
    		
    	} catch (SQLException e) {
    		
    		e.printStackTrace();
    	}	
    		
    	return user;
    	}
	
	
	
	
	
	

	


	   
}
