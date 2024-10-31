<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="p" class="org.libertas.pessoa" scope="page" />
	<jsp:useBean id="pdao" class="org.libertas.pessoaDao" scope="page" />
	<jsp:setProperty property="*" name="p"/>
	${p = pdao.consultar(p.idpessoa)}
		
	<form action="gravar.jsp" method="post">
		<input type="hidden" name="idpessoa" value="${p.idpessoa}"/>
         Nome:
         <input type="text" name="nome" value="${p.nome}"/>
         <br/>
         Telefone:
         <input type= "text" name="telefone" value="${p.telefone}"/>
         <br/>
         E-mail:
         <input type="text" name="email" value="${p.email}"/>
         <br/>
         Cidade:
         <input type="text" name="cidade" value="${p.cidade}"/>
         <br/>
         <input type="submit" name ="salvar"/>
     </form>
</body>
</html>