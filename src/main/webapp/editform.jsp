<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Edição do Usuário</title>


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
            max-width: 600px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }

        h1 {
            color: #007B5F;
            font-weight: bold;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
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
        
		input[type="number"]::-webkit-inner-spin-button,
    	input[type="number"]::-webkit-outer-spin-button {
        -webkit-appearance: none;
        margin: 0;
   		}	

    	input[type="number"] {
        -moz-appearance: textfield; 
    	}
    	
    	
    </style>
</head>

<body>

    <div class="container">
        <h1>Editar Aluno</h1>


        <%@page import="com.uniceplac.bean.Usuario, com.uniceplac.dao.UsuarioDao" %>
        <%
            String id = request.getParameter("id");
            Usuario usuario = UsuarioDao.getRegistroById(Integer.parseInt(id));
        %>

        <form action="editaluno.jsp" method="post">
            <input type="hidden" name="id" value="<%=usuario.getId()%>">
            <table>
                <tr>
                    <td>Matrícula</td>
                    <td><input type="number" name="matricula" value="<%=usuario.getMatricula()%>" class="form-control" /></td>
                </tr>
                <tr>
                    <td>Nome:</td>
                    <td><input type="text" name="nome" value="<%=usuario.getNome()%>" class="form-control" /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="email" name="email" value="<%=usuario.getEmail()%>" class="form-control" /></td>
                </tr>
                <tr>
                    <td>Curso:</td>
                    <td><input type="text" name="curso" value="<%=usuario.getCurso()%>" class="form-control" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <button type="submit" class="btn-custom">Editar aluno</button>
                    </td>
                </tr>
            </table>
        </form>
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