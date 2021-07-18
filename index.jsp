<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/include/staticFiles.jsp"%>
<%@ include file="/include/header.jsp"%>
<section>
	<article class="w3-card-4 w3-center">

		<a href="http://maps.google.com/maps?q=대한민국+부산광역시+동구+초량동463-2"><img
			src="images/index01.jpg" class="w3-hover-grayscale"
			style="width: 50%"></a>
		<div class="w3-container">
			<h4>
				<b>이바구길</b>
			</h4>
			<p>관광명소</p>
		</div>
	</article>
	<br>
	<article id="main">
		<!-- Container (Portfolio Section) -->
		<div class="w3-content w3-container w3-padding-64" id="portfolio">
			<h3 class="w3-center">이바구길을 소개합니다.</h3>
			<p class="w3-center">Here are some of images.</p>
			<br>

			<!-- Responsive Grid. Four columns on tablets, laptops and desktops. Will stack on mobile devices/small screens (100% width) -->
			<div class="w3-row-padding w3-center">
				<div class="w3-col m3">
					<img src="images/img2.jpg" style="width: 100%"
						onclick="onClick(this)" class="w3-border w3-padding" alt="이바구 공작소">
				</div>

				<div class="w3-col m3">
					<img src="images/img3.jpg" style="width: 100%"
						onclick="onClick(this)" class="w3-border w3-padding" alt="이바구여행캡슐">
				</div>

				<div class="w3-col m3">
					<img src="images/img4.jpg" style="width: 100%"
						onclick="onClick(this)" class="w3-border w3-padding"
						alt="다락방장난감박스">
				</div>

				<div class="w3-col m3">
					<img src="images/img5.jpg" style="width: 100%"
						onclick="onClick(this)" class="w3-border w3-padding" alt="모노레일">
				</div>
			</div>

			<div class="w3-row-padding w3-center w3-section">
				<div class="w3-col m3">
					<img src="images/img6.jpg" style="width: 100%"
						onclick="onClick(this)" class="w3-border w3-padding"
						alt="유치환우체통전망대">
				</div>

				<div class="w3-col m3">
					<img src="images/img7.jpg" style="width: 100%"
						onclick="onClick(this)" class="w3-border w3-padding" alt="168도시락국">
				</div>

				<div class="w3-col m3">
					<img src="images/img8.jpg" style="width: 100%"
						onclick="onClick(this)" class="w3-border w3-padding" alt="168계단">
				</div>

				<div class="w3-col m3">
					<img src="images/img9.jpg" style="width: 100%"
						onclick="onClick(this)" class="w3-border w3-padding" alt="김민부전망대">
				</div>
			</div>
		</div>
	</article>
</section>
<%@ include file="/include/footer.jsp"%>
</body>
</html>
