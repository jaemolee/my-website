<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="home.member.*, java.util.*, java.sql.*"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String saveId = request.getParameter("saveID");
%>
<h1>
	id :<%=id%></h1>
<h1>
	pw :<%=pw%></h1>
<h1>
	saveId :<%=saveId%></h1>
<jsp:useBean id="mdao" class="home.member.MemberDAO" />
<%
	ArrayList<MemberDTO> list = mdao.login(id, pw);
	if (!list.isEmpty()) {
		session.setAttribute("logId", id);
		session.setAttribute("logPw", pw);
		for (MemberDTO mdto : list) {
			session.setAttribute("logName", mdto.getName());
			session.setAttribute("logGender", mdto.getGender());
			session.setAttribute("logBirth", mdto.getBirth());
			session.setAttribute("logTel", mdto.getTel());
			session.setAttribute("logEmail", mdto.getEmail());
			session.setAttribute("logJoindate", mdto.getJoindate());
			session.setAttribute("logPower", mdto.getPower());
		}
%>
				<script>
					if (confirm("�Ƶ�!!")) {
						location.href = "<%=request.getContextPath()%>/index.jsp";
					}else{
						location.href="<%=request.getContextPath()%>/index.jsp";
					}
				</script>
<%
	} else {
%>
				<script>
					alert("�α��� ���� �� �߸��� Username or Password")
					if (confirm("ȸ�������������� ���ðڽ��ϱ�?��")) {
					location.href = "<%=request.getContextPath()%>
					/member/regform2.jsp";
					} else {
						location.href = "/";
					}
				</script>
<%
	}
%>
