<%@ page import="org.animal.animal" %>
<%@ page import="org.animal.animalDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Excluir Animal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #dc3545;
        }
        .message {
            background-color: #f8d7da;
            color: #721c24;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 20px;
            border: 1px solid #f5c6cb;
            max-width: 400px;
            margin: auto;
        }
        a {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #dc3545;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        a:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>

<%
    try {
        // Declaração de um objeto animal
        animal a = new animal();
    
        // Receber o ID do animal e atribuir ao objeto animal
        a.setIdanimal(Integer.parseInt(request.getParameter("id")));
        
        // Declaração do animalDao
        animalDao adao = new animalDao();
        
        // Executar o método excluir
        adao.excluir(a);
%>

<div class="message">
    <h1>Registro excluído com sucesso!</h1>
    <a href="listar.jsp">Voltar</a>
</div>

<%
    } catch (Exception e) {
        out.println("Erro ao excluir o registro: " + e.getMessage());
    }
%>

</body>
</html>
