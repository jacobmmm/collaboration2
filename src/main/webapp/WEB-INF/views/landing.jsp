<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <script>
var app=angular.module('myApp',[]);
app.controller('myController',function($scope, $http) {
    $http.get("http://localhost:8081/collaborationsite/event").
    then(function(response) {
        $scope.myData = response.data;
    });
});
</script>
  
<title>Insert title here</title>
<style>
footer {
      background-color: #f2f2f2;
      padding: 5px;
    }
    
.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }    
    
</style>
</head>
<body style="background-color:LightBlue;">
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

<div class="jumbotron" style="background-image: url(<c:url value="/resources/635454500282550735_120419CBKlinenberg-HappyPeople-EX.jpg.CROP.rectangle3-large.jpg"/>);">
  <div class="container text-center">
    <h1 style="color: red;">NIITconnect</h1>
    <p style="color:red;">connect, share, explore, ROCK!!!!</p>
    </div>
</div>
<h1 style="font-family: Impact, Charcoal, sans-serif">LOCATION</h1>
<p><strong>Bangalore, India</strong></p>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC1uVVxWa2xJoqmW_9bYkV0iyRXAwHczOM&callback=initMap"
  type="text/javascript"></script>
<script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script><div style='overflow:hidden;height:440px;width:700px;'><div id='gmap_canvas' style='height:440px;width:700px;'></div><div><small><a href="http://www.embedgooglemaps.com">Generate your Google map here, quick and easy!</a></small></div><div><small><a href="https://binaireoptieservaringen.nl/">Meer informatie over binaire opties in Nederland vind je hier!</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type='text/javascript'>function init_map(){var myOptions = {zoom:10,center:new google.maps.LatLng(12.9329463,77.58386919999998),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(12.9329463,77.58386919999998)});infowindow = new google.maps.InfoWindow({content:'<strong>NIIT Connect ltd</strong><br>Jayanagar 3rd block,Bangalore<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
<br>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="<c:url value="/resources/30112010410.jpg"/>" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="<c:url value="/resources/about-us.jpg"/>" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/Slider635467338921815974.jpg"/>" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="<c:url value="/resources/DSC_1177.jpg"/>" alt="Flower" width="460" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<!--  <h1 style="font-family: "Comic Sans MS", cursive, sans-serif">EVENTS</h1>
 <div ng-app="myApp" ng-controller="myController">-->
<!--  <ul ng-repeat="x in myData">
<h3>{{x.title}}</h3>
<li>{{x.organization}}</li>
<li>{{x.date}}</li>

</ul>
</div>-->
 <!--  <ul ng-repeat="x in myData">
<div class="container">
  <div class="row">
    <div class="col-sm-8">
      <div class="panel panel-danger">
       <div class="panel-heading"><h3>{{x.title}}</h3></div>
        <div class="panel-body">
<li><h3 style="font-family: Impact, Charcoal, sans-serif">By:</h3><h3>{{x.organization}}</h3></li>
<li><h3 style="font-family: Impact, Charcoal, sans-serif">Date:</h3><h3>{{x.date}}</li></h3></div>
        
      </div>
    </div>
    </div>
    </div>
    </ul>-->
    </div>



<footer class="container-fluid text-center">
  <p>Online Store Copyright</p>
  <i class="fa fa-facebook"></i>       
      
    
<i class="fa fa-instagram"></i>      
      
    
        
        
<i class="fa fa-twitter"></i>        
     
<i class="fa fa-yahoo"></i>          
<i class="fa fa-youtube"></i> 
</footer>

</body>
</html>