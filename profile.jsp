<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/include/staticFiles.jsp" %>
<body>
<%@ include file="/include/header.jsp" %>
<section>
<article id = "profile" class = "wc-container w3-center">
<h1>
   박나영의 프로필
</h1>
<h4>사이트 제작자입니다.</h4>
<img src="images/profile.jpg" class="w3-round" alt="profile" style="width:20%; height:250px;">
<br>
<br>
    <table class="w3-table-all">
        <tr class="w3-pink"><th>구분</th><th>내용</th></tr>
        <tr><td>이름</td><td>Park Na Yeong</td></tr>
        <tr><td>나이</td><td>1999.08.27 (21세)</td></tr>
        <tr><td>학력</td><td>DongA University MIS</td></tr>
        <tr><td>이메일</td><td>mezero_x@naver.com</td></tr>
        <tr><td>SNS</td><td>blog.naver.com/mezero_x</td></tr>
        <tr><td>취미</td><td>영화보기, 음악감상</td></tr>
    </table>
</article>
</section>
<br>
<%@ include file="/include/footer.jsp" %>
</body>
