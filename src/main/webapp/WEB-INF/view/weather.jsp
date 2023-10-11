<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/my-style.css">
    <title>Weather</title>
</head>
<body class="container fancy-bg">
<div class="row p-4">
    <h2 class="text-center">Última vez actualizado: ${lastUpdated}</h2>
</div>
<ul class="list-group">
    <c:forEach var="location" items="${weatherList}" >
        <li class="list-group-item">
            <h5>${location.locName}</h5>
            <p class="mb-1">${location.province}</p>
            <p><span class="fw-bold">Temperatura: </span>${location.weatherDetails.temperature}°C</p>
            <p class="text-muted"><span class="fw-bold">ID:</span> ${location.id}</p>
        </li>
    </c:forEach>
</ul>
</body>
</html>
