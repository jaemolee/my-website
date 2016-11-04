<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<h2>effect!</h2>
<%

	String msg = "saan#1111";
	String[] ar = msg.split("#");

	String id = ar[0];
	String pass = ar[1];
	String t = "/log/loginproc.jsp?id="+id+"&pass="+pass;
	request.getRequestDispatcher(t).forward(request, response);
%>