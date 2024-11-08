<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Visualização de Alunos</title>
</head>
<body>
	<%@ page import="com.uniceplac.dao.UsuarioDao, com.uniceplac.bean.Usuario, java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<h1>Listagem de Alunos</h1>
	
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
			<th>Editar</th>
			<th>Deletar</th>	
		</tr>
		<c:forEach items="${list}" var="usuario">
			<tr>
				<td>${usuario.getId()}</td>
				<td>${usuario.getMatricula()}</td>
				<td>${usuario.getNome()}</td>
				<td>${usuario.getEmail()}</td>
				<td>${usuario.getCurso()}</td>
				<td><a href="editform.jsp?id=${usuario.getId()}">Editar</a></td>
				<td><a href="deleteusuario.jsp?id=${usuario.getId()}">Deletar</a></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="addusuarioform.jsp">Adicionar novo Aluno</a>
</body>
</html>