package model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.Conexion;
import entities.Login;

public class ModeloLogin 
{
	public Login iniciarSesion(String nombre, String clave) {
		Login login = null;
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		try {
			cn = Conexion.getConexion();
			String sql = "SELECT U.cedula_usuario, U.usuario, U.password FROM usuarios U WHERE U.usuario = ? AND U.password = ?";
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, nombre);
			pstm.setString(2, clave);
			rs = pstm.executeQuery();
			
			while (rs.next()) {
				login = new Login();
				login.setIdUser(rs.getInt("idUsuario"));
				login.setName(rs.getString("nombre"));
				login.setName(rs.getString("clave"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				
				if (pstm != null) {
					pstm.close();
				}
				
				if (cn != null) {
					cn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return login;
	}
}
