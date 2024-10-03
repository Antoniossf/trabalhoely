<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

     <jsp:useBean id="adao" scope="page" class="org.animal.animalDao"/>
      
     <table border="1" width= "100%">
     	<th>idanimal</th>
      	<th>nome</th>
      	<th>raca</th>
      	<th>nomedono</th>
      	<th>telefonedono</th>
      	
      	<c:forEach var='a' items='${adao.listar()}'>
      		<tr>
      			<td>${a.idanimal}</td>
      			<td>${a.nome}</td>
      			<td>${a.raca}</td>
      			<td>${a.nomedono}</td>
      			<td>${a.telefonedono}</td>
      			<td><a href="formulario.jsp?idanimal=${a.idanimal}">Alterar</a></td>
      			<td><a href="excluir.jsp?idanimal=${a.idanimal}">Excluir</a></td>  			
      		</tr>
      	</c:forEach>
     </table>
</body>
</html>