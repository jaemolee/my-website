package home.member;

//DAO �迭 Ŭ����(Data Access Object)
//�ù� ������ : jsp���������� �ʿ��� �����͸� DB���� �������ִ� ����
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import util.ConnUtil;

public class MemberDAO {

	// insert �۾��� ������ �޼ҵ�
	public void insertMember(MemberDTO mdto) throws Exception {
		// 1.����̹� //2.�α��� //3.����غ� //4.���� //5.���Ȯ�� //6.����
		Connection con = ConnUtil.open();
		String sql = "insert into member values(member_seq.nextval,?,?,?,?,?,?,?,sysdate,'�Ϲ�')";
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

	// select �۾��� ������ �޼ҵ�
	public ArrayList<MemberDTO> selectMember() throws Exception {
		// �������� ó���ϴ� �ڵ�
		Connection con = ConnUtil.open();
		String sql = "select * from member order by no asc";
		PreparedStatement ps = con.prepareStatement(sql);
		// int result = ps.executeUpdate();//��� �Ұ�
		ResultSet rs = ps.executeQuery();
		// ResultSet�� Connection�� ������ �� �Ҹ��ϹǷ� �ٸ� ����ҿ� ������ �̵�
		// ArrayList�� ����� ResultSet�� �����͸� �Ű� ���� �� ��ȯ
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
