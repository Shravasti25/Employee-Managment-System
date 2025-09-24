<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }
        h2 {
            color: #333;
        }
        form {
            margin-bottom: 20px;
        }
        input[type="number"], button {
            padding: 8px;
            margin-top: 10px;
        }
        .message {
            color: green;
        }
    </style>
</head>
<body>

    <h2>Delete Employee by ID</h2>

    <form action="/deleteById" method="post">
        <label for="id">Employee ID:</label><br>
        <input type="number" id="id" name="id" required><br><br>
        <button type="submit">Delete</button>
    </form>

    <c:if test="${not empty message}">
        <p class="message">${message}</p>
    </c:if>

    <a href="/all">Back to Employee List</a>

</body>
</html>