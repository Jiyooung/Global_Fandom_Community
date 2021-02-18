<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<title>Pluto</title>
<style type="text/css">
body{
	padding-top:70px;
}
#plutobrand{
	font-size: 1.2em;
}
#fmargin{
	height:100px;
}
</style>
</head>
<body>

	<!-- <span class="sr-only">(current)</span> -->
	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark justify-content-between">
	<img  onclick="location.href='main'" alt = "pluto" src="img/planet.png" width ="100" height = "100" style="padding: 15px;cursor: pointer">
		<a class="navbar-brand" href="main" id="plutobrand">PLUTO</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarCollapse" aria-controls="navbarCollapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav mr-auto">	
				
					<c:choose>
			        	<c:when test="${not empty ucode}">
			    			<c:choose>
								<c:when test="${user.userid eq 'admin'}">
									
									<li class="nav-item dropdown">
								    	<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Song</a>
								    	<div class="dropdown-menu">
								    		<a class="dropdown-item" href="adminSongList?page=1">SongList for Admin</a>
								    		<a class="dropdown-item" href="addSongForm">Song Add</a>
								    		<a class="dropdown-item" href="songMain?ucode=${ucode}&page=1">Main</a>
								    	</div>
								    </li>
								    <li class="nav-item dropdown">
								    	<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">K-Map</a>
								    	<div class="dropdown-menu">
								    		<a class="dropdown-item" href="adminConfirmLocation">K-Map Confirm </a>
								    		<a class="dropdown-item" href="addLocationForm">K-Spot Add</a>
								    		<a class="dropdown-item" href="locationList">K-Spot List </a>
								    		<a class="dropdown-item" href="map">K-Map</a>
								    	</div>
								    </li>
								    <li class="nav-item active">
								    	<a class="nav-link" href="userList">UserList</a>
								    </li>
								</c:when>
								<c:otherwise>
									<li class="nav-item active">					    
			          					<a class="nav-link" href="songMain?ucode=${ucode}&page=1">Songs</a>	<!-- 로그인 되어있을 때-->
				    				</li>
				    				<li class="nav-item active"><a class="nav-link" href="map">K-Map</a></li>
								
								</c:otherwise>
							</c:choose> 
			          	</c:when>
			          	<c:otherwise>
			          			<!-- 로그인 안했을 때 -->
			          		<li class="nav-item active"><a class="nav-link" href="songMain?ucode=-1&page=1">Songs</a></li>
			          		<li class="nav-item active"><a class="nav-link" href="map">K-Map</a></li>
			          	</c:otherwise>
			        </c:choose>
				
			
				
			</ul>
			
			<ul class="navbar-nav ml-auto">
				<c:choose>
					<c:when test="${not empty user.userid}">
						<li class="nav-item active"><a class="nav-link">Welcome ${user.uname}
								</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="logoutUser">Logout</a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item active"><a class="nav-link"
							href="loginForm">Login</a></li>
					</c:otherwise>
				</c:choose>
				
				</ul>	
				
			

		</div>
	</nav>


<div style="margin-bottom:50px;"></div>


</body>
</html>
