package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnUtil {
	public static Connection open() throws Exception {
		String url = "jdbc:oracle:thin:@192.168.104.97:1521:xe";
		String username = "psyduck"; // ����ڰ���
		String password = "pokemon"; // ������й�ȣ
		Class.forName("oracle.jdbc.driver.OracleDriver"); // ����̹� �˻�
		Connection conn = DriverManager.getConnection(url, username, password);
		return conn;
	}
}