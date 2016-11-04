package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnUtil {
	public static Connection open() throws Exception {
		String url = "jdbc:oracle:thin:@192.168.104.97:1521:xe";
		String username = "psyduck"; // 사용자계정
		String password = "pokemon"; // 계정비밀번호
		Class.forName("oracle.jdbc.driver.OracleDriver"); // 드라이버 검색
		Connection conn = DriverManager.getConnection(url, username, password);
		return conn;
	}
}