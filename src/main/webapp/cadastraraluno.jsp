<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>UNICEPLAC - CADASTRAR ALUNO</title>


    <style>
    
    
    <style>
    
    
    .fade {
        animation: fadeOut 0.5s ease-in-out;
    }

    @keyframes fadeOut {
        0% {
            transform: scale(1);
            opacity: 1;
        }
        50% {
            transform: scale(1.5);
            opacity: 0.5;
        }
        100% {
            transform: scale(1);
            opacity: 1;
        }
    }
    
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
            max-width: 400px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        h1, h4 {
            color: #007B5F;
            font-weight: bold;
            text-align: center;
        }

        .form-group label {
            color: #007B5F;
            font-weight: bold;
            display: block;
        }

        .form-control {
            background-color: #f2f2f2;
            color: #00008B;
            border-radius: 5px;
            border: 1px solid #ced4da;
        }

        .btn-primary {
            background-color: #FF7300;
            border-color: #FF7300;
            width: 100%;
            font-weight: bold;
        }

        .btn-primary:hover {
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

        @media (max-width: 576px) {
            .container {
                padding: 20px;
            }
        }

        
        .alert-success {
            display: none;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>UNICEPLAC</h1>
        <h4 class="mb-4">Cadastrar Aluno</h4>

        <form id="formLivro" action="cadastroaluno.jsp" method="post" onsubmit="mostrarSucesso(event)">
        
			<div class="form-group">
			    <label for="codigoLivro">Matrícula do Aluno:</label>
			    <input type="number" class="form-control" id="matricula" name="matricula"
			        placeholder="Matrícula do Aluno" required>
			</div>

            <div class="form-group">
                <label for="nomeLivro">Nome do Aluno:</label>
                <input type="text" class="form-control" id="nome" name="nome"
                       placeholder="Nome do Aluno" required>
            </div>

            <div class="form-group">
                <label for="telefone">Email do aluno:</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Email do aluno"
                       required>
            </div>
            <div class="form-group">
                <label for="telefone">Curso do aluno:</label>
                <input type="text" class="form-control" id="curso" name="curso" placeholder="Curso do Aluno"
                       required>
            </div>

            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>


<div class="alert alert-success" id="mensagemSucesso" role="alert" style="display: none;">
    Aluno cadastrado com sucesso!<br>
    <span id="mensagemRedirecionamento">Redirecionando para a listagem em <span id="contador">3</span></span>
</div>

<script>
    function mostrarSucesso(event) {
        event.preventDefault(); 


        var mensagem = document.getElementById('mensagemSucesso');
        mensagem.style.display = 'block';


        var contador = 2;
        var elementoContador = document.getElementById('contador');
        
        var intervalo = setInterval(function() {
            elementoContador.textContent = contador;
            elementoContador.classList.add('fade'); 
            

            setTimeout(() => elementoContador.classList.remove('fade'), 500);
            
            contador--;
            
            if (contador < 0) {
                clearInterval(intervalo);
                window.location.href = 'veralunos.jsp'; 
                document.getElementById('formLivro').submit();
            }
        }, 1000);
    }
</script>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
</body>
</html>