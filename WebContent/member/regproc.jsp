<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.sql.*"%>



<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	int birth = Integer.parseInt(request.getParameter("birth"));
	
	int r = 0;
	
	try {
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String username = "psyduck";
		String password = "pokemon";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url, username, password);
		System.out.println("<b>���� ����</b>");
		String sql = "insert into member values(?, ?, ?, ?, ?)"; // ����ǥ�� ������
		PreparedStatement ps = conn.prepareStatement(sql); // prepare ��Ų��
		ps.setString(1, id);
		ps.setString(2, pass);
		ps.setString(3, name);
		ps.setString(4, gender);
		ps.setInt(5, birth);
		r = ps.executeUpdate(); // �������� => int ���� ó���� ����
		conn.close();

	} catch (Exception e) {
		System.out.println("<b>���� �߻�</b> (" + e + ")");
	}
	
	if(r>0 ) {
		%>
		<script>
			alert("���������� ���� ��û�� �Ϸ�Ǿ����ϴ�!\n���� ����Ͻ� ���̵�� ��й�ȣ�� �α������ּ���.")
		</script>
		<%
		response.sendRedirect("/");
		
	}else {
		%>
		<script>
			alert("����ó���� �����߻�!\n��õڿ� ��õ����ּ���.");		
			location.href="/?menu=register";
		</script>
		<%
	}
%>