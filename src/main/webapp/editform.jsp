<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edição do Usuário</title>
</head>
<body>
	<%@page import="com.uniceplac.bean.Usuario, com.uniceplac.dao.UsuarioDao" %>
	
	<%
		String id = request.getParameter("id");
		Usuario usuario = UsuarioDao.getRegistroById(Integer.parseInt(id));
	%>
	
	<h1>Edição do Aluno</h1>
	
	
	<form action="editusuario.jsp" method="post">
		<input type="hidden" name="id" value="<%=usuario.getId()%>"/>
		<table>
			<tr>
				<td>Matrícula</td>
				<td><input type="text" name="matricula" value="<%=usuario.getMatricula() %>"/></td>
			</tr>
			<tr>
				<td>Nome</td>
				<td><input type="text" name="nome" value="<%=usuario.getNome() %>"/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" value="<%=usuario.getEmail() %>"/></td>
			</tr>
			<tr>
				<td>Curso</td>
				<td><input type="text" name="curso" value="<%=usuario.getCurso() %>"/></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="Editar Usuário"></input></td>
			</tr>
		
		
		</table>
		
	
	
	
	
	
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>