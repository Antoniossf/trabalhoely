<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="p" scope="page" class="org.libertas.pessoa" />
	<jsp:useBean id="pdao" scope="page" class="org.libertas.pessoaDao"/>
	<jsp:setProperty property="*" name="p"/>
	<% pdao.salvar(p); %>
	
	Registro salvo com sucesso
	<br/>
	<a href="index.jsp">ok</a>
	
<%--- <jsp:setProperty property="nome" name="p" param = "nome"/>
	<jsp:setProperty property="telefone" name="p" param = "telefone"/>
	<jsp:setProperty property="email" name="p" param= "email"/> 
	<jsp.setProperty property="cidade" name="p" param= "cidade"/>
	
 ---%>
 </body>

</html>