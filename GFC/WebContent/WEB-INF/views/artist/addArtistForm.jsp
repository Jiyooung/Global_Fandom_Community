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
	<link rel="stylesheet" href="css/list.css">
<title>add Artist Form</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-12"id="grid" style="border: 1px solid #ccc;">
	<form action="addArtist" method="post">
		<table>
			<tr>
				<td>가수이름 :</td>
				<td><input type="text" name="aname"></td>
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