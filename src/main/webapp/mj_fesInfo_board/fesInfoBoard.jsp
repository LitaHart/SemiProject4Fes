<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="mj_fesInfo_board/css/fesInfoDeco.css">
</head>
<body>

	<div id="fesInfo">
		<div class="fesInfoTitle">
			${fes.title }
			<ul>
				<li>장소 : ${fes.place }</li>
				<li>일시 : ${fes.fdate }</li>
				<li>${fes.program }</li>
			</ul>
			<ul class="programLink">${fes.orgLink }</ul>

			<button onclick="history.back(-1)"
				class="button button--winona button--border-thick button--round-l button--text-upper button--size-s button--text-thick"
				data-text="이전으로">
				<span>이전으로</span>
			</button>
		</div>

	</div>
	<div>
		<img class="fesInfoImg" src="${fes.mainImg }">
	</div>

</body>
</html>