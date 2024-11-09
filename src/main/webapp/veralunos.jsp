<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Listagem de Alunos</title>


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" 
          crossorigin="anonymous">


    <style>
        body {
            background: linear-gradient(to bottom right, #007B5F, #A1CDA8);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            font-family: 'Arial', sans-serif;
        }

        .container {
            width: 100%;
            max-width: 800px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }

        h1 {
            color: #007B5F;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #007B5F;
            color: white;
        }

        td {
            color: #007B5F;
        }

        .btn-custom {
            background-color: #FF7300;
            border-color: #FF7300;
            color: white;
            font-weight: bold;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            display: inline-block;
            margin-top: 10px;
        }

        .btn-custom:hover {
            background-color: #E65C00;
            border-color: #E65C00;
        }
        

		.btn-custom:link,
		.btn-custom:visited {
  	 	 color: white;
   		 text-decoration: none;
		}	

        .action-links a {
            color: #007B5F;
            font-weight: bold;
            margin: 0 5px;
            text-decoration: none;
        }

        .action-links a:hover {
            color: #E65C00;
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>Lista de Alunos</h1>


        <%@ page import="com.uniceplac.dao.UsuarioDao, com.uniceplac.bean.Usuario, java.util.*" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        
        <%
        List<Usuario> list = UsuarioDao.getAllUsuarios();
        request.setAttribute("list", list);
        %>

        <table>
            <tr>
                <th>ID</th>
                <th>Matrícula</th>
                <th>Nome</th>
                <th>Email</th>
				<th>Curso</th>
                <th>Editar</th>
                <th>Excluir</th>
            </tr>
            <c:forEach items="${list}" var="usuario">
                <tr>
					<td>${usuario.id}</td>
                    <td>${usuario.matricula}</td>
                    <td>${usuario.nome}</td>
                    <td>${usuario.email}</td>
                    <td>${usuario.curso}</td>
                    <td class="action-links"><a href="editform.jsp?id=${usuario.getId()}">Editar</a></td>
                    <td class="action-links"><a href="deleteusuario.jsp?id=${usuario.getId()}" onclick="return confirm('Tem certeza de que deseja excluir este aluno?');">Excluir</a></td>
                </tr>
            </c:forEach>
        </table>

        <a href="cadastraraluno.jsp" class="btn-custom">Adicionar novo aluno</a>
    </div>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" 
            integrity="sha384-ZMP7rVo3mIykW2sAg8GpA0KpV0ogbM6WNyIsZ7JrR0oz8lvT4j4BChT+" 
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" 
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" 
            crossorigin="anonymous"></script>
</body>

</html>