<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" import="util.ConnUtil"%>
<%
	// 디비에서 사용자 정보 가져와서.. 출력하게 해두고..
	String id = (String)session.getAttribute("logId");
	String pass = (String)session.getAttribute("logPw");
	String name = (String)session.getAttribute("logName");
	String gender = (String)session.getAttribute("logGender");
	String birth = (String)session.getAttribute("logBirth");
	String tel = (String)session.getAttribute("logTel");
	String email = (String)session.getAttribute("logEmail");
	String joindate = (String)session.getAttribute("logJoindate");
	String power = (String)session.getAttribute("logPower");

%>
<h2>내정보</h2>
<ul style="line-height: 2;">
	<li>아이디 : <%=id%></li>
	<li>비밀번호 : <%=pass.substring(0,2)%>****</li>
	<li>이름 : <%=name%></li>
	<li>성별 : <%=gender%></li>
	<li>생년 : <%=birth%>년생</li>
	<li>연락처 : <%=tel %></li>
	<li>이메일 : <%=email %></li>
	<li>가입일자 : <%=joindate %> </li>
	<li> 회원등급 : <%= power %> </li>
</ul>
<hr/>
<a href="/?menu=drop">회원탈퇴</a>






