package com.uniceplac.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.uniceplac.bean.Usuario;

public class UsuarioDao {
	
	public static Connection getConnection() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/uniceplac", "root", "1234");
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	
	
	public static int deleteUsuario(Usuario u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("DELETE FROM usuario WHERE id=?");
			ps.setInt(1, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
		
		
	}
	
	public static int salvarUsuario(Usuario u) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("INSERT INTO usuario (matricula, nome, email, curso) VALUES(?, ?, ?, ?)");
			ps.setInt(1, u.getMatricula());
			ps.setString(2, u.getNome());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getCurso());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
		
	}
	
	
	
	
	
	public static Usuario getRegistroById(int id) {
		Usuario usuario = null;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM usuario WHERE id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				usuario = new Usuario();
				usuario.setId(rs.getInt("id"));
				usuario.setMatricula(rs.getInt("matricula"));
				usuario.setNome(rs.getString("nome"));
				usuario.setEmail(rs.getString("email"));
				usuario.setCurso(rs.getString("curso"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return usuario;
	}
	
	public static int  updateUsuario(Usuario u) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("UPDATE usuario SET matricula=?,"
					+ " nome=?, email=?, curso=? WHERE id=?");
			ps.setInt(1, u.getMatricula());
			ps.setString(2, u.getNome());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getCurso());
			ps.setInt(5, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	
	public static List<Usuario> getAllUsuarios(){
		List<Usuario> list = new ArrayList<Usuario>();
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM usuario");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Usuario usuario = new Usuario();
				usuario.setId(rs.getInt("id"));
				usuario.setMatricula(rs.getInt("matricula"));
				usuario.setNome(rs.getString("nome"));
				usuario.setEmail(rs.getString("email"));
				usuario.setCurso(rs.getString("curso"));
				list.add(usuario);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return list;
	}
	
	public static List<Usuario> searchUsuarios(String searchTerm) {
	    List<Usuario> list = new ArrayList<>();
	    try {
	        Connection con = getConnection();
	        
	        // Construindo a consulta SQL que cobre nome, matrícula e ID
	        String sql = "SELECT * FROM usuario WHERE nome LIKE ? OR matricula = ? OR id = ?";
	        PreparedStatement ps = con.prepareStatement(sql);
	        
	        // Configurando os parâmetros da consulta
	        ps.setString(1, "%" + searchTerm + "%");
	        
	        // Tentando interpretar o termo de pesquisa como número para matrícula e ID
	        int numero = 0;
	        try {
	            numero = Integer.parseInt(searchTerm);
	        } catch (NumberFormatException e) {
	            // Caso não seja um número, ele vai usar 0, que não coincidirá com nenhum ID ou matrícula válida
	        }
	        
	        // Definindo o mesmo número para matrícula e ID
	        ps.setInt(2, numero); // Para campo 'matricula'
	        ps.setInt(3, numero); // Para campo 'id'

	        ResultSet rs = ps.executeQuery();

	        // Processando os resultados da pesquisa
	        while (rs.next()) {
	            Usuario usuario = new Usuario();
	            usuario.setId(rs.getInt("id"));
	            usuario.setMatricula(rs.getInt("matricula"));
	            usuario.setNome(rs.getString("nome"));
	            usuario.setEmail(rs.getString("email"));
	            usuario.setCurso(rs.getString("curso"));
	            list.add(usuario);
	        }
	        
	        // Fechando os recursos
	        rs.close();
	        ps.close();
	        con.close();

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return list;
	}



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
