<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div align="center">
<a href="/">Ȩ</a> | 
<%if(session.getAttribute("logId") == null) { %>
	<a href="/?menu=register">ȸ������</a> |
<%} %> 
�Խ��� | 
<a href="/?menu=policy">�̿���</a> | ������
</div>
