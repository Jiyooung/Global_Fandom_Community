<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="gfc.config.Dev"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<%
Dev dev = new Dev();
%>
<script
	src="https://maps.google.com/maps/api/js?key=<%=dev.getMapAPIKey()%>"
	async defer></script>
<title>Map</title>
<link rel="stylesheet" href="css/list.css">
<style type="text/css">
.location_main {
	text-align: center;
}

h3 {
	display: inline-block;
	width: 100px;
}

#acode {
	width: 200px;
	height: 30px;
	right: 10px;
	text-decoration: none;
	font-size: 15px;
	border: solid 1px #707070;
	border-radius: 5px;
}

#filter {
	width: 150px;
	height: 30px;
	right: 10px;
	font-size: 15px;
	text-decoration: none;
	border: solid 1px #707070;
	border-radius: 5px;
}

#addlocation {
	width: 150px;
	height: 30px;
	font-size: 15px;
	text-decoration: none;
	padding: 4px;
	padding-left: 50px;
	padding-right: 50px;
	border: solid 1px #707070;
	color: black;
	border-radius: 5px;
	border: solid 1px #707070;
}

#map {
	top: 10px;
	width: 1000px;
	height: 500px;
	background-color: gray;
	margin: 0 auto;
}
</style>
<script type="text/javascript">

		$(function() {
			//navigator.geolocation.getCurrentPosition(initmap); // callback 메소드
			/* if(${msg} != null){
				alert(${msg});
			}  */
			<c:if test="${not empty msg}">
	    		alert("${msg}");
			</c:if>
			
			if ("${ucode}" != "") {
				filterAcode(${user.acode});
			}else {
				filterAcode(0);
			}
			
			$('#filter').click(function(){
				filterAcode($('#acode').val());
			});
		});
		
		function filterAcode(acode) {		
			$.ajax({ // ajax 통신 {}
				url:'mapData',
				type:'GET',
		    //dataType : "json",
				data :{
					acode : acode
				},
				success:function(data) {
					de = data;
					display(data);
				},
				error:function(error) {
					alert("error" + error);
				}
			});
		}

		function display(data) {
			//마커 이미지
      //var customicon = 'http://drive.google.com/uc?export=view&id=1tZgPtboj4mwBYT6cZlcY36kYaQDR2bRM'
			var infowindow = new google.maps.InfoWindow();
			let center = {lat: 37.56154517066801 , lng: 126.9930503906448 }
			let map = new google.maps.Map(document.getElementById('map'), {
				zoom : 12,
				center : center
			});
			
			let marker = new google.maps.Marker({
				position : center,
				map : map,
		    //icon: customicon, //마커 아이콘
				label : 'City Hall',
				desc : 'The center of Seoul'
				})
			google.maps.event.addListener(marker,'click',function(){
				var contentString =
					'<div id="content">'+
					'<table><tr><td>Place :</td><td><b>'+this.label+
					'</b></td></tr><tr><td>Content :</td><td><b>'+this.desc+
					'</b></td></tr></table></div>';
      	infowindow.setContent(contentString);
      	infowindow.open(map, marker); //인포윈도우가 표시될 위치
			});
			
			for (let d of data) {
				if (d.lconfirm == 1){
					let marker = new google.maps.Marker({
						position : {lat:parseFloat(d.llat), lng:parseFloat(d.llong)},
	          //icon: customicon, //마커 아이콘
						map : map, //마커를 표시할 지도
						label : d.lname
					});

					google.maps.event.addListener(marker,'click',function(){
						var contentString =
							'<div id="content">'+
							'<table><tr><td>Place :</td><td><b>'+d.lname+
							'</b></td></tr><tr><td>By :</td><td><b>'+d.user.uname+
							'</b></td></tr><tr><td>Related Artist :</td><td><b>'+d.artist.aname+
							'</b></td></tr><tr><td>Address :</td><td><b>'+d.laddress+
							'</b></td></tr><tr><td>Content :</td><td><b>'+d.ldesc+
							'</b></td></tr></table></div>';
	          infowindow.setContent(contentString);
	          infowindow.open(map, marker);
					});
				}
			}
		}
	</script>


</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class="location_main">
					<h1>Map</h1><hr>
					
					<select id="acode" name="acode">
						<option value="0">All</option>
						<option value="1">아이유 IU</option>
						<option value="2">블랙핑크 BLACKPINK</option>
						<option value="3">방탄소년단 BTS</option>
					</select>
					<button id="filter">Apply</button>
					<c:choose>
						<c:when test="${not empty user.userid}">
							<a id="addlocation" href="addLocationForm"> Add New Spot </a>
						</c:when>
					</c:choose>
					<div id="map"></div>
				</div>
			</div>
		</div>
		<div class="row">
		<div class="col-sm-12" style="border: 1px solid #ccc;border-radius: 20px; margin-top: 20px;">
		<br><br>
		<table >
			<tr>
				<th>Related Artist</th>
				<th>Place</th>
				<th>Address</th>
				<th>Content</th>
				<th>By</th>
			</tr>
			<c:forEach var="location" items="${locationList}">
				<tr>
					<td>${location.artist.aname}</td>
					<td>${location.lname}</td>
					<td>${location.laddress}</td>
					<td>${location.ldesc}</td>
					<td>${location.user.uname}</td>
				</tr>
			</c:forEach>
		</table>
		</div>
		</div>
	</div>
	<div id="fmargin"></div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>