<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<% request.setCharacterEncoding("utf-8");%>
<%
if (session.getAttribute("answer").equals("����")) {%>
<%=session.getAttribute("name")%>!<br>
<h3>���� ���߾�<br>
�׷� ��Ź�Ҳ�!</h3>
<% %>
<%} else {%>
<%=session.getAttribute("name")%>!<br>
<h3>������ �� �� ������ �ʿ��� �� ������.<br>
������ ���� ����!</h3>
<%} %>


<% if(session.getAttribute("gender").equals("boy")) { %>
	<img src="./boy.png">
<% } else {%>
	<img src="./girl.png">
<%}%>

