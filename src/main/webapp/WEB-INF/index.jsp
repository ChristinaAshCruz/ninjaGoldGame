<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Ninja Gold Game</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
    <!-- GOOGLE FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Coustard:wght@400;900&display=swap"
      rel="stylesheet"
    />
  </head>
  <body class="m-4">
    <h1 class="mb-4">-ˋˏ ninja gold game ˎˊ-</h1>
    <div class="callout callout-success mx-5 mb-5 d-flex align-items-center">
      <h4 class="me-3">Your Gold: <span>0</span></h4>
    </div>
    <div class="row mx-4" id="location-row">
      <div class="col-sm-3">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Special title treatment</h5>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Special title treatment</h5>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Special title treatment</h5>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Special title treatment</h5>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
