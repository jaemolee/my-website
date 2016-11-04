<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String ln = (String)session.getAttribute("logName");
	String li = (String)session.getAttribute("logId");

%>
<div align="right"> 
	<a href="/?menu=myinfo"><b><%=li %>(<%=ln %>)</b></a> ,  <b><i>Log ON</i></b>      
	&nbsp;&nbsp;&nbsp;&nbsp;
	| <a href="/log/logoutproc.jsp">·Î±×¾Æ¿ô</a> |
</div>



