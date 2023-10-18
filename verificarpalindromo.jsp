<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Palindromo</title>
</head>
<body>
    <h1>Resultado da Verifica��o</h1>
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
        � um pal�ndromo.
    <% } else { %>
        n�o � um pal�ndromo.
    <% } %>
    </p>
    
    <p><a href="palindromo.jsp">Voltar</a></p>
</body>
</html>