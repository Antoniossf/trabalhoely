<%@ page import="org.animal.animal" %>
<%@ page import="org.animal.animalDao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Animal formulario</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #333;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<%
    animal a = new animal();
    animalDao adao = new animalDao();
    int idanimal = 0;

    try {
        if (request.getParameter("id") != null) {
            idanimal = Integer.parseInt(request.getParameter("id"));
        }
    } catch (NumberFormatException e) {
        out.println("Invalid animal ID.");
    }

    if (idanimal > 0) {
        a = adao.consultar(idanimal);
        if (a == null) {
            out.println("Animal not found.");
        }
    } else {
        // Limpar os dados para novo
        a.setNome("");
        a.setraca("");
        a.setnomedono("");
        a.settelefonedono("");
    }
%>

<h1>Gerenciamento de Animais</h1>

<form action="gravar.jsp" method="post">
    <input type="hidden" name="idanimal" value="<%= a.getIdanimal() %>"/>
    
    <label for="nome">Nome:</label>
    <input type="text" id="nome" name="nome" value="<%= a.getNome() %>"/>
    
    <label for="raca">raca:</label>
    <input type="text" id="raca" name="raca" value="<%= a.getraca() %>"/>
    
    <label for="nomedono">nomedono:</label>
    <input type="text" id="nomedono" name="nomedono" value="<%= a.getnomedono() %>"/>
    
    <label for="telefonedono">telefonedono:</label>
    <input type="text" id="telefonedono" name="telefonedono" value="<%= a.gettelefonedono() %>"/>
    
    <input type="submit" value="Salvar"/>
</form>

</body>
</html>
