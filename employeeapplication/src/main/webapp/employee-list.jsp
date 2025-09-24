


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee List</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center mb-4">Employee List</h1>
    <hr>

    <table class="table table-striped table-bordered table-hover mx-auto" style="width: 80%;">
        <thead class="table-primary text-center">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Department</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${stlist}" var="st">
                <tr class="text-center">
                    <td>${st.id}</td>
                    <td>${st.name}</td>
                    <td>${st.email}</td>
                    <td>${st.department}</td>
                    <td>${st.salary}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
