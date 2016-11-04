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
	// alert("�ִ� �������Դϴ�.");
	location.href = "/";
</script>
<%
	} else {
%>
<script>
	alert("���̵� �Ǵ� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
	if (confirm("ȸ�������������� ���ðڽ��ϱ�?")) {
		location.href = "/?menu=register";
	}else{
		location.href="/";
	}
</script>
<%
	}
%>