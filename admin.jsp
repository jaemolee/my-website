<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String target = "/template.jsp?t=/log/login.jsp&c=/main.jsp&b=/bottom.jsp";
	if (request.getParameter("menu") != null) {
		switch (request.getParameter("menu")) {
		case "register":
			target = "/template.jsp?t=/log/login.jsp&c=/member/regform.jsp&b=/bottom.jsp";
			break;
		case "policy":
			target = "/template.jsp?t=/log/login.jsp&c=/policy/service.jsp&b=/bottom.jsp";
			break;
		}
	}
	request.getRequestDispatcher(target).forward(request, response);
%>