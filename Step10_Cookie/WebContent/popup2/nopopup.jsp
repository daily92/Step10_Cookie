<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>popup2/nopopup.jsp</title>
</head>
<body>
	<%
		// chk 라는 parameter 명으로 넘어오는 값이 있는 지 확인한다
		String chk= request.getParameter("chk");
	
		// 만일 체크 박스를 체크하고 팝업창을 닫았다면 
			//체크하면, chk 라는 parameter 명으로 no 라는 value가 넘어오고,
			//체크 안 하면, value 넘어오는 것 없으므로 null 값
		if(chk!=null){
			Cookie cookie= new Cookie("popup", chk);
			cookie.setMaxAge(60);
			response.addCookie(cookie);
		}
	%>
	<script>
		// 쿠키를 응답한 다음 팝업창이 자동으로 닫아지도록
		self.close();
	</script>
</body>
</html>