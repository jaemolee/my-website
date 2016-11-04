<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 상단용 (로그인데이터 입력폼) -->
<form action="log/logproc2.jsp" method="post">
	ID <input type="text" name="id"/>  <input type="checkbox" name="saveID" />
	PASS <input type="password" name="pw"/>  <input type="submit" value="로그인"/>
</form>
