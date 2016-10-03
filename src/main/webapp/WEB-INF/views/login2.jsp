<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body style="background-image: url(<c:url value="/resources/635454500282550735_120419CBKlinenberg-HappyPeople-EX.jpg.CROP.rectangle3-large.jpg"/>);">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  <!--    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>-->
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a  href="#">FORUM </a>
         </li>
       <li><a href="#">JOBS</a></li>
      <li><a href="#">BLOG</a></li>
    </ul>
  <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
<!--<form class="form-horizontal" role="form"  action="perform_login" method="post">
<strong>User ID  : </strong><input type="text" name="username"/><br>
<strong>Password : </strong><input type="password" name="password"/><br>
<input type="submit" value="login"/>
</form>-->

<!--  <section id="services" class="services bg-danger">-->
      <div class="container">
        <div class="row text-center">
          <div class="col-lg-10 col-lg-offset-1">
            <h2 style="color:brown;">
              <i class="fa fa-sign-in" aria-hidden="true"></i>
              <br>Sign In</h2>
            <hr class="small">
            <div class="section">
              <form class="form-horizontal" role="form" action="perform_login" method="post">
              
              
              <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                <div class="span9 center">
                   	<c:if test="${not empty msg}">
                 		<div class="msg">${msg} <br><br></div>
            		</c:if>
            		
                <div class="form-group">
                  <div class="col-sm-2" style="color:brown;">
                    <label for="inputEmail3" class="control-label">Username</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="username" placeholder="Username">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2" style="color:brown;">
                    <label for="inputPassword3" class="control-label">Password</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" name="password" placeholder="Password">
                  </div>
                </div>
                
                <div class="form-group">
                  <button type="submit" class="btn btn-default">Sign in</button>
                </div>
                
                </div>
                
                
              </form>
            </div>
          </div>
        </div>
      </div>
   <!--   </section>-->

</body>
</html>