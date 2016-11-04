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
		System.out.println("<b>연결 성공</b>");
		String sql = "insert into member values(?, ?, ?, ?, ?)"; // 물음표로 세팅후
		PreparedStatement ps = conn.prepareStatement(sql); // prepare 시킨후
		ps.setString(1, id);
		ps.setString(2, pass);
		ps.setString(3, name);
		ps.setString(4, gender);
		ps.setInt(5, birth);
		r = ps.executeUpdate(); // 실제수행 => int 값은 처리된 개수
		conn.close();

	} catch (Exception e) {
		System.out.println("<b>예외 발생</b> (" + e + ")");
	}
	
	if(r>0 ) {
		%>
		<script>
			alert("성공적으로 가입 신청이 완료되었습니다!\n이제 등록하신 아이디와 비밀번호로 로그인해주세요.")
		</script>
		<%
		response.sendRedirect("/");
		
	}else {
		%>
		<script>
			alert("가입처리중 오류발생!\n잠시뒤에 재시도해주세요.");		
			location.href="/?menu=register";
		</script>
		<%
	}
%>