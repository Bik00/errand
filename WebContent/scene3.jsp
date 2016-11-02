<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device=width,initial-scale=1.0"/>

<% request.setCharacterEncoding("utf-8");%>


<%
String product2= request.getParameter("product2");

if(product2==null) {
	product2 = "non";
}

session.setAttribute("product2", product2);
	
%>


	<form method="post" action="scene4.jsp">
		<dl>
			<dd><feldset>
				<legend><h3>다음 중에서는 마음에 드는 것을 모두 사 오렴.</h3><br></legend>		
				<input id="product3" name="product3" type="checkbox" value="0">
				<label for="product3">돼지고기</label>
				<input id="product3" name="product3" type="checkbox" value="1">
				<label for="product3">닭고기</label>
				<input id="product3" name="product3" type="checkbox" value="2">
				<label for="product3">소고기</label>
				<input id="product3" name="product3" type="checkbox" value="3">
				<label for="product3">오리고기</label>
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
