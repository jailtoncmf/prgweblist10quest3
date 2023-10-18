<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Palindromo</title>
</head>
<body>
    <h1>Resultado da Verificação</h1>
    <%
        
        String palavra = request.getParameter("palavra");

        boolean Palindromo = true;
        for (int i = 0; i < palavra.length() / 2; i++) {
            if (palavra.charAt(i) != palavra.charAt(palavra.length() - 1 - i)) {
                Palindromo = false;
                break;
            }
        }
    %>
    
    <p>A palavra "<%= request.getParameter("palavra") %>" 
    <% if (Palindromo) { %>
        é um palíndromo.
    <% } else { %>
        não é um palíndromo.
    <% } %>
    </p>
    
    <p><a href="palindromo.jsp">Voltar</a></p>
</body>
</html>