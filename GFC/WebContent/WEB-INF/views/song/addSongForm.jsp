<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style type="text/css">
.but{
	vertical-align:middle; 
	background-color: #400080;
	border: medium;
	color: white;
	padding: 5px 10px;
	text-align: center;
	text-decoration: none;
	
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	border-radius:10px;
	
	bottom: 10px;
}

table, th, tr, td, h1 {
	text-align: center;
}


</style>

<link rel="stylesheet" href="css/list.css">

<title>add Song Form</title>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-sm-12" id="grid" style="border: 1px solid #ccc; padding: 50px;" >

<h1 style="text-align: center;" >New Song</h1><hr>
	<form action="addSong" method="post" style="text-align: center;"  >	
		<input type="hidden" name="page" value="1">

		<table>
			<tr>
				<td>제목 :</td>
				<td><input type="text" name="stitle"></td>
			</tr>

			<tr>
				<td>가수 :</td>
				<td><select name="acode">
						<!-- db에서 가져오기 -->
						<option value="1">아이유 IU</option>
						<option value="2">블랙핑크 BLACKPINK</option>
						<option value="3">방탄소년단 BTS</option>
				</select></td>
			</tr>
			<tr>
				<td>작곡가 :</td>
				<td><input type="text" name="swriter"></td>
			</tr>
			<tr>
				<td>작사가 :</td>
				<td><input type="text" name="slyricist"></td>
			</tr>

			<tr>
				<td>발매일(2020.02.20) :</td>
				<td><input type="date" name="sdate"></td>
			</tr>
			<tr>
				<td>앨범 :</td>
				<td><input type="text" name="salbum"></td>
			</tr>
			<tr>
				<td>앨범이미지 :</td>
				<td><input type="text" name="simage"></td>
			</tr>
			<tr>
				<td>한글가사 :</td>
				<td><textarea name="klyric" rows="4" cols="50"></textarea></td>
			</tr>
			<tr>
				<td>유튜브링크 :</td>
				<td><input type="text" name="youtubelink"></td>
			</tr>
			
		</table>
		<hr>
		<input class="but" type="submit" value="Submit">
	</form>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</div>
    </div>
</div>
</body>
</html>