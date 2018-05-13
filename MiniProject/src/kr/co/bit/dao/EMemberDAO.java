package kr.co.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.bit.ui.LoginUI;
import kr.co.bit.util.ConnectionFactory;
import kr.co.bit.util.JDBCClose;
import kr.co.bit.vo.EMemberVO;

public class EMemberDAO {
		
	//회원 가입
	public void insertMember(EMemberVO ememvo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {

			conn = new ConnectionFactory().getConnection();
			
			StringBuilder sql = new StringBuilder();
			sql.append(" insert into EMembertest(ID, password,ename) ");
			sql.append(" values(? , ?,  ?) ");
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setString(1, ememvo.getId());
			pstmt.setString(2, ememvo.getPassword());
			pstmt.setString(3, ememvo.getName());
			
			pstmt.executeUpdate();
						
			System.out.println("회원 가입을 완료하였습니다.");
			
		} catch (SQLException e) {
			System.out.println("ID,비밀번호,이름이 중복됬거나 입력을 안하셧습니다.");
		}finally {
			JDBCClose.close(conn, pstmt);
		}
		
	}
	
	//login
	public EMemberVO loginMember(String id, String password) {
	
		EMemberVO memvo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		
		try {
			conn = new ConnectionFactory().getConnection();
			
			StringBuilder sql = new StringBuilder();
			sql.append("select ID, password ");
			sql.append("from EMembertest ");
			sql.append("where ID = ? AND password = ?");
			pstmt = conn.prepareStatement(sql.toString());
		
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			
			ResultSet rs = pstmt.executeQuery();

			if(rs.next()) {
				memvo = new EMemberVO();
				memvo.setId(rs.getString("ID"));
				memvo.setPassword(rs.getString("password"));
			}
			
		} catch (Exception e) {
			
		}finally {
			JDBCClose.close(conn, pstmt);
		}
		return memvo;
	}
	
	//회원 탈퇴
	public void deleteMember() {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		
		try {
			conn = new ConnectionFactory().getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append(" delete from myvoca ");
			sql.append("where ID = ? ");
				
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setString(1, LoginUI.getId());
			
			pstmt.executeUpdate();
			
			try {
				if(pstmt!=null)
					pstmt.close();
			} catch (Exception e) {
				
			}
			
			sql = new StringBuilder();
			
			sql.append(" delete from EMembertest ");
			sql.append("where ID = ? ");
			
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setString(1, LoginUI.getId());
			
			pstmt.executeUpdate();
			
			System.out.println("탈퇴 완료되었습니다.");
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("탈퇴처리를 하지 못했습니다. 죄송합니다.");
		}finally {
			JDBCClose.close(conn, pstmt);
		}
	}
}
