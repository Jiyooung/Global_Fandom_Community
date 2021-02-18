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

<title>add Song Form</title>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-sm-12">


	<form action="addSong" method="post" style="margin-top:100px;">	<!--**** 임시로 css 추가한거 충돌나면 지우기 *****-->
		<input type="hidden" name="page" value="1">

		<table border="1px solid black">
			<tr>
				<td>제목 :</td>
				<td><input type="text" name="stitle"></td>
			</tr>

			<tr>
				<td>가수 :</td>
				<td><select name="acode">
						<!-- db에서 가져오기 -->
						<option value="1">아이유</option>
						<option value="2">블랙핑크</option>
						<option value="3">방탄소년단</option>
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
		<input type="submit" value="Submit">
	</form>

</div>
    </div>
</div>
	<div id="fmargin"></div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>