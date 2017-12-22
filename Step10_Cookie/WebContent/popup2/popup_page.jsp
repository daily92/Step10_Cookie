<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/popup2/popup_page.jsp</title>
<style>
	body{ background-color: lightblue;}
</style>
</head>
<body>
	<h3>불금 파격 할인</h3>
	<p>촉촉 초코칩 쿠키 3,000원</p>
	<p>바나나킥 2,800원</p>
	<form action="nopopup.jsp" method="post" name="myForm">
		<label>
			<%-- 이 form 을 전송하면 chk 라는 key 값으로 no value 값이 전달됨 --%>
			<input type="checkbox" name="chk" value="no" />
			1 분동안 팝업 띄우지 않기
		</label>
		<a href="javascript:closePopup()">닫기</a>
	</form>
	<script>
		function closePopup(){
			// 폼 강제 전송
			document.myForm.submit();
		}
	</script>
</body>
</html>