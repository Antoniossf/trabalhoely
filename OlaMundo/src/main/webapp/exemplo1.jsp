<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <%@include file ="menu.jsp" %>
     
     <h1>exemplo 1</h1>

     <%! 
        //declaração
        public double media(double a, double b) {
    	 return (a+b)/2.0;
     }
     %>
     <%
         int a = 1;
         int b = 2;
         int c = a+b;
         //out.print(c);
     %>
     <div style="font-size:140pt">
     	<%= c %>
     	<br/>
     	<%= media(a,b) %>
     </div>

</body>
</html>