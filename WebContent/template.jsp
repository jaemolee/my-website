<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String top=request.getParameter("t");
	String center=request.getParameter("c");
	String bottom=request.getParameter("b");
%>
<html>
<head>
<title>WEB!</title>
<link rel="shortcut icon" type="image/x-icon" href="fav.png" />
<!-- 16X16 -->
</head>
<body>
	<table style="height: 100%; width: 100%">
		<tr height="7%" bgcolor="#CEFBC9">
			<td>
				<%
					pageContext.include(top);
				%>
			</td>
		</tr>
		<tr bgcolor="">
			<td>
				<%
					pageContext.include(center);
				%>
			</td>
		</tr>
		<tr height="7%" bgcolor="#CEFBC9">
			<td>
				<%
					pageContext.include(bottom);
				%>
			</td>
		</tr>
	</table>
</body>
</html>