<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Spring Security</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/pages/css/bootstrap.css" />" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/pages/css/jumbotron-narrow.css" />" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">

    <div class="jumbotron" style="margin-top: 100px;">
        <h1>Playtika, Ukraine</h1>

        <sec:authorize access="!isAuthenticated()">
            <p class="lead">Playtika <a href="http://www.playtika.com">www.playtika.com</a> was founded in late 2010 and immediately enjoyed sky-rocketing growth.</p>
            <p><a class="btn btn-lg btn-success" href="<c:url value="/login" />" role="button">Log in</a></p>
        </sec:authorize>

        <sec:authorize access="isAuthenticated()">
            <p>Back Office Production (Slots/Casino): <a href="http://192.168.192.208:8096/back-office-fb/welcome.jsp">Link</a></p>
            <p>Back Office Production (Scratch): <a href="http://192.168.192.208:8096/back-office-fb/welcome.jsp">Link</a></p>
            <p><a class="btn btn-lg btn-danger" href="<c:url value="/logout" />" role="button">Log out</a></p>
        </sec:authorize>

    </div>

    <div class="footer">
        <p>&copy; Copyright Playtika 2014 </p>
    </div>

</div>
</body>
</html>
