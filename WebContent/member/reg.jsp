<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
String t = "/template.jsp?t=/log/login.jsp&c=/member/regform2.jsp&b=/bottom.jsp";
request.getRequestDispatcher(t).forward(request, response);
 %>