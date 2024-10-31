<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>resultado do jogo</title>
</head>
<body>
  <%@include file ="jogo.jsp" %>
<h1>Resultado da Partida</h1>

    <%
        String time1 = request.getParameter("time1");
        int gols1 = Integer.parseInt(request.getParameter("gols1"));

        String time2 = request.getParameter("time2");
        int gols2 = Integer.parseInt(request.getParameter("gols2"));

        String resultado;

        if (gols1 > gols2) {
            resultado = "O time " + time1 + " é o vencedor!";
        } else if (gols2 > gols1) {
            resultado = "O time " + time2 + " é o vencedor!";
        } else {
            resultado = "A partida terminou em empate!";
        }
    %>

    <p><strong><%= resultado %></strong></p>

    <p><a href="jogo.jsp">Voltar</a></p>

</body>
</html>