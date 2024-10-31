<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h2>Digite as Informações do Produto</h2>
    <form action="calculo.jsp" method="post">
        <label>Descricão do Produto:</label><br>
        <input type="text" name="descricao" required><br>
        <label>Preco em Dólar:</label><br>
        <input type="number" step="0.01" name="dolar"/><br>
        <label>Quantidade:</label><br>
        <input type="number" name="quantidade" required><br><br>
        
        <input type="submit" value="Calcular">
    </form>


</body>
</html>