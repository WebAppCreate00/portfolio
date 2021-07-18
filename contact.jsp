x	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<%@ include file="/include/staticFiles.jsp" %>
	<%@ include file="/include/header.jsp" %>
	<section>
	    <article>
	  	<h2> Contact </h2>
	 	 <p> 당신은 누구인가요? </p>
	 	 <form action="result.jsp" method="post"> 
	  		이름  <input class="w3-input w3-border" type="text" name="name"> <br>
	  		학과  <input class="w3-input w3-border" type="text" name="major"> <br>
	  		학번  <input class="w3-input w3-border" type="tel" name="id"> <br>
	  		성별  <input type="radio" name="gender" value="f"> 여자 
	    		 <input type="radio" name="gender" value="m"> 남자 <br><br>
	    	 취미 : <input type="checkbox" name="hobby" value="h1"> 독서
	    		  <input type="checkbox" name="hobby" value="h2"> 여행
	    		  <input type="checkbox" name="hobby" value="h3"> 영화
	    		  <input type="checkbox" name="hobby" value="h4"> 기타 <br><br>
	    	요청사항  <textarea name="memo" cols="40" row="5"> </textarea> <br>
	    		<input type="submit" class="w3-btn w3-pink" value="확인">
	    		<input type="reset" class="w3-btn w3-pink" value="취소">
	  </form>
	 </article>
	</section>
	   <%@ include  file="/include/footer.jsp"  %>
	</body>
	</html>
