<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" import="util.*" import="java.text.*" %>

<jsp:useBean id="mdto" class="home.member.MemberDTO"/>
<jsp:setProperty property="*" name="mdto"/>

<jsp:useBean id="mdao" class="home.member.MemberDAO"/>
<% mdao.insertMember(mdto); %>

<html>
<head>
</head>
<body>
		<div align="center">
			<h1>ȸ�������� ���������� �Ϸ�Ǿ����ϴ�.</h1>
			<a href="/">Ȩ������</a>
		</div>
		
		
</body>
</html>