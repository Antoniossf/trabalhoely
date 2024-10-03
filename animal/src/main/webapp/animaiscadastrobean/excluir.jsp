<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <jsp:useBean id="p" class="org.animal.animal" scope="page"/>
    <jsp:useBean id="pdao" class="org.animal.animalDao" scope="page"/>
    <jsp:setProperty property="*" name="p"/>
    ${adao.excluir(a)}
    
    Registro excluido com sucesso!
    <br/>
    <a href="index.jsp">ok</a>

</body>
</html>