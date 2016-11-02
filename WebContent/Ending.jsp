<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<% request.setCharacterEncoding("utf-8");%>
<%
if (session.getAttribute("answer").equals("정답")) {%>
<%=session.getAttribute("name")%>!<br>
<h3>정말 잘했어<br>
그럼 부탁할께!</h3>
<% %>
<%} else {%>
<%=session.getAttribute("name")%>!<br>
<h3>아직은 좀 더 연습이 필요한 것 같구나.<br>
엄마랑 같이 가자!</h3>
<%} %>


<% if(session.getAttribute("gender").equals("boy")) { %>
	<img src="./boy.png">
<% } else {%>
	<img src="./girl.png">
<%}%>

