<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result.jsp</title>
</head>
<body>
	<%
		// request 객체에 담겨서 전달된 쿠키 목록을 읽어온다
		Cookie[] cookies= request.getCookies();
	
		String savedMsg="";
		if(cookies!=null && cookies.length>0){
			// 반복문 돌면서 쿠키 객체를 하나씩 불러오사ㅓ
			for(Cookie tmp:cookies){
				// 만일, 쿠키의 키 값이 "savedMsg" 와 같으면
				if(tmp.getName().equals("savedMsg")){
					savedMsg= tmp.getValue();
				}
			}
		}
	%>
	<p>쿠키로 저장되었던 문자열 : <strong><%=savedMsg %></strong></p>
</body>
</html>