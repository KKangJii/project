package kr.co.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.bit.ui.LoginUI;
import kr.co.bit.util.ConnectionFactory;
import kr.co.bit.util.JDBCClose;
import kr.co.bit.vo.VocaVO;

/** 회원에 따른 나만의 단어장 DAO */
public class MyVocaDAO {
	private List<VocaVO> list;
	//나만의 단어장에 단어를 추가
	public void insertVoca(VocaVO myvoca) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = new ConnectionFactory().getConnection();

			StringBuilder sql = new StringBuilder();

			sql.append(" select count(*) as total from ( select * from myvoca where id= \'" + myvoca.getID() + "\'  )");
			sql.append(" where english =  \'" + myvoca.getEnglish() + "\'");

			pstmt = conn.prepareStatement(sql.toString());

			ResultSet rs = pstmt.executeQuery();

			rs.next();
			int cnt = rs.getInt(1);
			
			
			try {
				if (pstmt != null)
					pstmt.close();
			} catch (Exception e) {

			}

			sql = new StringBuilder();
			
			if (cnt == 0) {
				
				sql.append(" insert into myvoca(no, ID, English, Korean, thema) ");
				sql.append(" values(seq_t_myvoca_no.nextval, ? , ?, ?, ?) ");
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setString(1, myvoca.getID());
				pstmt.setString(2, myvoca.getEnglish());
				pstmt.setString(3, myvoca.getKorean());
				pstmt.setString(4, myvoca.getThema());
			} else {
				sql.append(" update myvoca set count = count+1 where english = ? and id = ? ");
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setString(1, myvoca.getEnglish());
				pstmt.setString(2, myvoca.getID());
			}
			pstmt.executeUpdate();

		} catch (Exception e) {
			
		} finally {
			JDBCClose.close(conn, pstmt);
		}
	}

	//나만의 단어장에서 thema를 이용해 단어 리스트 출력
	public List<VocaVO> bringThemaVoca(String thema) {

		List<VocaVO> list = new ArrayList<>();

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = new ConnectionFactory().getConnection();

			StringBuilder sql = new StringBuilder();
			
			sql.append(" select ID,ENGLISH,KOREAN, thema, COUNT from myvoca ");
			sql.append(" where thema = ? AND ID = ? ");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, thema);
			pstmt.setString(2, LoginUI.getId());

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {

				VocaVO myvo = new VocaVO();
				myvo.setID(rs.getString("ID"));
				myvo.setEnglish(rs.getString("English"));
				myvo.setKorean(rs.getString("Korean"));
				myvo.setThema(rs.getString("thema"));
				myvo.setCount(rs.getInt("Count"));
				

				list.add(myvo);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	//나만의 단어장 전체 삭제
	public void deleteVoca() {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = new ConnectionFactory().getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append(" delete from myvoca ");
			sql.append(" where ID = ? ");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, LoginUI.getId());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}
	}

	//나만의 단어장에서 1개의 단어 삭제
	public void deleteOneVoca(String English) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = new ConnectionFactory().getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append(" delete * from myvoca ");
			sql.append(" where ID = ? ");
			sql.append(" AND ");
			sql.append(" English = ? ");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, LoginUI.getId());
			pstmt.setString(2, English);

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}
	}
	public List<String> bringThemaList() {

		List<String> T_list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = new ConnectionFactory().getConnection();

			StringBuilder sql = new StringBuilder();
			
			sql.append(" select DISTINCT thema from myvoca  where ID = ?  ");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, LoginUI.getId());
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				String tm = rs.getString("Thema");

				T_list.add(tm);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}
		return T_list;
	}
	public List<VocaVO> bringAllVoca() {

		list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = new ConnectionFactory().getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append(" select ENGLISH, KOREAN, thema , COUNT FROM (SELECT * FROM MYVOCA) WHERE ID = ? ");
			
			
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, LoginUI.getId());
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				String eng = rs.getString("English");
				String kor = rs.getString("Korean");
				String tm = rs.getString("Thema");
				int cnt = rs.getInt("Count");

				VocaVO voca = new VocaVO(eng, kor, tm,cnt);
				list.add(voca);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}
		return list;
	}
	
	
}