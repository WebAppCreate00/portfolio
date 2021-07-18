<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/include/staticFiles.jsp"%>
<%@ include file="/include/header.jsp"%>
<section>
<article class="w3-card-4 w3-center">
	<h3 class="w3-center">여행지를 소개합니다.</h3>
	<img src="images/HK.png" class="w3-hover-grayscale" style="width: 10%">
	<p class="w3-center">Travel to Hong Kong</p>
	<br>

	<!-- Responsive Grid. Four columns on tablets, laptops and desktops. Will stack on mobile devices/small screens (100% width) -->
	<div class="w3-row-padding w3-center">
		<div class="w3-col m3">
			<img src="images/travel1.jpg" style="width: 70%"
				onclick="onClick(this)" class="w3-round" alt="열람차">
		</div>

		<div class="w3-col m3">
			<img src="images/travel2.jpg" style="width: 70%"
				onclick="onClick(this)" class="w3-round" alt="홍콩 야경">
		</div>

		<div class="w3-col m3">
			<img src="images/travel3.jpg" style="width: 70%"
				onclick="onClick(this)" class="w3-round" alt="홍콩 야시장">
		</div>

		<div class="w3-col m3">
			<img src="images/travel4.jpg" style="width: 70%"
				onclick="onClick(this)" class="w3-round" alt="허유산 망고">
		</div>
	</div>

	<div class="w3-row-padding w3-center w3-section">
		<div class="w3-col m3">
			<img src="images/travel5.jpg" style="width: 70%"
				onclick="onClick(this)" class="w3-round" alt="디즈니랜드1">
		</div>

		<div class="w3-col m3">
			<img src="images/travel6.jpg" style="width: 70%"
				onclick="onClick(this)" class="w3-round" alt="디즈니랜드2">
		</div>

		<div class="w3-col m3">
			<img src="images/travel8.jpg" style="width: 70%"
				onclick="onClick(this)" class="w3-round" alt="디즈리랜드3">
		</div>

		<div class="w3-col m3">
			<img src="images/travel7.jpg" style="width: 70%"
				onclick="onClick(this)" class="w3-round" alt="디즈니랜드4">
		</div>
	</div>
	</div>
</article>
</section>
<h3> 여행 후기 </h3>
홍콩은 야경이 아름답고 야시장이 잘 이루어진 도시입니다. <br>
늦은 밤까지도 환하고 밝은 이 도시로 여행을 떠나보세요 ~! <br>
홍콩에는 디즈니랜드가 있어 어린 아이들도 만족! 어른들도 동심의 나라 디즈니랜드로 가보세요 !<br>
<h4><a href="https://blog.naver.com/mezero_x/221542434817">
							>>see more ---</a></h4>
<%@ include file="/include/footer.jsp"%>
</body>
</html>