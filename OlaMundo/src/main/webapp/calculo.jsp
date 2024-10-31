<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Informações do Produto</h2>
    <%
        String descricao = request.getParameter("descricao");
        double precoDolar = Double.parseDouble(request.getParameter("dolar"));
        int quantidade = Integer.parseInt(request.getParameter("quantidade"));

        double taxaCambio = 5.48;  // Taxa de câmbio para conversão
        double precoReal = precoDolar * taxaCambio;
        double totalReal = precoReal * quantidade;
        
        /**DecimalFormat df = new DecimalFormat ("###,##0.00");**/
        out.println("Descrição do Produto: " + descricao + "<br>");
        out.println("Preço Unitário em Reais: R$ " + String.format("%.2f", precoReal) + "<br>");
        out.println("Quantidade: " + quantidade + "<br>");
        out.println("Preço Total em Reais: R$ " + String.format("%.2f", totalReal) + "<br>");
    %>


</body>
</html>