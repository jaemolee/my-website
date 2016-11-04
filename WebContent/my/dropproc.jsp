<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" import="util.ConnUtil"%>
<%
	String id = null;	// 세션에 있는 걸 활용
	String pass = null;	// 파라미터로 올꺼고
	int r = 0;
	try {
		Connection conn = ConnUtil.open();
				
		String sql = "delete from member where id=? and pass=?";
		PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(1, pass);
			
				// 데이터를 가지고오는 select [executeQuery ]
		r = ps.executeUpdate();	// 실제 DB반영되는 , insert, delete, update  [executeUpdate]	
		conn.close();
	} catch (Exception e) {
		System.out.println("E==" + e);
	}
	//=============================================================
	if(r > 0) {
		// 로그아웃을 시키는 페이지로 사용자를 보내라.
		
	}else {
		
	}
%>







