<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <jsp:useBean id="p" class="org.libertas.pessoa" scope="page"/>
    <jsp:useBean id="pdao" class="org.libertas.pessoaDao" scope="page"/>
    <jsp:setProperty property="*" name="p"/>
    ${pdao.excluir(p)}
    
    Registro excluido com sucesso!
    <br/>
    <a href="index.jsp">ok</a>

</body>
</html>