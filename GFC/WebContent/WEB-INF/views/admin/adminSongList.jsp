<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/common/header.jsp"%>



<style type="text/css">
tr.r:hover {
	cursor: pointer;
	background-color: #ece3f4;
}

table, th, tr, td, h1 {
	text-align: center;
}
</style>

<link rel="stylesheet" href="css/list.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Song List</title>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-sm-12" id="grid" style="border: 1px solid #ccc;">
	<h1 style="padding:20px;">노래목록보기</h1>

	<table>
		<tr>
			<td>노래코드</td>
			<td>제목</td>
			<td>가수</td>
			<td>가수명</td>
			<td>작곡가</td>
			<td>작사가</td>
			
			<td>발매일</td>
			<td>앨범</td>
			<td>앨범이미지</td>
			
		</tr>
		<c:forEach var="song" items="${songList}">
			<tr>
				<td><a href="/GFC/songDetail?scode=${song.scode}">${song.scode}</a></td>
				<td><a href="${song.stitle}">${song.stitle}</a></td>
				<td>${song.artist.acode}</td>
				<td>${song.artist.aname}</td>
				<td>${song.swriter}</td>
				<td>${song.slyricist}</td>
				
				<td>${song.sdate}</td>
				<td>${song.salbum}</td>
				<td><img alt="" src="${song.simage}"></td>
				
			</tr>
		</c:forEach>
	</table>
	
	<c:set var="cnt" value="${songCnt}" />
		<c:choose>
			<c:when test="${empty songList}">
				<p>No Song</p>
			</c:when>
			<%-- <c:when test="${not empty songList}"> --%>
			<c:otherwise>
				
					<c:forEach begin="1" end="${cnt}" varStatus="status">
								<a href="adminSongList?page=${status.index}">${status.index}</a>
							</c:forEach>
			
			</c:otherwise>
		</c:choose>
		<div id="fmargin"></div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	</div>
    </div>
</div>
</body>
</html>