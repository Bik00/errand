<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device=width,initial-scale=1.0"/>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="java.util.Arrays" %>

<%

String QA1= request.getParameter("QA1");
if(QA1==null) {
	QA1 = "non";
}
session.setAttribute("QA1", QA1);

String QA2= request.getParameter("QA2");
if(QA2==null) {
	QA2 = "non";
}
session.setAttribute("QA2", QA2);

String QA3[]= request.getParameterValues("QA3");
session.setAttribute("QA3", QA3);
String[] product3Answer = (String[])session.getAttribute("product3");

int num = (int)session.getAttribute("num");
int num2;
if(QA3==null) {num2 = 0;}
else {num2 = QA3.length;}
String answer;
int count=0;


if(session.getAttribute("product1").equals(session.getAttribute("QA1"))) {
	if(session.getAttribute("product2").equals(session.getAttribute("QA2"))){
		if((num!=0)&&(QA3==null)) {
			answer = "오답";
			session.setAttribute("answer", answer);
			response.sendRedirect("Ending.jsp");
		}
		else if((num==0)&&(QA3!=null)) {
			answer = "오답";
			session.setAttribute("answer", answer);
			response.sendRedirect("Ending.jsp");
		}
		else if(num!=num2){
			answer = "오답";
			session.setAttribute("answer", answer);
			response.sendRedirect("Ending.jsp");
		}
		else {
			for(int i=0;i<num;i++) {
				if(Arrays.equals(product3Answer, QA3)) {	
					count++;
				}
			}
			if(count==num) {
				answer = "정답";
				session.setAttribute("answer", answer);
				response.sendRedirect("Ending.jsp");
			}
			else {
				answer = "오답";
				session.setAttribute("answer", answer);
				response.sendRedirect("Ending.jsp");
			}
		}
	}
	else {
		answer = "오답";
		session.setAttribute("answer", answer);
		response.sendRedirect("Ending.jsp");
	}
}
else {
	answer = "오답";
	session.setAttribute("answer", answer);
	response.sendRedirect("Ending.jsp");
}
%>