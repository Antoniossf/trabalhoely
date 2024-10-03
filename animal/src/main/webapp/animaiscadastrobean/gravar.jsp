<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="p" scope="page" class="org.animal.animal" />
	<jsp:useBean id="pdao" scope="page" class="org.animal.animalDao"/>
	<jsp:setProperty property="*" name="p"/>
	<% pdao.salvar(p); %>
	
	Registro salvo com sucesso
	<br/>
	<a href="index.jsp">ok</a>
	
<%--- <jsp:setProperty property="nome" name="a" param = "nome"/>
	<jsp:setProperty property="raca" name="a" param = "raca"/>
	<jsp:setProperty property="nomedono" name="a" param= "nomedono"/> 
	<jsp.setProperty property="telefonedono" name="a" param= "telefonedono"/>
	
 ---%>
 </body>

</html>