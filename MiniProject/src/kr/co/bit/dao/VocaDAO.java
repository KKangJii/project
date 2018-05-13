package kr.co.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.bit.util.ConnectionFactory;
import kr.co.bit.util.JDBCClose;
import kr.co.bit.vo.VocaVO;

/** Base영단어DAO */

public class VocaDAO {

	private List<VocaVO> list;

	public VocaDAO() {
		list = new ArrayList<>();
	}

	// DB에 있는 단어를 테마별로 출력
	public List<VocaVO> bringThemaVoca(String Thema) {
		VocaVO vocavo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		List<VocaVO> list = new ArrayList<>();
		// Timer timer = new Timer();

		try {
			conn = new ConnectionFactory().getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append(" select ENGLISH, KOREAN, thema from vocatest ");
			sql.append(" where THEMA = ? ");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, Thema);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				vocavo = new VocaVO();

				vocavo.setEnglish(rs.getString("English"));
				vocavo.setKorean(rs.getString("Korean"));
				vocavo.setThema(rs.getString("Thema"));
				
				list.add(vocavo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}

		return list;
	}

	// DB에 있는 단어 전체 출력
	public List<VocaVO> bringAllVoca() {

		list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = new ConnectionFactory().getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append(" select ENGLISH, KOREAN, thema  FROM (SELECT * FROM VOCATEST) ");

			pstmt = conn.prepareStatement(sql.toString());
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				String eng = rs.getString("English");
				String kor = rs.getString("Korean");
				String tm = rs.getString("Thema");

				VocaVO voca = new VocaVO(eng, kor, tm);
				list.add(voca);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}

		return list;
	}

	// Thema 종류 반환
	public List<String> bringThemaList() {

		List<String> T_list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = new ConnectionFactory().getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append(" select DISTINCT thema from vocatest ");

			pstmt = conn.prepareStatement(sql.toString());
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				String tm = rs.getString("Thema");

				T_list.add(tm);
			}
		} catch (Exception e) {
			System.out.println("Thema 리스트가 없습니다.");
		} finally {
			JDBCClose.close(conn, pstmt);
		}
		return T_list;
	}
}
