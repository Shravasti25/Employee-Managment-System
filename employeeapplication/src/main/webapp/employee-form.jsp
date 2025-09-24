<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee Form</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding-top: 40px;
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            margin-bottom: 30px;
        }
        .btn-back {
            margin-top: 15px;
            display: inline-block;
        }
    </style>
</head>
<body>
    <div class="container form-container">
        <h2>${employee.id == null ? "Add" : "Edit"} Employee</h2>

        <form action="/employee/save" method="post">
            <input type="hidden" name="id" value="${employee.id}" />

            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" value="${employee.name}" required />
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="${employee.email}" required />
            </div>

            <div class="mb-3">
                <label for="department" class="form-label">Department</label>
                <input type="text" class="form-control" id="department" name="department" value="${employee.department}" required />
            </div>

            <div class="mb-3">
                <label for="salary" class="form-label">Salary</label>
                <input type="number" class="form-control" id="salary" name="salary" value="${employee.salary}" required

</html>
