<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Alunos</title>

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
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        h1 {
            color: #007B5F;
            font-weight: bold;
            margin: 0;
        }

        .search-bar {
            display: flex;
            align-items: center;
        }

        .search-bar input[type="text"] {
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 5px 0 0 5px;
            outline: none;
        }

        .search-bar button {
            background-color: #007B5F;
            border: 1px solid #007B5F;
            color: white;
            font-weight: bold;
            border-radius: 0 5px 5px 0;
            padding: 8px 15px;
            cursor: pointer;
        }

        .search-bar button:hover {
            background-color: #005F4A;
            border-color: #005F4A;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #007B5F	;
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

        .action-links a {
            color: #007B5F;
            font-weight: bold;
            margin: 0 5px;
            text-decoration: none;
        }

        .action-links a:hover {
            color: #005F4A;
        }

        .button-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        
        .btn-custom:link,
		.btn-custom:visited {
    		color: white;
    		background-color: #FF7300;
    		border-color: #FF7300;
    		text-decoration: none;
		}
    </style>
</head>

<body>

    <div class="container">
        <div class="header">
            <h1>Listagem de Alunos</h1>
            <form action="veralunos.jsp" method="get" class="search-bar">
                <input type="text" name="search" placeholder="Pesquisar o Aluno" required>
                <button type="submit">Pesquisar</button>
            </form>
        </div>

        <%@ page import="com.uniceplac.dao.UsuarioDao, com.uniceplac.bean.Usuario, java.util.*" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        
        <%
        String search = request.getParameter("search");
        List<Usuario> list = null;

        if (search != null && !search.trim().isEmpty()) {
            list = UsuarioDao.searchUsuarios(search);
        } else {
            list = UsuarioDao.getAllUsuarios();
        }
        request.setAttribute("list", list);
        %>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Matricula</th>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Curso</th>
                    <th>Editar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Usuario> usuarios = (List<Usuario>) request.getAttribute("list");
                    if (usuarios != null && !usuarios.isEmpty()) {
                        for (Usuario usuario : usuarios) {
                %>
                            <tr>
                                <td><%= usuario.getId() %></td>
                                <td><%= usuario.getMatricula() %></td>
                                <td><%= usuario.getNome() %></td>
                                <td><%= usuario.getEmail() %></td>
								<td><%= usuario.getCurso() %></td>
                                <td class="action-links"><a href="editform.jsp?id=<%= usuario.getId() %>">Editar</a></td>
                                <td class="action-links"><a href="deleteusuario.jsp?id=<%= usuario.getId() %>" onclick="return confirm('Tem certeza de que deseja excluir este livro?');">Excluir</a></td>
                            </tr>
                <%
                        }
                    } else {
                %>
                        <tr>
                            <td colspan="6">Nenhum resultado encontrado.</td>
                        </tr>
                <%
                    }
                %>
            </tbody>
        </table>

        <div class="button-container">
            <a href="cadastraraluno.jsp" class="btn-custom">Adicionar novo aluno</a>
        </div>
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