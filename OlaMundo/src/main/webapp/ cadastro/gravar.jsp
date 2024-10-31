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

<% 
 	pessoaDao dao = new pessoaDao();
	pessoa p = new pessoa();
	p.setNome(request.getParameter("nome"));
	p.setTelefone(request.getParameter("telefone"));
	p.setEmail(request.getParameter("email"));
	p.setCidade(request.getParameter("cidade"));
	
	//salvar a pessoa
	dao.inserir(p);
%>
	<h1>Pessoa salva com Sucesso</h1>
	<a href="index.jsp"></a>

</body>
</html>