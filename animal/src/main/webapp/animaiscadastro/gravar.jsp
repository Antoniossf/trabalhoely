<%@ page import="org.animal.animal" %>
<%@ page import="org.animal.animalDao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title> gravar</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #4CAF50;
        }
        .message {
            background-color: #d4edda;
            color: #155724;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 20px;
            border: 1px solid #c3e6cb;
            max-width: 400px;
            margin: auto;
        }
        a {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<%
    try {
        animalDao dao = new animalDao();
        animal a = new animal();
        
        // Pegando os parâmetros do formulário
        a.setIdanimal(Integer.parseInt(request.getParameter("idanimal")));
        a.setNome(request.getParameter("nome"));
        a.setraca(request.getParameter("raca"));
        a.setnomedono(request.getParameter("nomedono"));
        a.settelefonedono(request.getParameter("telefonedono"));
        
        // Salvando o animal no banco de dados
        dao.inserir(a);
%>

<div class="message">
    <h1>Animal salvo com sucesso!</h1>
    <a href="index.jsp">Voltar</a>
</div>

<%
    } catch (Exception e) {
        out.println("Erro ao salvar o animal: " + e.getMessage());
    }
%>

</body>
</html>
