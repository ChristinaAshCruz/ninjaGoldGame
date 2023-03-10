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
      href="https://fonts.googleapis.com/css2?family=Coustard:wght@400;900&family=Montserrat&display=swap"
      rel="stylesheet"
    />
  </head>
  <body class="m-4">
    <h1 class="mb-4">-ˋˏ ninja gold game ˎˊ-</h1>
    <div class="callout callout-success ms-5 d-flex align-items-center">
      <h4 class="me-3">
        Your Gold: <span><c:out value="${goldAmount}" /></span>
      </h4>
    </div>
    <div class="location-row">
      <div class="row">
        <div class="col-sm-3">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Farm</h5>
              <p>(earns 10-20 gold)</p>
              <form action="/find-gold" method="post">
                <input type="hidden" name="farm" />
                <input type="submit" value="Find Gold!" class="btn" />
              </form>
            </div>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Cave</h5>
              <p>(earns 5-10 gold)</p>
              <form action="/find-gold" method="post">
                <input type="hidden" name="cave" />
                <input type="submit" value="Find Gold!" class="btn" />
              </form>
            </div>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">House</h5>
              <p>(earns 2-5 gold)</p>
              <form action="/find-gold" method="post">
                <input type="hidden" name="house" />
                <input type="submit" value="Find Gold!" class="btn" />
              </form>
            </div>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Quest</h5>
              <p>(earns/takes 0-50 gold)</p>
              <form action="/find-gold" method="post">
                <input type="hidden" name="quest" />
                <input type="submit" value="Find Gold!" class="btn" />
              </form>
            </div>
          </div>
        </div>
        <div class="col-sm-3 mt-2">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Steal</h5>
              <p>(earns/takes 0-300 gold)</p>
              <form action="/find-gold" method="post">
                <input type="hidden" name="steal" />
                <input type="submit" value="Find Gold!" class="btn" />
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="activities-row mx-5 mb-3">
      <h4>Activities:</h4>
      <div class="anyClass">
        <c:forEach var="action" items="${actionList}">
          <p class="action"><c:out value="${action}" /></p>
        </c:forEach>
      </div>
    </div>
    <a href="/reset-game" class="btn mx-5">Reset Game</a>
  </body>
</html>
