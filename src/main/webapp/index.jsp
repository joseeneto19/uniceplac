<!DOCTYPE html>
<html lang="pt-br">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" 
          crossorigin="anonymous">

    <title>Uniceplac</title>



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
            max-width: 400px;
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
        }

        .btn-custom {
            width: 100%;
            font-weight: bold;
            margin-top: 10px;
            background-color: #FF7300;
            border-color: #FF7300;
            color: white;
        }

        .btn-custom:hover {
            background-color: #E65C00;
            border-color: #E65C00;
        }

        @media (max-width: 576px) {
            .container {
                padding: 20px;
            }
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>UNICEPLAC</h1>
        <button class="btn btn-custom" onclick="window.location.href='cadastraraluno.jsp'">ADICIONAR ALUNO</button>
        <button class="btn btn-custom" onclick="window.location.href='veralunos.jsp'">VER ALUNOS</button>
    </div>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" 
            integrity="sha384-ZMP7rVo3mIyk0WLAUAd+6tM94z25e6e97l3M6C7Rr09eQ4/IGpWz+smXKp4Yf/2E" 
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" 
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" 
            crossorigin="anonymous"></script>
</body>

</html>