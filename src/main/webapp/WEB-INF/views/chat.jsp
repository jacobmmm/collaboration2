<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <%@include file="header.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CHAT</title>

<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet" type="text/css" />
    <link href="resources/css/demo.css" rel="stylesheet" type="text/css" />
    <script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
    
</head>



<body ng-app="chatApp" style="background-color:LightBlue;">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  <!--    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>-->
    <ul class="nav navbar-nav">
      <li class="active"><a href="home">Home</a></li>
      <li><a  href="forum">FORUM </a>
         </li>
      <!--   <li><a href="views/NewFile.jsp">JOBS</a></li>-->
      <li><a href="blog">BLOG</a></li>
    <c:if test="${pageContext.request.userPrincipal.name != null}">  
      <li><a href="chatPage">CHAT</a></li>
    </c:if>
    </ul>
  <ul class="nav navbar-nav navbar-right">
  <c:if test="${pageContext.request.userPrincipal.name  == null}">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name != null}">
      <li><a href="logout"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
      </c:if>
      
    </ul>
  </div>
</nav>

<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    
                    <li>
                        <a href="home" data-toggle="tooltip" data-placement="left" title="GO TO HOME!"><span class="glyphicon glyphicon-home"></span></a>
                    </li>
                </ul>
</div>
<br><br><br><br>

	<div ng-controller="ChatCtrl" class="container">
      <form ng-submit="addMessage()" name="messageForm">
        <input type="text" placeholder="Send a message..." ng-model="message" />
        <div class="info">
          <span class="count" ng-bind="max - message.length" ng-class="{danger: message.length > max}">140</span>
          <button ng-disabled="message.length > max || message.length === 0">Send</button>
        </div>
      </form>
      <hr />
      <p ng-repeat="message in messages | orderBy:'time':true" class="message">
      	<span>{{message.username}}</span>
        <time>{{message.time | date:'HH:mm'}}</time>
        <span ng-class="{self: message.self}">{{message.message}}</span>
      </p>
    </div>
    
    <script src="resources/libs/sockjs/sockjs.min.js" type="text/javascript"></script>
    <script src="resources/libs/stomp-websocket/lib/stomp.min.js" type="text/javascript"></script>
    <script src="resources/libs/angular/angular.min.js"></script>
    <script src="resources/libs/lodash/dist/lodash.min.js"></script>
    <script src="resources/js/app.js" type="text/javascript"></script>
    <script src="resources/js/controllers.js" type="text/javascript"></script>
    <script src="resources/js/services.js" type="text/javascript"></script>
</body>
</html>