<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test.jsp</title>
</head>
<body>
	<%-- 사용 예 : 24 시간 동안 팝업창 보지 않기 
		(그 쿠키가 존재하면 같은 페이지 요청했을 때 팝업 안 띄움 --%>
	<% 
		request.setCharacterEncoding("utf-8");
		// 폼 전송되는 문자열 읽어오기
		String msg= request.getParameter("msg");
		
		if(msg!=null){
				//요청을 한 클라이언트 웹 브라우저에 쿠키를 저장
			// 쿠키 객체를 생성해서 (Cookie + ctrl + space) new Cookie("key",value)
			Cookie cookie= new Cookie("savedMsg", msg);
			// 쿠키 유지 시간을 초 단위로 지정한다.
			cookie.setMaxAge(60);
			// 응답할 때 쿠키가 같이 응답되도록 요청 객체에 담는다
			response.addCookie(cookie);
			
		}	
	%>
	<h3>촉촉 초코칩 쿠키 테스트</h3>
	<form action="test.jsp" method="post">
		<label for="msg">쿠키로 저장할 문자열 입력</label>
		<input type="text" name="msg" id="msg"/>
		<button type="submit">저장</button>
	</form>
	<a href="result.jsp">초코칩 쿠키가 저장 잘 됐나? 확인하기</a>
</body>
</html>