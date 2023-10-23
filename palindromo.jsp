<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Verificador de Palíndromos</title>
</head>
<body>
    <form action="PalindromeServlet" method="post">
        <label for="word">Digite uma palavra ou frase:</label>
        <input type="text" id="word" name="word" required>
        <button type="submit">Verificar</button>
    </form>
</body>
</html>