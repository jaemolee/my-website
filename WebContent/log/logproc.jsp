<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.sql.*" import="util.*" %>
<%
	boolean exist = false;
	String id = request.getParameter("id");
	String pass = request.getParameter("pw");
	String logName = null;
	try{
		Connection conn = ConnUtil.open();
		String sql = "select * from member where id = ? and pw = ?";
		PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pass);
		ResultSet rs = ps.executeQuery();
		if(rs.next()){
			exist = true;
			logName = rs.getString("name");
		}
		conn.close();
	} catch(Exception e){
		out.println("e ="+e);
	}

	if (exist) {
		session.setAttribute("logId", id);
		session.setAttribute("logName", logName);
%>
<script>
	// alert("있는 데이터입니다.");
	location.href = "/";
</script>
<%
	} else {
%>
<script>
	alert("아이디 또는 비밀번호가 일치하지 않습니다.");
	if (confirm("회원가입페이지로 가시겠습니까?")) {
		location.href = "/?menu=register";
	}else{
		location.href="/";
	}
</script>
<%
	}
%>