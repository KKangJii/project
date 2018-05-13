package kr.co.bit.service;

import java.util.List;

import kr.co.bit.dao.VocaDAO;
import kr.co.bit.vo.VocaVO;

/** Base���ܾ�DAO�� ���� service */

public class VocaService {

	private VocaDAO dao;
	
	public VocaService() {
		dao = new VocaDAO();
	}

	//��ü �ܾ �������� ���� ����
	public List<VocaVO> bringAllVoca() {
		List<VocaVO> list = dao.bringAllVoca();
		return list;
	}
	
	//�׸��� �ܾ �������� ���� ����
	public List<VocaVO> bringThemaVoca(String Thema) {
		List<VocaVO> list = dao.bringThemaVoca(Thema);
		return list;
	}
	
	public List<String> bringThemeList() {
		List<String> T_list = dao.bringThemaList();
		return T_list;
	}
	
}
