package home.member;

//DAO 계열 클래스(Data Access Object)
//택배 아저씨 : jsp페이지에서 필요한 데이터를 DB에서 가져다주는 역할
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import util.ConnUtil;

public class MemberDAO {

	// insert 작업을 수행할 메소드
	public void insertMember(MemberDTO mdto) throws Exception {
		// 1.드라이버 //2.로그인 //3.명령준비 //4.전송 //5.결과확인 //6.종료
		Connection con = ConnUtil.open();
		String sql = "insert into member values(member_seq.nextval,?,?,?,?,?,?,?,sysdate,'일반')";
		PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, mdto.getName());
			ps.setString(2, mdto.getId());
			ps.setString(3, mdto.getPw());
			ps.setString(4, mdto.getGender());
			ps.setString(5, mdto.getBirth());
			ps.setString(6, mdto.getTel());
			ps.setString(7, mdto.getEmail());
		int result = ps.executeUpdate();
		con.close();
	}

	// select 작업을 수행할 메소드
	public ArrayList<MemberDTO> selectMember() throws Exception {
		// 서버에서 처리하는 코드
		Connection con = ConnUtil.open();
		String sql = "select * from member order by no asc";
		PreparedStatement ps = con.prepareStatement(sql);
		// int result = ps.executeUpdate();//사용 불가
		ResultSet rs = ps.executeQuery();
		// ResultSet은 Connection이 종료할 때 소멸하므로 다른 저장소에 데이터 이동
		// ArrayList를 만들고 ResultSet의 데이터를 옮겨 담은 뒤 반환
		ArrayList<MemberDTO> list = setList(rs);
		con.close();
		return list;
	}

	public ArrayList<MemberDTO> setList(ResultSet rs) throws Exception {
		ArrayList<MemberDTO> list = new ArrayList<>();
		while (rs.next()) {
			MemberDTO mdto = new MemberDTO();
			mdto.setNo(rs.getInt("no"));
			mdto.setName(rs.getString("name"));
			mdto.setId(rs.getString("id"));
			mdto.setPw(rs.getString("pw"));
			mdto.setGender(rs.getString("gender"));
			mdto.setBirth(rs.getString("birth"));
			mdto.setEmail(rs.getString("email"));
			mdto.setTel(rs.getString("tel"));
			mdto.setJoindate(rs.getString("joindate"));
			mdto.setPower(rs.getString("power"));
			list.add(mdto);
		}
		return list;
	}
	
	public MemberDTO setMember(ResultSet rs) throws Exception {
		MemberDTO mdto = new MemberDTO();
		while (rs.next()) {
			mdto.setNo(rs.getInt("no"));
			mdto.setName(rs.getString("name"));
			mdto.setId(rs.getString("id"));
			mdto.setPw(rs.getString("pw"));
			mdto.setGender(rs.getString("gender"));
			mdto.setBirth(rs.getString("birth"));
			mdto.setEmail(rs.getString("email"));
			mdto.setTel(rs.getString("tel"));
			mdto.setJoindate(rs.getString("joindate"));
			mdto.setPower(rs.getString("power"));
		}
		return mdto;
	}

	public ArrayList<MemberDTO> searchMember(String keyword) throws Exception {
		Connection con = ConnUtil.open();
		String sql = "select * from member where name like ? or id like ? order by no asc";
		PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "%" + keyword + "%");
			ps.setString(2, "%" + keyword + "%");
		ResultSet rs = ps.executeQuery();
		ArrayList<MemberDTO> list = setList(rs);
		con.close();
		return list;
	}
	
	public MemberDTO memberInfo(String id) throws Exception {
		Connection con = ConnUtil.open();
		String sql = "select * from member where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
		ResultSet rs = ps.executeQuery();
		MemberDTO mdto = setMember(rs);
		con.close();
		return mdto;
	}
	
	public ArrayList<MemberDTO> login(String id, String pw) throws Exception {
		Connection con = ConnUtil.open();
		String sql = "select * from member where id = ? and pw = ?";
		PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pw);
		ResultSet rs = ps.executeQuery();
		ArrayList<MemberDTO> list = setList(rs);
		con.close();
		return list;
	}
}
