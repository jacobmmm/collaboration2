<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BLOG</title>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

<!--  <script src="<c:url value="/resources/js/angular.min.js"/>"></script>-->
<script src="<c:url value="/resources/js/jquery.js"/>"></script>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  <!--    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>-->
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a  href="forum">FORUM </a>
         </li>
      <!--   <li><a href="views/NewFile.jsp">JOBS</a></li>-->
      <li><a href="blog">BLOG</a></li>
   <!--   <c:if test="${pageContext.request.userPrincipal.name != null}">  
      <li><a href="chatPage">CHAT</a></li>
    </c:if>-->
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

<!--  <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    
                    <li>
                        <a href="home" data-toggle="tooltip" data-placement="left" title="GO TO HOME!"><span class="glyphicon glyphicon-home"></span></a>
                    </li>
                </ul>
</div>-->




<c:url var="addAction" value="/blog/add"></c:url>

  <div class="row" style="background-color:LightBlue;">
          <div class="col-md-12">
            <h1 style="color:red;"> Create Your Blog</h1>
           </div>
        </div>


	
		<div class="well">	   

              <form:form role="form" commandName="blog" action="${addAction}">
               <form:errors path="title" cssClass="error"/><br/>
               <form:errors path="content" cssClass="error"/><br/>
			   
                <div class="form-group">
                <label>  Blog Title</label>
                  <form:input class="form-control" placeholder="Enter Title" type="text" path="title"/>
                </div>
               
                <div class="form-group">
                 <label> Text</label>
                  
                  <form:textarea class="form-control" placeholder="Enter Content" rows="10" path="content"></form:textarea>
                </div>
               
                <button type="submit" >Enter</button>
              </form:form>
              </div>
            
            
            
            <div  ng-app="repeatSample" class="section" style="background-color:LightBlue;">
	<div class="container">
	




		<!-- Angular script -->
		

		<script>
			var b = ${blogs};

			angular.module('repeatSample', []).controller('repeatController',
					function($scope) {
						$scope.blogs = b;

						$scope.sort = function(keyname) {
							$scope.sortKey = keyname; //set the sortKey to the param passed
							$scope.reverse = !$scope.reverse; //if true make it false and vice versa
						}

					});
		</script>

		

		<div class="bs-component" ng-controller="repeatController">

			<!--  <form class="form-inline">
				<div class="form-group">
					<label>Search</label> <input type="text" ng-model="search"
						class="form-control" placeholder="Search">
				</div>
			</form>-->


			

			  <table class="table table-striped table-hover">
				<thead>
					<tr>

						
						<th ng-click="sort('title')">Title <span
							class="glyphicon sort-icon" ng-show="sortKey=='name'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('content')">Content <span
							class="glyphicon sort-icon" ng-show="sortKey=='price'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('user')">User <span
							class="glyphicon sort-icon" ng-show="sortKey=='category'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('date')">Date <span
							class="glyphicon sort-icon" ng-show="sortKey=='category'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						

					</tr>
				</thead>
				<tbody>
					
					<tr ng-repeat="blog in blogs|orderBy:sortKey:reverse|filter:search">
						<td>{{blog.title}}</td>
						<td>{{blog.content}}</td>
						<td>{{blog.user}}</td>
						<td>{{blog.date}}</td>
					</tr>
				</tbody>
			</table>

<!--<div class="container" >
<hr>
<ul ng-repeat="blog in blogs">
  <div class="jumbotron" >
  
    <h1>{{blog.title}}</h1>
    <h4><strong>Name:{{blog.user}}</strong></h4>
    <p>{{blog.content}}</p>
   
  </div>
  </ul>
</div>-->

		</div>
	</div>
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