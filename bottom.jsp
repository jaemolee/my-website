<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div align="center">
<a href="/">홈</a> | 
<%if(session.getAttribute("logId") == null) { %>
	<a href="/?menu=register">회원가입</a> |
<%} %> 
게시판 | 
<a href="/?menu=policy">이용약관</a> | 고객센터
</div>
