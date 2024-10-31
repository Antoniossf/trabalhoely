<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <jsp:useBean id="a" class=org.libertas.pessoa scope="page"/>
    <jsp:useBean id="adao" class=org.libertas.pessoaDao scope="page"/>
    <jsp:setProperty property="*" name="p"/>
    ${adao.excluir(a)}
    
    Registro excluido com sucesso!
    <br/>
    <a href="index.jsp">ok</a>

</body>
</html>