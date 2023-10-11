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
    <!-- Reemplaza la URL del archivo CSS con la URL correcta de Bootstrap 5.2 si es necesario -->
    <link rel="stylesheet" href="css/my-style.css">
    <title>Weather</title>
</head>
<body class="container fancy-bg">
<div class="row p-4">
    <h2 class="text-center">Última vez actualizado: ${lastUpdated}</h2>
</div>
<div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
    <c:forEach var="location" items="${weatherList}" >
        <div class="col">
            <div class="card mb-3 shadow-lg border-0">
                <div class="card-header card-color">
                    <h5 class="card-title text-nowrap text-truncate">${location.locName}</h5>
                    <h6 class="card-subtitle text-nowrap text-truncate">${location.province}</h6>
                </div>
                <div class="card-body">
                    <p class="card-text"><span class="fw-bold">Temperatura: </span>${location.weatherDetails.temperature}°C</p>
                </div>
                <div class="card-body">
                    <p class="text-muted"><span class="fw-bold">ID:</span> ${location.id}</p>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
