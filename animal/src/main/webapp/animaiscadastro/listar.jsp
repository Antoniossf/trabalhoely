<%@ page import="org.animal.animal" %>
<%@ page import="org.animal.animalDao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Listagem de Animais</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        .actions {
            display: flex;
            justify-content: center;
            gap: 10px;
        }
        .actions a {
            color: #007bff;
        }
        .actions a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>

    <h1>Listagem de Animais</h1>
    
    <table>
        <tr>
            <th>Idanimal</th>
            <th>Nome</th>
            <th>raca</th>
            <th>nomedono</th>
            <th>telefonedono</th>
        </tr>
        <%
            animalDao dao = new animalDao();
            for(animal a : dao.listar()) {
        %>
        <tr>
            <td><%= a.getIdanimal() %></td>
            <td><%= a.getNome() %></td>
            <td><%= a.getraca() %></td>
            <td><%= a.getnomedono() %></td>
            <td><%= a.gettelefonedono() %></td>
            <td class="actions">
                <a href="formulario.jsp?id=<%= a.getIdanimal() %>">Alterar</a> | 
                <a href="excluir.jsp?id=<%= a.getIdanimal() %>">Excluir</a>
            </td>
        </tr>
        <%
            }
        %>
    </table>

    <div style="text-align: center;">
        <a href="index.jsp">Voltar ao Início</a>
    </div>

</body>
</html>
