<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add Song Form</title>
</head>
<body>
	<form action="addSong" method="post" enctype="multipart/form-data">
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
				<td><input type="file" name="simage"></td>
			</tr>
			<tr>
				<td>한글가사 :</td>
				<td><input type="text" name="klyric"></td>
			</tr>
			<tr>
				<td>유튜브링크 :</td>
				<td><input type="text" name="youtubelink"></td>
			</tr>
			<tr>
				<td>키워드 (3개) :</td>
				<td><input type="checkbox" name="skeyword" value="1">봄
					<input type="checkbox" name="skeyword" value="2">여름 <input
					type="checkbox" name="skeyword" value="3">가을 <input
					type="checkbox" name="skeyword" value="4">겨울</td>
			</tr>
		</table>
		<input type="submit" value="Submit">
	</form>
</body>
</html>