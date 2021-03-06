<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	
<link rel="stylesheet" href="../dh_css/index.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<style>
.bx-wrapper {
	border: 0;
	background: #fbfbfb;
	box-shadow: none;
} /* 슬라이드 테두리 제거 */



.bxslider :nth-child(1) {
	
}
</style>

</head>


<body>

	<!-- 슬라이더 영역 -->
	<div class="bxslider" id="slider">
		<div>
			<img src="../dh_img/info1_img01.png">
		</div>
		<div>
			<img src="../dh_img/info1_img02.png">
		</div>
		<div>
			<img src="../dh_img/info1_img03.png">
		</div>
		<div>
			<img src="../dh_img/info1_img04.png">
		</div>
		<div>
			<img src="../dh_img/info1_img05.png">
		</div>
		<div>
			<img src="../dh_img/info1_img06.png">
		</div>
		<div>
			<img src="../dh_img/info1_img07.png">
		</div>


	</div>
	<!-- bxslider 닫음 -->



	<!-- bxslider설정 -->
	<script>
		let slider = $('.bxslider').bxSlider({
			auto : true,
			autoControls : false,
			stopAutoOnClick : false,
			pager : false,
			controls : false,
		});
	</script>




	<!-- 지도 영역 -->
	<div id="img_content">

		<div class="plan_tit">
			<p class="tit">서울 합정점 평면도</p>
			<p class="dsc">원하시는 영역을 클릭하시면 해당 사진을 보실 수 있습니다.</p>
		</div>




		<!-- img 영역   -->
		<div class="map-1">
			<img src="../dh_img/info_map1_1.png" usemap="#Map" id="imgId">
			<map name="Map">
				<area shape="rect" coords="10,77,109,227"
					href="javascript:custom_function(0);" alt="Sun" />
				<area shape="rect" coords="278,199,344,240"
					href="javascript:custom_function(1);" alt="Sun" />
				<area shape="rect" coords="23,46,191,97"
					href="javascript:custom_function(2);" alt="Sun" />
				<area shape="rect" coords="106,144,191,178"
					href="javascript:custom_function(3);" alt="Sun" />
				<area shape="rect" coords="116,110,289,157"
					href="javascript:custom_function(4);" alt="Sun" />
				<area shape="rect" coords="188,166,247,210"
					href="javascript:custom_function(5);" alt="Sun" />
				<area shape="rect" coords="314,60,394,179"
					href="javascript:custom_function(6);" alt="Sun" />
			</map>

		</div>

		<script>
			function custom_function(index) {

				if (typeof slider.goToSlide === 'function') {
					slider.goToSlide(index); // 해당 슬라이더로 이동 
				} else { //무엇인가 잘못됬으면
					alert('에러');
				}

				if (index == 0) {
					document.getElementById("imgId").src = "../dh_img/info_map1_1.png";
				}
				if (index == 1) {
					document.getElementById("imgId").src = "../dh_img/info_map1_2.png";
				}
				if (index == 2) {
					document.getElementById("imgId").src = "../dh_img/info_map1_3.png";
				}
				if (index == 3) {
					document.getElementById("imgId").src = "../dh_img/info_map1_4.png";
				}

				if (index == 4) {
					document.getElementById("imgId").src = "../dh_img/info_map1_5.png";
				}

				if (index == 5) {
					document.getElementById("imgId").src = "../dh_img/info_map1_6.png";
				}

				if (index == 6) {
					document.getElementById("imgId").src = "../dh_img/info_map1_7.png";
				}

			}
		</script>
		
	<script type="text/javascript" src="../dh_css/jquery.js"></script>
	
<script type="text/javascript">
			$(function() {
				var observer = new MutationObserver(function(mutations) {
					target = document.getElementById('slider');
				    	let child = $(target).find("div");
						for (var i = 0; i < 9; i++) {
							let includeFalse = $(child[i]).attr("aria-hidden");
							  if(includeFalse == 'false'){  
								  alert(i); 
								 
								 
								 if (i == 1) {
										document.getElementById("imgId").src = "../dh_img/info_map1_1.png";
									}
								 if (i == 2) {
										document.getElementById("imgId").src = "../dh_img/info_map1_2.png";
									}
								 if (i == 3) {
										document.getElementById("imgId").src = "../dh_img/info_map1_3.png";
									}
								 if (i == 4) {
										document.getElementById("imgId").src = "../dh_img/info_map1_4.png";
									}
								 if (i == 5) {
										document.getElementById("imgId").src = "../dh_img/info_map1_5.png";
									}
								 if (i == 6) {
										document.getElementById("imgId").src = "../dh_img/info_map1_6.png";
									}
								 if (i == 7) {
										document.getElementById("imgId").src = "../dh_img/info_map1_7.png";
									}
								 
						
							 }  // if문 닫음							
							
						}  // for문 닫음
						
						
						
						
						
						
						
						
				    
				});   // function mutations 닫음

				
				let target = document.getElementById('slider');
				observer.observe(target, { attributes : true, attributeFilter : ['style'] });
			
			});  // function 닫음
				
				/* let ss = $("#slider");
				$(ss).csschange(function() {
				let child = $(ss).children();
				$(child).each(function () {
					console.log($(child).attr("aria-hidden"));
				});
					
				
				
				}); */
</script>




	</div>






</body>
</html>