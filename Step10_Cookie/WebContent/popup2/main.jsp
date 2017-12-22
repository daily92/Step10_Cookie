<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pop2/main.jsp</title>
</head>
<body>
	<%
		// 팝업창을 띄울 지에 대한 여부
		boolean canPopup= true;
		// 쿠키 목록을 읽어와서
		Cookie[] cookies= request.getCookies();
		// 반복문 돌면서 쿠키를 확인해서
		for(Cookie tmp:cookies){
			// popup 이라는 키 값으로 저장된 쿠키가 존재하면
			if(tmp.getName().equals("popup")){
				// 팝업을 띄우지 않도록 설정
				canPopup= false;
			}
		}
	%>
	<%if(canPopup){ %>	
		<script>
			window.open("popup_page.jsp", "팝업", 
			"width=500, height=500, top=100, left=100");
		</script>
	<%} %>
	<h3>메인 페이지 입니다.</h3>
	<p>White 홈쇼핑</p>
	<p>겨울을 나기 위한 음식들을 미리 준비하세요~!</p>
</body>
</html>