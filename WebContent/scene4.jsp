<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device=width,initial-scale=1.0"/>

<% request.setCharacterEncoding("utf-8");%>

<%@ page import="java.util.Arrays" %>
    
<%

String[] product3 = request.getParameterValues("product3");

session.setAttribute("product3", product3);



int num;
if(product3==null) {num=0;}
else {num=product3.length;}
session.setAttribute("num", num);

%>

	<form method="post" action="sceneTest.jsp">
		<dl>
			<dd><feldset>
				<legend><h3>자, 지금까지 뭘 골랐는지 한번 체크해봐</h3><br></legend>		
				<input id="QA1" name="QA1" type="radio" value="dubu">
				<label for="QA1">두부</label>
				<input id="QA1" name="QA1" type="radio" value="soondubu">
				<label for="QA1">순두부</label>
				<br>
				
				<input id="QA2" name="QA2" type="radio" value="choco">
				<label for="QA2">초코 우유</label>
				<input id="QA2" name="QA2" type="radio" value="banana">
				<label for="QA2">바나나 우유</label>
				<br>
				<input id="QA3" name="QA3" type="checkbox" value="0">
				<label for="QA3">돼지고기</label>
				<input id="QA3" name="QA3" type="checkbox" value="1">
				<label for="QA3">닭고기</label>
				<input id="QA3" name="QA3" type="checkbox" value="2">
				<label for="QA3">소고기</label>
				<input id="QA3" name="QA3" type="checkbox" value="3">
				<label for="QA3">오리고기</label>
				
				
			</feldset></dd>
		</dl>
		<dl>
			<dd>
				<input type="submit" value="다음">
			</dd>
		</dl>
	</form>
	<% if(session.getAttribute("gender").equals("boy")) { %>
<img src="./boy.png">
<% } else {%>
<img src="./girl.png">
<%}%>
