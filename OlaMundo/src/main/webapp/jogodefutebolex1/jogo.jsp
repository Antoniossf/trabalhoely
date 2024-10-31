<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
   <title>Resultado do jogo</title>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Digite os Resultados dos Times</h2>
    <form action="resposta.jsp" method="post">
        <label>Nome do Time 1:</label><br>
        <input type="text" name="time1" required><br>
        <label>Gols do Time 1:</label><br>
        <input type="number" name="gols1" required><br><br>
        
        <label>Nome do Time 2:</label><br>
        <input type="text" name="time2" required><br>
        <label>Gols do Time 2:</label><br>
        <input type="number" name="gols2" required><br><br>
        
        <input type="submit" value="Enviar">
    </form>

	
	

</body>
</html>