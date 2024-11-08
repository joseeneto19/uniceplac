<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Visualização de Usuários</title>
</head>
<body>
	<%@ page import="com.uniceplac.dao.UsuarioDao, com.uniceplac.bean.Usuario, java.util.*" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<h1>Listagem de Usuários</h1>
	
	<%
	List<Usuario> list = UsuarioDao.getAllUsuarios();
	request.setAttribute("list", list);
	%>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Matrícula</th>
			<th>Nome</th>
			<th>Email</th>
			<th>Curso</th>
		</tr>
		<c:forEach items="${list}" var="usuario">
			<tr>
				<td>${usuario.getId()}</td>
				<td>${usuario.getMatricula()}</td>
				<td>${usuario.getNome()}</td>
				<td>${usuario.getEmail()}</td>
				<td>${usuario.getCurso()}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>