<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" import="util.ConnUtil"%>
<%
	String id = null;	// ���ǿ� �ִ� �� Ȱ��
	String pass = null;	// �Ķ���ͷ� �ò���
	int r = 0;
	try {
		Connection conn = ConnUtil.open();
				
		String sql = "delete from member where id=? and pass=?";
		PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(1, pass);
			
				// �����͸� ��������� select [executeQuery ]
		r = ps.executeUpdate();	// ���� DB�ݿ��Ǵ� , insert, delete, update  [executeUpdate]	
		conn.close();
	} catch (Exception e) {
		System.out.println("E==" + e);
	}
	//=============================================================
	if(r > 0) {
		// �α׾ƿ��� ��Ű�� �������� ����ڸ� ������.
		
	}else {
		
	}
%>







