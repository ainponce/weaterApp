<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/my-style.css">
    <title>Weather</title>
</head>
<body class="container fancy-bg">
<div class="row p-4">
    <h2 class="text-center">Última vez actualizado: ${lastUpdated}</h2>
</div>
<div class="row">
    <c:forEach var="location" items="${weatherList}" >
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 mb-4">
            <div class="card h-100 shadow-lg border-0">
                <div class="card-header mb-1 card-color">
                    <h5 class="card-title text-nowrap text-truncate">${location.locName}</h5>
                    <h6 class="card-subtitle text-muted text-nowrap text-truncate mb-1">${location.province}</h6>
                </div>
                <div class="card-body">
                    <p class="card-text"><span class="font-weight-bold">Temperatura: </span>${location.weatherDetails.temperature}°C</p>
                </div>
                <div class="card-footer">
                    <p class="text-muted mb-0"><span class="font-weight-bold">API ID:</span> ${location.apiId}</p>
                    <p class="text-muted mb-0"><span class="font-weight-bold">Database ID:</span> ${location.id}</p>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
