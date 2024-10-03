<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="p" class="org.animal.animal" scope="page" />
	<jsp:useBean id="pdao" class="org.animal.animalDao" scope="page" />
	<jsp:setProperty property="*" name="p"/>
	${a = adao.consultar(a.idanimal)}
		
	<form action="gravar.jsp" method="post">
		<input type="hidden" name="idanimal" value="${a.idanimal}"/>
         Nome:
         <input type="text" name="nome" value="${a.nome}"/>
         <br/>
         raca:
         <input type= "text" name="telefone" value="${a.raca}"/>
         <br/>
         nomedono:
         <input type="text" name="email" value="${a.nomedono}"/>
         <br/>
         telefonedono:
         <input type="text" name="cidade" value="${a.telefonedono}"/>
         <br/>
         <input type="submit" name ="salvar"/>
     </form>
</body>
</html>