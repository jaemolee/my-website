<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String top;
	if(session.getAttribute("logId")== null){
		top ="/log/login.jsp";	
	}else {
		top = "/log/logon.jsp";
	}

	String target="/template.jsp?t="+top+"&b=/bottom.jsp";
	if(request.getParameter("menu") != null) {
		switch(request.getParameter("menu")) {
		case "register" :
			target += "&c=/member/regform2.jsp";
			break;
		case "policy" :
			target += "&c=/policy/service.jsp";
			break;
		case "myinfo" :
			target += "&c=/my/info.jsp";
			break;
		case "drop" :
			target += "&c=/my/dropform.jsp";
			break;
		}
	}else {
		target += "&c=/main.jsp";
	}

	request.getRequestDispatcher(target).forward(request,response);
%>