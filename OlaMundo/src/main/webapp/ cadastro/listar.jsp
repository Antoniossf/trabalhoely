<%@page import="org.libertas.pessoa" %>
<%@page import="org.libertas.pessoaDao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<table border="1">
		<th> Nome</th>
		<th>Telefone</th>
		<th>Email</th>
		<th>Cidade</th>	
		<%
			pessoaDao dao = new pessoaDao();
			for(pessoa p : dao.listar()){
				out.print("<tr>");
				out.print("<td>" + p.getNome() + "</td>");
				out.print("<td>" + p.getTelefone() + "</td>");
				out.print("<td>" + p.getEmail() + "</td>");
				out.print("<td>" + p.getCidade() + "</td>");
				out.print("</tr>");			}
		
		%>
	</table>
	<a href="index.jsp"></a>
</body>
</html>