<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Pluto</title>
<style type="text/css">
tr.r:hover {
	cursor: pointer;
	background-color: #ece3f4;
}
table, th, tr, td, h1 {
	text-align: center;
}
.page{
	text-decoration: none;
	color : #800040;
}
.page:hover{
	text-decoration: overline;
	color : #ff80c0;
}
</style>
<style type="text/css">
.hi {
	background-image:
		URL(http://img.vogue.co.kr/vogue/2020/06/style_5efae99e1084e.png);
	background-position: 0px 0px;
	background-size: 100%;
	opacity: 1.4 !important;
	filter: alpha(opacity = 50);
}

.aa .bb{
	float: left;
}
.aa .cc{
	float: left;
	margin-left: 10px;
}

.my_comment_ul {
	list-style: none;
	padding-left: 0px;
}

.jb-table-row {
	display: table-row;
}

.jb-table-cell {
	min-width:100px;
	max-width:230px;
	display: table-cell;
	padding: 0px 5px;
}
</style>
</head>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%-- <%@ include file="/WEB-INF/views/common/jsp/footer.jsp" %> --%>
<body>
	<main class="container">
		<div class="p-4 p-md-5 mb-4 text-white rounded bg-dark hi">
			<div class="col-md-6 px-0">
				<h1 class="display-4 fst-italic">PLUTO</h1>
				<p class="lead my-3">
					<strong>Connect K-pop with fans all over the world</strong><br>
					<br>
					<br>
					<br>
					<br>
					<br> Wherever you are, Which language you speak, <br>
					Pluto will always be the planet for your adventure to K-pop. <br>
					Get the best translation of K-pop lyrics.

				</p>
			</div>
		</div>

		<div class="row mb-2">
			<div class="col-md-6">
				<div
					class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<strong class="d-inline-block mb-2">Worldwide</strong>
						<h3 class="mb-0">Charts</h3>
						<br>
						<table>
							<c:forEach var="song" items="${songList}" varStatus="status">
								<tr class="r"
									onclick="location.href='/GFC/songDetail?scode=${song.scode}'">
									<td><strong>${status.count}</strong></td>
									<td><img alt="" src="${song.simage}" width="50px"></td>
									<td>${song.stitle}</td>
									<td>${song.artist.aname}</td>
									<td>${song.sviews}</td>
								</tr>
							</c:forEach>
						</table>
					</div>

				</div>
			</div>
			<div class="col-md-6">
				<div class="row border">
					<div style="margin: 20px 0px 15px 20px">
						<!-- 이미지 -->
						<div>
						<strong class="d-inline-block mb-2">Today's Song</strong>
						</div>
						<div class="aa">
							<div class="bb">
								<img alt="" src="${recommendSong.simage}" width="200px">
							</div>
							<div class="cc">
								<ul class="my_comment_ul">
									<li>
										<h4 style="margin-bottom: 30px; max-width: 350px">
											<a href="/GFC/songDetail?scode=${recommendSong.scode}">${recommendSong.stitle}</a>
										</h4>
									</li>
									<li class="jb-table-row"><span class="text-muted jb-table-cell">ARTIST</span> <span class="jb-table-cell">${recommendSong.artist.aname}</span>
									</li>
									<li class="jb-table-row"><span class="text-muted jb-table-cell">ALBUM</span> <span class="jb-table-cell">${recommendSong.salbum}</span>
									</li>
									<li class="jb-table-row"><span class="text-muted jb-table-cell">WRITER</span> <span class="jb-table-cell">${recommendSong.swriter}</span>
									</li>
									<li class="jb-table-row"><span class="text-muted jb-table-cell">LYRICIST</span> <span class="jb-table-cell">${recommendSong.slyricist}</span>
									</li>
									<li class="jb-table-row"><span class="text-muted jb-table-cell">RELEASED</span> <span class="jb-table-cell">${recommendSong.sdate}</span>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


  </main>

	<div id="fmargin"></div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>