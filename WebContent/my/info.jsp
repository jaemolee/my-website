<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" import="util.ConnUtil"%>
<%
	// ��񿡼� ����� ���� �����ͼ�.. ����ϰ� �صΰ�..
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
<h2>������</h2>
<ul style="line-height: 2;">
	<li>���̵� : <%=id%></li>
	<li>��й�ȣ : <%=pass.substring(0,2)%>****</li>
	<li>�̸� : <%=name%></li>
	<li>���� : <%=gender%></li>
	<li>���� : <%=birth%>���</li>
	<li>����ó : <%=tel %></li>
	<li>�̸��� : <%=email %></li>
	<li>�������� : <%=joindate %> </li>
	<li> ȸ����� : <%= power %> </li>
</ul>
<hr/>
<a href="/?menu=drop">ȸ��Ż��</a>






