<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

     <jsp:useBean id="pdao" scope="page" class="org.libertas.pessoaDao"/>
      
     <table border="1" width= "100%">
      	<th>nome</th>
      	<th>Telefone</th>
      	<th>E-mail</th>
      	<th>Cidade</th>
      	
      	<c:forEach var='p' items='${pdao.listar()}'>
      		<tr>
      			<td>${p.nome}</td>
      			<td>${p.telefone}</td>
      			<td>${p.email}</td>
      			<td>${p.cidade}</td>
      			<td><a href="formulario.jsp?idpessoa=${p.idpessoa}">Alterar</a></td>
      			<td><a href="excluir.jsp?idpessoa=${p.idpessoa}">Excluir</a></td>  			
      		</tr>
      	</c:forEach>
     </table>
</body>
</html>